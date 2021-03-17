<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php
        if(is_single()){
            if(have_posts()):while (have_posts()):the_post();
                if (has_post_thumbnail($post->ID)) {
                    $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');
                    $img = $image[0];
                } else {
                    $img_src = get_stylesheet_directory_uri() . '/img/brandcrazee-logo-refl.png';
                }

                if(has_excerpt()){
                    $content = get_the_excerpt();
                }
                else{
                    $content = get_the_content();
                }
                $content = mb_substr($content, 0, 350, 'utf-8');
            ?>
                <title><?php echo the_title(); ?> | <?php echo get_bloginfo('name') . ' :: ' . get_bloginfo('description') ?></title>
                <meta name="keywords" content="Koselikhabar">
                <meta name="description" content="<?php echo strip_tags($content); ?>">
                <meta property="og:title" content="<?php echo the_title() . ' | '.get_bloginfo('name').' :: ' . get_bloginfo('description'); ?>"/>
                <meta property="og:description" content="<?php echo strip_tags($content); ?>"/>
                <meta property="og:type" content="article"/>
                <meta property="og:url" content="<?php echo the_permalink(); ?>"/>
                <meta property="og:site_name" content="<?php echo get_bloginfo(); ?>"/>
                <meta property="og:image" content="<?php echo $img; ?>"/>
        <?php
            endwhile;
            endif;
        }
        else
        {?>
            <title><?php echo get_bloginfo('name') . ' :: ' . get_bloginfo('description') ?></title>
            <meta name="keywords" content="Koselikhabar">
            <meta name="description" content="<?php echo get_bloginfo('description');?>">
            <meta property="og:title" content="<?php echo get_bloginfo('name');?>"/>
            <meta property="og:description" content="<?php echo strip_tags($content); ?>"/>
            <meta property="og:type" content="article"/>
            <meta property="og:url" content="<?php echo esc_url(home_url('/')); ?>">
            <meta property="og:site_name" content="<?php echo get_bloginfo('name');?>"/>
            <?php if (get_theme_mod('themeslug_logo')) : ?>
            <meta property="og:image" content="<?php echo esc_url(get_theme_mod('themeslug_logo')); ?>"/>
            <?php endif?>
        <?php }
    ?>

    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/style.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/mediaQuery.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/responsive.css">
    <?php wp_head();?>
</head>
<body>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v9.0" nonce="y618bWX3"></script>
<header class="header">
    <!--Top Header Start    -->
    <section class="top-head">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="main-logo">
                        <?php if (get_theme_mod('themeslug_logo')) : ?>
                            <a class="hed-logo" href="<?php echo esc_url(home_url('/')); ?>"
                               title='<?php echo esc_attr(get_bloginfo('name', 'display')); ?>' rel='home'><img
                                    src="<?php echo esc_url(get_theme_mod('themeslug_logo')); ?>"
                                    alt="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>"
                                    class="img-responsive"></a>

                        <?php else : ?>
                            <a class="hed-logo" href="<?php echo esc_url(home_url('/')); ?>"
                               title='<?php echo esc_attr(get_bloginfo('name', 'display')); ?>'
                               rel='home'><?php echo esc_attr(get_bloginfo('name', 'display')); ?></a>
                        <?php endif; ?>
                    </div>
                    <div class="header-date">
                        <?php echo ndu_today_date();?>
                    </div>
                </div>
                <div class="offset-md-1 col-md-8">
                    <div class="header-ad">
                        <?php the_ad_group(3)?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Top Header End    -->
    <!-- Menu Start  -->
    <section class="header-menu">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <?php
                    wp_nav_menu(
                        array(
                            'theme_location' => 'header-menu',
                            'container' => '',
                            'items_wrap' => '<ul class="navbar-nav mr-auto">%3$s</ul>',
                            'walker' => new wp_bootstrap_navwalker,
                        )
                    );
                    ?>
                </div>
            </nav>
        </div>
    </section>
    <!-- Menu End    -->
</header>