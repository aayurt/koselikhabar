<?php
global $wp_query;
$v = 1;
$MainNews = array(
    //'post_type' =>  'samachar',
    'post_per_page' =>  4,
    'order' =>  'desc',
    'category_name' => 'main-news',
);
query_posts($MainNews);
$count = $wp_query->found_posts;

if (have_posts()) :
?>

    <section class="samachar">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row theme_color">
                        <div class="col-12">
                            मुख्य समाचार
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <?php
                            while (have_posts()) : the_post(); ?>

                                <?php
                                if ($v == '1') {
                                ?>

                                    <div class="main_news">
                                        <div class="featured_image">
                                            <img src="<?php echo the_post_thumbnail_url(); ?>" class="card-img-top" alt="...">
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h5 class="news_title">
                                                    <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                                        <?php the_title() ?>
                                                    </a>
                                                </h5>

                                            </div>
                                            <div class="col-sm-12">
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

                                <?php
                                }
                                ?>

                            <?php
                                $v++;
                            endwhile;
                            ?>
                        </div>
                        <div class="col-sm-6">
                            <div class="row">

                                <?php
                                while (have_posts()) : the_post(); ?>
                                    <?php
                                    if ($v > 1) {
                                    ?>

                                        <div class="col-sm-6">
                                            <div class="col-sm-12">
                                                <div class="featured_image">
                                                    <img src="<?php echo the_post_thumbnail_url('medium'); ?>" width="100%" alt="adfs" />
                                                </div>
                                                <div class="news_detail">
                                                    <h5 class="news_title">
                                                        <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                                            <?php the_title() ?>
                                                        </a>
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>

                                    <?php }
                                    ?>
                                <?php
                                    $v++;
                                endwhile;
                                ?>
                            </div>
                        </div>
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
<?php
endif
?>