<?php
/*
Plugin Name: Awesomely Popular
Plugin URI: http://aayushshrestha.com
Description: A plugin that records post views and contains functions to easily list posts b popularity
Version: 1.0
Author: AAA
License: GPL2
*/

/*
 * Adds a view to the post being viewd
 *
 * Finds the current views of a post and adds one to it by updating
 * the postmeta. the meta key used is "awepop_views" .
 *
 * @global object $post the post object
 * @return integer $new_views the number of views the post has
 *
 */

function awepop_add_view()
{
    if (is_single()) {
        global $post;
        $current_views = get_post_meta($post->ID, "awepop_views", true);
        if (!isset($current_views) OR empty($current_views) OR !is_numeric($current_views)) {
            $current_views = 0;
        } //if
        $new_views = $current_views + 1;
        update_post_meta($post->ID, "awepop_views", $new_views);
        return $new_views;

    }//if single page
} // function awepop_add_view()

/*
 * adding our function to wp_head
 */
add_action("wp_head", "awepop_add_view");


/*
 * Retrive the number of views for a post
 *
 * Finds the current views for a post, returning 0 if there are none
 *
 * @global object $post The post object
 * @return integer $current_views The number of views the post has
 *
 */

function awepop_get_view_count()
{
    global $post;
    $current_views = get_post_meta($post->ID, "awepop_views", true);
    if (!isset($current_views) OR empty($current_views) OR !is_numeric($current_views)) {
        $current_views = 0;
    }
    return $current_views;
}

/*
 * Shows the number of views for a post
 *
 * Finds the current views of a post and displays it together with some optional text
 *
 * @global object $post tThe post object
 * @uses awepop_get_view_count()
 *
 * @param string $singular The singular term for the text
 * @param string $plural The plural term for the text
 * @param string $before Text to place before the counter
 *
 * @return string $views_text The views display
 *
 */

function awepop_show_views($singular = "view", $plural = "views", $before = "This post has: ")
{
    global $post;
    $current_views = awepop_get_view_count();

    $view_text = $before . $current_views . " ";

    if ($current_views == 1) {
        $view_text .= $singular;
    } else {
        $view_text .= $plural;
    }
    echo $view_text;
}

/*
 * Displays a list of posts ordered by popularity
 *
 * shows a simple list of post titles ordered by their view count
 *
 * @param integer $post_count The number of posts to show
 *
 */

function awepop_popularity_list($post_count = 10)
{
    global $post;
    $i = 1;
    $args = array(
        "posts_per_page" => $post_count,
        "post_type" => "post",
        "post_status" => "publish",
        "meta_key" => "awepop_views",
        "orderby" => "meta_value_num",
        "order" => "DESC"
    );
    $awepop_list = new WP_Query($args);
    /*if ($awepop_list->have_posts()) {
        echo "<ul>";
    }*/
    while ($awepop_list->have_posts()): $awepop_list->the_post();
        //echo '<li><a href="' . get_permalink($post->ID) . '">' . the_title('', '', false) . '('.awepop_get_view_count().')</a></li>';

    ?>
        <style>
            .trending_container {
                position: relative;
                width: 50%;
            }

            .trending_container img {
                opacity: 1;
                display: block;
                width: 100%;
                height: auto;
                transition: .5s ease;
                backface-visibility: hidden;
            }

            .trending_title {
                transition: .5s ease;
                opacity: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                text-align: center;
                width: 90%;
            }

            .trending_container:hover img {
                opacity: 0.3;
            }

            .trending_container:hover .trending_title {
                opacity: 1;
            }

            .text {

                color: white;
                font-size: 18px;
                padding: 10px 10px;
            }
        </style>
        <div class="row padding_x_1rem">
            <div class="col-md-2 trending_num flex alignItemCenter">
                <span class="fontSize_34px"><?php echo $i ?></span>
            </div>
            <div class="col-md-10 col-sm-12 trending_container">
                <img src="<?php echo get_the_post_thumbnail_url();?>" width="100%" alt="<?php the_title('', '', false)?>"/>

                <div class="trending_title">
                    <div class="text">
                        <a href="<?php  echo get_permalink($post->ID)?>" title="<?php the_title('', '', false)?>">
                            <?php echo mb_strimwidth(get_the_title(), 0, 50, '...');?>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    <?php
    $i++;
    endwhile;
    /*if ($awepop_list->have_posts()) {
        echo "</ul>";
    }*/
}

