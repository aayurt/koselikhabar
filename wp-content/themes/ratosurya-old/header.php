<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <title><?php echo get_bloginfo('name');?></title>

    <link href="<?php echo get_template_directory_uri() ?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri() ?>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri() ?>/css/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri() ?>/css/style.css" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri() ?>/css/responsive.css" rel="stylesheet" media="screen">
    <link rel="shortcut icon" href="images/fav-icon.png">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>

    <![endif]-->
    <?php wp_head(); ?>
</head>

<!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->

<body>

<!--header start-->

<header class="header">
	<section class="top-hed">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="brand-logo">
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
				</div>
                <div class="col-sm-offset-1 col-sm-8">
                    <div class="hed-advertise">
                        <img src="<?php echo get_template_directory_uri() ?>/images/hed-banner.png" alt="Header Ad">
                    </div>
				</div>
			</div>
		</div>
	</section>
    <section class="container">
        <div class="head-social">
            <div class="row">
                <div class="col-md-12">
                    <hr>
                    <ul class="pull-right">
                        <?php if(esc_url(get_theme_mod('fb_link'))!=""): ?>
                            <li><a href="<?php echo esc_url(get_theme_mod('fb_link', '#facebook')); ?>" target="_blank"> <i
                                        class="fa fa-facebook"></i> </a></li>
                        <?php endif;?>
                        <?php if(esc_url(get_theme_mod('twitt_link'))!=""): ?>
                            <li><a href="<?php echo esc_url(get_theme_mod('twitt_link', '#twitter')); ?>" target="_blank"> <i
                                        class="fa fa-twitter"></i> </a></li>
                        <?php endif;?>                
                        <?php if(esc_url(get_theme_mod('youtube_link'))!=""): ?>
                            <li><a href="<?php echo esc_url(get_theme_mod('youtube_link', '#youtube')); ?>" target="_blank"> <i
                                        class="fa fa-youtube"></i> </a></li>
                        <?php endif;?>
                    </ul>
                </div>
            </div>
        </div>
    </section>
	<nav class="navbar navbar-default">
        <div class="container">
        	<div class="row">
				<div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                </div>
                <div class="small-device-s">
                    <div class="col-md-3 col-sm-2">
                        <div class="header-search">
                            <i class="fa fa-search"></i>
                            <div class="header-form">
                                <form action="#">
                                    <input type="text" placeholder="search">
                                    <button><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="col-md-9 col-sm-10">
                <?php
                        wp_nav_menu(
                            array( 'theme_location' => 'primary-menu',
                                'menu' => '',
                                'container' => 'div',
                                'container_class' => 'collapse navbar-collapse navbar-ex1-collapse',
                                //'container_id' => 'bs-example-navbar-collapse-1',
                                //'menu_class' => 'menu',
                                'menu_id' => '',
                                'echo' => true,
                                'fallback_cb' => 'wp_page_menu',
                                'before' => '',
                                'after' => '',
                                'link_before' => '',
                                'link_after' => '',
                                'items_wrap' => '<ul id="nav" class="nav navbar-nav">%3$s</ul>',
                                'depth' => 0,
                                'walker' => new wp_bootstrap_navwalker
                            ) );

                        ?>
				</div>
				<div class="large-device-s">
                    <div class="col-md-3 col-sm-2">
                        <div class="header-search">
                            <i class="fa fa-search"></i>
                            <div class="header-form">
                                <form action="#">
                                    <input type="text" placeholder="search">
                                    <button><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
                    <!-- /.navbar-collapse -->

            </div>
        </div>
<!-- /.container -->
    </nav>
</header>

<!-- Header end -->