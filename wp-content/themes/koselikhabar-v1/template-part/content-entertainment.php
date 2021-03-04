<?php
global $wp_query;
$v = 1;
$deshNews = array(
    'post_type' =>  'entertainment',
    'post_per_page' =>  4,
    'order' =>  'desc',
);
query_posts($deshNews);
$count = $wp_query->found_posts;
if(have_posts()):
?>

    <section class="samachar">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="row theme_color">
                    <div class="col-12">
                        Entertainment
                    </div>
                </div>
                <?php
                    while(have_posts()) : the_post();
                        if ($v == '1') {
                ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="main_news">
                                        <h5 class="news_title">
                                            <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title();?>">
                                                <?php the_title()?>
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
                                                    if(has_excerpt( $post->ID )){
                                                        the_excerpt();
                                                    } else{
                                                        echo '<p>'.wp_trim_words($content,'50', '....').'</p>';
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
                        if($v == '2'){
                            echo '<div class="row main_side_news">';
                        }
                        if($v > 1){?>
                            <div class="col-md-4">
                                <div class="featured_image">
                                    <img src="<?php echo the_post_thumbnail_url('medium'); ?>" alt="adfs"/>
                                </div>
                                <div class="news_detail">
                                    <h5 class="news_title">
                                        <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title();?>">
                                            <?php the_title()?>
                                        </a>
                                    </h5>
                                </div>
                            </div>
                        <?php }
                        if ($v == 4 || $v == $count) {
                            echo '</div>';
                        }
                        ?>

                <?php
                    $v++;
                    endwhile;
                ?>

            </div>
            <div class="col-md-4">
                <div class="ad-block">
                    <ul>
                        <li>
                            <img src="https://picsum.photos/200/200" alt="adfs"/>
                        </li>
                        <li>
                            <img src="https://picsum.photos/200/200" alt="adfs"/>
                        </li>
                        <li>
                            <img src="https://picsum.photos/200/200" alt="adfs"/>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- Below entertainments Ad starts  -->
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
    <!-- Below entertainments Ad end   -->
<?php
    endif
?>