<?php
get_header();
?>
<!-- After nav Ad starts  -->
<section class="below-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php the_ad(69); ?>
            </div>
        </div>
    </div>
</section>
<!-- After nav Ad end   -->

<section class="archive-section">
    <div class="container">

        <div class="row">
            <?php
            if (have_posts()) :
                while (have_posts()) : the_post();
            ?>
                    <div class="col-sm-12 col-md-3 ">
                        <div class="archive-post">
                            <div class="archive-image">
                                <?php

                                if (has_post_thumbnail()) { ?>
                                    <img src="<?php echo the_post_thumbnail_url('large'); ?>" alt="<?php the_title(); ?>" class="img-responsive">
                                <?php } else {
                                ?>
                                <?php
                                    the_title();
                                } ?>
                            </div>
                            <div class="archive-title">
                                <h4>
                                    <a href="<?php the_permalink(); ?>">
                                        <?php the_title(); ?>
                                    </a>
                                </h4>

                            </div>
                        </div>

                    </div>
            <?php
                endwhile;
            endif;
            ?>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="listing-pagination">
                    <nav class="text-center" aria-label="Page navigation example">
                        <?php
                        echo custom_pagination();
                        ?>
                    </nav>
                </div>
            </div>

        </div>
    </div>
</section>
<?php
get_footer();
?>