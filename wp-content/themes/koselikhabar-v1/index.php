<?php
get_header();

?>
<!-- After nav Ad starts  -->
<section class="below-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 adtopFix">
                <div class="below-header-ad">
                    <?php the_ad(72); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- After nav Ad end   -->
<!-- Banner Headline News start-->
<?php
get_template_part('template-part/content-headline-news', get_post_format());
?>
<!-- Banner Headline News  End-->
<!-- Banner News start-->
<!-- <?php
        // get_template_part('template-part/content-banner-news', get_post_format());
        ?> -->
<!-- Banner News  End-->

<!--Latest News Start-->
<?php
//get_template_part('template-part/content-latest-news', get_post_format())
?>
<!--Latest News End-->

<!-- Below Latest News Ad starts  -->
<section class="below-latest-news">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="below-latest-news-ad">
                    <?php the_ad(74); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Below Latest News Ad end   -->

<!--Desh News Start-->

<?php
get_template_part('template-part/content-desh-news', get_post_format())
?>
<!--Desh News End-->


<!-- Below samachar ad starts  -->
<section class="below-samachar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="below-samachar-ad">
                    <?php the_ad(74); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Below samachar Ad end   -->

<!--Samachar starts-->
<?php
get_template_part('template-part/content-jivan-saili', get_post_format())
?>
<!--Samachar ends-->



<!--Entertainment starts-->
<?php
get_template_part('template-part/content-bataworan', get_post_format())
?>
<!--Entertainment ends-->



<!--Sports starts-->
<?php
get_template_part('template-part/content-sulsuley', get_post_format())
?>
<!--Sports ends-->




<?php
get_footer();
?>