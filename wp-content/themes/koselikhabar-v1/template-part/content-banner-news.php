<?php
$post_type = array(
    'desh_news','entertainment','samachar','sports'
);
$bannerNews = array(
    //'post_type' => $post_type,
    'posts_per_page' => 4,
    'order' =>  'desc',
);
query_posts($bannerNews);

$l = $p = 0;
if(have_posts()):
?>
<section class="banner-news">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <?php
                        while(have_posts()):the_post();
                            ?>
                            <li data-target="#carouselExampleCaptions" data-slide-to="<?php echo $l?>" class="<?php echo ($l==0?'active':'')?>"></li>
                            <?php
                            $l++;
                        endwhile;
                        ?>
                    </ol>
                    <div class="carousel-inner">
                        <?php
                        while(have_posts()):the_post();
                            ?>
                            <div class="carousel-item <?php echo ($p==0?'active':'')?>">
                                <img src="<?php echo the_post_thumbnail_url('large'); ?>" class="banner-image" alt="<?php the_title();?>">

                                <div class="carousel-caption d-none d-md-block news">
                                    <div class="banner-news-title">
                                        <h3>
                                            <a href="<?php the_permalink();?>">
                                                <?php the_title();?>
                                            </a>

                                        </h3>
                                    </div>
                                    <p><div class="banner-news-detail">
                                        <ul>
                                            <li class="author_name"><i class="fa fa-user"></i>
                                                <?php $author_id = $post->post_author;
                                                echo the_author_meta( 'display_name', $author_id );
                                                ?></li>
                                            <li class="publish_time"><i class="fa fa-clock-o"></i><?php echo get_the_time();?></li>
                                        </ul>
                                    </div></p>
                                </div>
                            </div>
                            <?php
                            $p++;
                        endwhile;

                        ?>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

        </div>
    </div>
</section>

<?php
    endif;
    ?>