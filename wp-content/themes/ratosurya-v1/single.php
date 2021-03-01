<?php
get_header();
?>
<!-- After nav Ad starts  -->
<section class="below-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php the_ad(92); ?>

            </div>
        </div>
    </div>
</section>
<!-- After nav Ad end   -->

<?php
if(have_posts()):while (have_posts()):the_post();
    ?>

    <section class="single_news_head">
        <div class="container">

            <h2 class="news_title">
                <?php the_title();?>
            </h2>
            <ul class="news_detail">
                <li class="author_name"><i class="fa fa-user"></i>
                    <?php $author_id = $post->post_author;
                    echo the_author_meta( 'display_name', $author_id );
                    ?>

                    <?php //the_author()?></li>
                <li class="publish_time"><i class="fa fa-clock-o"></i><?php echo get_the_date()?></li>
				<li class="social_share">

                    <div class="fb-share-button" data-href="<?php the_permalink();?>" data-layout="button" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink()?>" class="fb-xfbml-parse-ignore">Share</a></div>
                </li>
            </ul>
        </div>
    </section>
    <section class="single_news_detail">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="single_news_detail_ad">
                        <img src="https://picsum.photos/800/100" alt="...">
                    </div>
                    <?php
                    if(has_post_thumbnail()){?>
                        <div class="featured_image">
                            <img src="<?php echo the_post_thumbnail_url('large');?>" class="card-img-top" alt="...">
                        </div>
                        <?php
                    }
                    ?>
                    <div class="news_desc">
                        <?php the_content(); ?>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="single_page_ads">
                        <?php the_ad_group(8)?>
                    </div>
                    <div class="similar_news">
                        <ul >
                            <li class="similar_news_title">
                                <span> अन्य समाचार </span>
                                <hr>
                                <div class="clear_fix"></div>
                            </li>
                            <?php
                            $related = get_posts(
                                array(
                                    'category__in' => wp_get_post_categories($post->ID),
                                    'numberposts' => 4,
                                    'post__not_in' => array($post->ID) ) );

                            if( $related ) foreach( $related as $post ) {
                                setup_postdata($post);
                                ?>
                                <li>
                                    <div class="row ">
                                        <div class="col-5">
                                            <div class="featured_image">
                                                <img src="<?php echo the_post_thumbnail_url('thumbnail');?>" alt="adfs"/>
                                            </div>
                                        </div>
                                        <div class="col-7">
                                            <div class="news_detail">
                                                <h5 class="news_title">
                                                    <a href="<?php the_permalink();?>" title="<?php echo get_the_title();?>">
                                                        <?php echo wp_trim_words(get_the_title(),'4', '....');?>
                                                    </a>
                                                </h5>
                                                <div class="publish_time">
                                                    <i class="fa fa-calendar"></i><?php echo get_the_date('d m y')?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            <?php }
                            ?>

                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </section>
<?php
endwhile;;
endif
?>



<?php
get_footer();
?>
