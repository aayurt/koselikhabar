<?php
$post_type = array(
    'desh_news', 'entertainment', 'samachar', 'sports'
);
$bannerNews = array(
    //'post_type' => $post_type,
    'posts_per_page' => 4,
    'order' =>  'desc',
);
query_posts($bannerNews);

$l = $p = 0;
if (have_posts()) :
?>
    <section class="banner-news">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <?php
                    while (have_posts()) : the_post();
                    ?>
                        <div class="focus-header margin-top-xs ">
                            <a href="<?php the_permalink(); ?>">

                                <div class="focus-header-title flex justify-content-center text-align-center">

                                    <?php the_title(); ?>


                                </div>
                                <div class="flex justify-content-center">
                                    <div class="padding-xs">
                                        <?php
                                        $id = get_the_author_meta('author_logo');
                                        if ($id) {
                                            echo wp_get_attachment_image($id);
                                        }
                                        ?>
                                        <?php $author_id = $post->post_author;
                                        echo the_author_meta('display_name', $author_id);
                                        ?>
                                    </div>
                                    <div class="padding-xs">
                                        <img src="wp-content/themes/koselikhabar-v1/assets/images/timeIcon.png" alt="time" width="25px" />
                                        <?php echo get_the_time(); ?>
                                    </div>
                                </div>
                                <div class="focus-header-image">
                                    <img src="<?php echo the_post_thumbnail_url(); ?>" width="100%" alt="<?php the_title(); ?>">
                                </div>
                                <div class="focus-header-content margin-top-xs text-align-center">
                                    <?php
                                    $content = strip_tags(get_the_content());
                                    if (has_excerpt($post->ID)) {
                                        the_excerpt();
                                    } else {
                                        echo '<p>' . wp_trim_words($content, '50', '[...]') . '</p>';
                                    }
                                    ?>
                                </div>
                            </a>
                        </div>
                    <?php
                        $l++;
                    endwhile;
                    ?>
                </div>

            </div>
        </div>
    </section>

<?php
endif;
?>