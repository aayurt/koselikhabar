<?php
global $wp_query;
$v = 1;
$a = 1;
$discussionnews = array(
    'category_name' => 'discussion-news',
    'posts_per_page' =>  4,
    'order' =>  'desc',
);
$deshNews = array(
    'category_name' =>  'samachar',
    'posts_per_page' =>  4,
    'order' =>  'desc',
);
$samachar = new WP_Query($deshNews);
$kurakani = new WP_Query($discussionnews);

// query_posts($deshNews);
$samachar_count = $samachar->found_posts;
$kurakani_count = $kurakani->found_posts;

?>

<section class="samachar">
    <div class="container">
        <div class="row">
            <?php if ($samachar->have_posts()) : ?>
                <div class="col-md-6">
                    <div class="row theme_color">
                        <div class="col-12">
                            समाचार
                        </div>
                    </div>
                    <?php
                    while ($samachar->have_posts()) : $samachar->the_post();
                        if ($v == '1') {
                    ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="main_news">
                                        <h5 class="news_title">
                                            <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                                <?php the_title() ?>
                                            </a>
                                        </h5>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="featured_image">
                                                    <img src="<?php echo the_post_thumbnail_url(); ?>" class="card-img-top" alt="...">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="news_desc">
                                                    <?php
                                                    $content = strip_tags(get_the_content());
                                                    if (has_excerpt($post->ID)) {
                                                        the_excerpt();
                                                    } else {
                                                        echo '<p>' . wp_trim_words($content, '50', '....') . '</p>';
                                                    }
                                                    ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>

                        <?php
                        if ($v == '2') {
                            echo '<div class="row main_side_news">';
                        }
                        if ($v > 1) { ?>
                            <div class="col-md-4">
                                <div class="featured_image">
                                    <img src="<?php echo the_post_thumbnail_url('medium'); ?>" alt="adfs" />
                                </div>
                                <div class="news_detail">
                                    <h5 class="news_title">
                                        <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                            <?php the_title() ?>
                                        </a>
                                    </h5>
                                </div>
                            </div>
                        <?php }
                        if ($v == 4 || $v == $samachar_count) {
                            echo '</div>';
                        }
                        ?>

                    <?php
                        $v++;
                    endwhile;
                    ?>

                </div>
            <?php
            endif
            ?>
            <div class="col-md-3">
                <?php
                if ($kurakani->have_posts()) :
                ?>
                    <div class="sep-block">
                        <div class="row theme_color">
                            <div class="col-12">
                                कुराकानी
                            </div>
                        </div>
                        <?php
                        while ($kurakani->have_posts()) : $kurakani->the_post();

                        ?>
                            <div class="col-sm-12">
                                <div class="flex rajniti-news">
                                    <div class="rajniti-news-image">
                                        <img src="<?php echo the_post_thumbnail_url('medium'); ?>" width="150px" alt="adfs" />
                                    </div>
                                    <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                        <?php echo wp_trim_words(get_the_title(), '5', '....'); ?>
                                    </a>
                                </div>
                            </div>

                        <?php
                            $a++;
                        endwhile;
                        ?>
                    </div>

            </div>
        <?php
                endif ?>
        <div class=" col-md-3">
            <div class="sep-block">
                <?php the_ad_group(55) ?>
            </div>
        </div>
        </div>
    </div>
    </div>
</section>


<!-- Below Desh News Ad starts  -->
<section class="below-desh-news">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="below-desh-news-ad">
                    <?php the_ad(74); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Below Desh News Ad end   -->