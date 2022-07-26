<?php
global $wp_query;
$v = 1;
$a = 1;
$deshNews = array(
    'category_name' => 'Bataworan',
    'post_per_page' =>  4,
    'order' =>  'desc',
);
$query = new WP_Query($deshNews);
// query_posts($deshNews);
$count = $query->found_posts;
print_r($query);

?>

<div class="col-md-3">
    <?php
    $count = $query->found_posts;

    print_r($query->have_posts());
    if (have_posts()) :
    ?>
        <div class="sep-block">
            <div class="row theme_color">
                <div class="col-12">
                    कुराकानी
                </div>
            </div>
            <?php
            print_r(have_posts());

            while (have_posts()) : the_post();

            ?>

                <div class="col-sm-12">
                    <div class="flex samachar-news">
                        <div class="samachar-news-image">
                            <img src="<?php echo the_post_thumbnail_url('medium'); ?>" width="150px" alt="adfs" />
                        </div>
                        <a href="<?php the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                            <?php echo wp_trim_words(get_the_title(), '5', '....'); ?>
                        </a>
                    </div>
                </div>
            <?php
                $a++;
            endwhile;
            ?>
        </div>
    <?php
    endif ?>
</div>