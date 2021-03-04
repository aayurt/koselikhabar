<?php
$post_type = array(
    'desh_news','entertainment','samachar','sports'
);
$bannerNews = array(
    'post_type' => $post_type,
    'posts_per_page' => 4,
    'order' =>  'desc',
);
query_posts($bannerNews);

if(have_posts()):
    ?>
    <section class="banner-news">
        <div class="container">
            <?php while(have_posts()): the_post();?>

                <div class="row">
                    <div class="col-md-12">
                        <div class="news">
                            <div class="banner-news-title">
                                <h1>
                                    <a href="<?php the_permalink();?>">
                                        <?php the_title();?>
                                    </a>

                                </h1>
                            </div>
                            <div class="banner-news-detail">
                                <ul>
                                    <li class="author_name"><i class="fa fa-user"></i>
                                        <?php $author_id = $post->post_author;
                                        echo the_author_meta( 'display_name', $author_id );
                                        ?></li>
                                    <li class="publish_time"><i class="fa fa-clock-o"></i><?php echo get_the_time();?></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            <?php endwhile;?>
        </div>
    </section>
<?php
endif;
?>
