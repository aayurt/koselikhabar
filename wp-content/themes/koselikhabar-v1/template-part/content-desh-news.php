<section class="desh_news">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12">
                <div class="row theme_color">
                    <div class="col-12">
                        देश

                        <?php
                        $args = array(
                            'taxonomy' => 'category',
                            'orderby' => 'name',
                            'order'   => 'ASC',
                            // 'post_type' =>  'desh_news',
                            'exclude' => 1, //for excluding uncategorized
                            'parent' => 37,
                        );

                        $cats = get_categories($args);
                        ?>
                        <ul class="nav nav-tabs" id="pradeshTab" role="tablist">
                            <?php
                            foreach ($cats as $key => $cat) {
                            ?>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link <?php echo ($key == 0 ? 'active' : '') ?>" id="<?php echo 'pradesh_' . $cat->slug ?>-tab" data-toggle="tab" href="#<?php echo 'pradesh_' . $cat->category_nicename ?>" role="tab" aria-controls="<?php echo 'pradesh_' . $cat->category_nicename ?>" aria-selected="true">
                                        <?php echo $cat->name; ?>
                                    </a>
                                </li>
                            <?php }

                            ?>
                        </ul>
                    </div>
                </div>


                <div class="row">


                    <div class="tab-content" id="pradeshTabContent">
                        <?php

                        foreach ($cats as $key => $category) {
                            global $wp_query;
                            $post_count = 1;
                            $deshPradeshNews = array(
                                'post_per_page' =>  5,
                                'order' =>  'desc',
                                'category_name' => $category->slug
                            );


                            query_posts($deshPradeshNews);
                            $count = $wp_query->found_posts;

                            if (have_posts()) : ?>
                                <div class="test <?php echo $category->slug == 1 ? 'active' : '' ?>" id="<?php echo 'pradesh_' . $category->slug ?>" role="tabpanel" aria-labelledby="<?php echo 'pradesh_' . $category->slug ?>-tab">
                                    <div class="tab-pane new-tab-display row">
                                        <?php
                                        while (have_posts()) : the_post(); ?>

                                            <?php
                                            if ($post_count == 1) { ?>
                                                <div class="col-lg-6 col-md-6 col-sm-12">
                                                    <div class="main_news">
                                                        <div class="featured_image">
                                                            <img src="<?php echo the_post_thumbnail_url('medium'); ?>" alt="...">
                                                        </div>
                                                        <div class="news_detail">
                                                            <h5 class="news_title">
                                                                <a href="<?php the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                                                    <?php the_title(); ?>
                                                                </a>
                                                            </h5>
                                                            <div class="publish_time">
                                                                <i class="fa fa-calendar"></i><?php echo get_the_time(); ?>
                                                            </div>
                                                            <div class="news_desc">
                                                                <?php
                                                                $content = strip_tags(get_the_content());
                                                                if (has_excerpt($post->ID)) {
                                                                    the_excerpt();
                                                                } else {
                                                                    echo '<p>' . wp_trim_words($content, '25', '....') . '</p>';
                                                                }
                                                                ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php }
                                            if ($post_count == 2) {
                                                echo '<div class="col-md-6 col-sm-12">
                                                            <div class="main_side_news">
                                                                <div class="row">';
                                            }
                                            if ($post_count > 1) { ?>
                                                <div class="col-6">
                                                    <div class="featured_image">
                                                        <img src="<?php echo the_post_thumbnail_url('small'); ?>" alt="adfs" />
                                                    </div>
                                                    <div class="news_detail">
                                                        <h5 class="news_title">
                                                            <a href="<?php the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                                                <?php the_title(); ?>
                                                            </a>
                                                        </h5>
                                                        <div class="publish_time">
                                                            <i class="fa fa-calendar"></i><?php echo get_the_time(); ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php }
                                            if (($post_count == 5 || $post_count == $count) && ($count > 1))
                                                echo '</div>
                                                        </div>
                                                    </div>';
                                            ?>
                                        <?php
                                            $v++;
                                        endwhile
                                        ?>
                                    </div>

                                </div>
                        <?php
                            endif;
                            wp_reset_postdata();
                        } //endforeach
                        ?>
                    </div>

                </div>

                <!--Video Start-->
                <?php
                $video = array(
                    'post_type' =>  'videos',
                    'posts_per_page' => 1,
                    'order' => 'desc'
                );
                query_posts($video);
                if (have_posts()) :
                ?>
                    <div class="row">
                        <div class="col-12">
                            <div class="latestvideo">
                                <?php
                                while (have_posts()) : the_post();
                                ?>
                                    <iframe width="100%" height="400px" src="<?php echo get_post_meta($post->ID, "_youtubelink", true); ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                                <?php
                                endwhile;
                                ?>
                            </div>
                        </div>
                    </div>
                <?php
                endif;
                ?>
            </div>
            <div class="col-md-3 col-sm-12">
                <div class="row theme_color">
                    <div class="col-12">
                        ट्रेन्डिङ
                    </div>
                </div>
                <div class="trending">
                    <?php
                    awepop_popularity_list(5);
                    ?>

                </div>

            </div>
        </div>
        <!-- Below samachar ad starts  -->
        <section class="below-samachar">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="below-samachar-ad">
                            <?php the_ad(410); ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Below samachar Ad end   -->
    </div>
</section>