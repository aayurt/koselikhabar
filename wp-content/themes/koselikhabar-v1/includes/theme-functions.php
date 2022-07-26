<?php

if (function_exists('add_theme_support')) {
    add_theme_support('menus');
    // Add Thumbnail Theme Support
    add_theme_support('post-thumbnails');
    add_image_size('large', 700, '', true); // Large Thumbnail
    add_image_size('medium', 250, '', true); // Medium Thumbnail
    add_image_size('small', 120, '', true); // Small Thumbnail
    add_image_size('custom-size', 700, 200, true); // Custom Thumbnail Size call using the_post_thumbnail('custom-size');
}

add_filter('post_thumbnail_html', 'remove_width_attribute', 10);
add_filter('image_send_to_editor', 'remove_width_attribute', 10);

function remove_width_attribute($html)
{
    $html = preg_replace('/(width|height)="\d*"\s/', "", $html);
    return $html;
}

/*
 * Enable support for Post Thumbnails on posts and pages.
 *
 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
 */

add_theme_support('post-thumbnails');
set_post_thumbnail_size(1200, 9999);

// This theme uses wp_nav_menu() in two locations.
if (function_exists('wp_nav_menu')) {
    add_theme_support('nav-menus');
    register_nav_menus(
        array(
            'header-menu' => __( 'Header Menu' ),
            'footer-menu' => __( 'Footer Menu' )
        )
    );
}

//remove default class on nav menu
add_filter('nav_menu_item_id', 'clear_nav_menu_item_id', 10, 3);
function clear_nav_menu_item_id($id, $item, $args)
{
    return "";
}

add_filter('nav_menu_css_class', 'clear_nav_menu_item_class', 10, 3);
function clear_nav_menu_item_class($classes, $item, $args)
{
    $classes[] = 'nav-item';
    return $classes;
    //return is_array($classes) ? array_intersect($classes, array('nav-item')) : '';
}

add_filter( 'nav_menu_link_attributes', 'wpse156165_menu_add_class', 10, 3 );

function wpse156165_menu_add_class( $atts, $item, $args ) {
    $class = 'nav-link'; // or something based on $item
    $atts['class'] = $class;
    return $atts;
}
/*
 * Theme customizer
 */
function themeslug_theme_customizer($wp_customize)
{
    class WP_Customize_Textarea_Control extends WP_Customize_Control
    {
        public $type = 'textarea';

        public function render_content()
        {
            ?>
            <label>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
                <textarea rows="5"
                          style="width:100%;" <?php $this->link(); ?>><?php echo esc_textarea($this->value()); ?></textarea>
            </label>
            <?php
        }
    }

    //site logo
    $wp_customize->add_section('themeslug_logo_section', array(
        'title' => __('Site Logo', 'themeslug'),
        'priority' => 30,
        'description' => 'Upload a logo to represent your site',
    ));
    $wp_customize->add_setting('themeslug_logo');
    $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'themeslug_logo', array(
        'label' => __('Logo', 'themeslug'),
        'section' => 'themeslug_logo_section',
        'settings' => 'themeslug_logo',
    )));
    //site logo

    //    social Medials Settings
    $wp_customize->add_section('social_sec', array(
        'title' => esc_attr__('Social Settings', 'themeslug'),
        'description' => 'Get connect with Social Medias',
        'priority' => null
    ));
    $wp_customize->add_setting('fb_link', array(
        'default' => '#facebook',
        'sanitize_callback' => 'esc_url_raw'
    ));
    $wp_customize->add_control('fb_link', array(
        'label' => esc_attr__('Add facebook link here'),
        'section' => 'social_sec',
        'setting' => 'fb_link'
    ));

    $wp_customize->add_setting('twitt_link', array(
        'default' => '#twitter',
        'sanitize_callback' => 'esc_url_raw'
    ));
    $wp_customize->add_control('twitt_link', array(
        'label' => esc_attr__('Add twitter link here'),
        'section' => 'social_sec',
        'setting' => 'twitt_link'
    ));

    /*$wp_customize->add_setting('gplus_link', array(
        'default' => '#gplus',
        'sanitize_callback' => 'esc_url_raw'
    ));
    $wp_customize->add_control('gplus_link', array(
        'label' => esc_attr__('Add google plus link here'),
        'section' => 'social_sec',
        'setting' => 'gplus_link'
    ));*/

    $wp_customize->add_setting('linked_link', array(
        'default' => '#linkedin',
        'sanitize_callback' => 'esc_url_raw'
    ));
    $wp_customize->add_control('linked_link', array(
        'label' => esc_attr__('Add linkedin link here'),
        'section' => 'social_sec',
        'setting' => 'linked_link'
    ));

    $wp_customize->add_setting('youtube_link', array(
        'default' => '#youtube',
        'sanitize_callback' => 'esc_url_raw'
    ));
    $wp_customize->add_control('youtube_link', array(
        'label' => esc_attr__('Add youtube link here'),
        'section' => 'social_sec',
        'setting' => 'youtube_link'
    ));

    $wp_customize->add_setting('instagram_link', array(
        'default' => '#instagram',
        'sanitize_callback' => 'esc_url_raw'
    ));
    $wp_customize->add_control('instagram_link', array(
        'label' => esc_attr__('Add instagram link here'),
        'section' => 'social_sec',
        'setting' => 'instagram_link'
    ));

//    social Medials Settings

    //    Contact Details
    $wp_customize->add_section('contact_sec', array(
        'title' => esc_attr__('Contact Details'),
        'description' => esc_attr__('Add you contact details here'),
        'priority' => null
    ));
    $wp_customize->add_setting('contact_add', array(
        'default' => esc_attr__('100 King St, Melbourne PIC 4000, Australia'),
        'sanitize_callback' => 'wp_htmledit_pre'
    ));
    $wp_customize->add_control(new WP_Customize_Textarea_Control($wp_customize, 'contact_add', array(
                'label' => esc_attr__('Add contact address here'),
                'section' => 'contact_sec',
                'setting' => 'contact_add'
            )
        )
    );

    $wp_customize->add_setting('contact_no', array(
        'default' => esc_attr__('Phone: +123 456 7890'),
        'sanitize_callback' => 'sanitize_text_field'
    ));
    $wp_customize->add_control('contact_no', array(
        'label' => esc_attr__('Add contact number here.'),
        'section' => 'contact_sec',
        'setting' => 'contact_no'
    ));

    $wp_customize->add_setting('fax_no', array(
        'default' => esc_attr__('Fax: 977 01 4255216'),
        'sanitize_callback' => 'sanitize_text_field'
    ));
    $wp_customize->add_control('fax_no', array(
        'label' => esc_attr__('Add Fax number here.'),
        'section' => 'contact_sec',
        'setting' => 'fax_no'
    ));

    $wp_customize->add_setting('contact_mail', array(
        'default' => 'contact@company.com',
        'sanitize_callback' => 'sanitize_email'
    ));
    $wp_customize->add_control('contact_mail', array(
        'label' => esc_attr__('Add you email here'),
        'section' => 'contact_sec',
        'setting' => 'contact_mail'
    ));
//    Contact Details
}
add_action('customize_register', 'themeslug_theme_customizer');

/*
 * disable admin bar in front-end
 */
function hide_admin_bar()
{
    return false;
}
add_filter( 'show_admin_bar', 'hide_admin_bar' );

function custom_pagination(){
    global $wp_query;
    $big = 999999999; // need an unlikely integer
    $pages = paginate_links( array(
        'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
        'format' => '?paged=%#%',
        'current' => max( 1, get_query_var('paged') ),
        'total' => $wp_query->max_num_pages,
        //'prev_next' => false,
        'type'  => 'array',
        'prev_next'   => TRUE,
        'prev_text'    => __('<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
                              <span class="sr-only">अघि</span>'),
        'next_text'    => __('<span class="sr-only">पछि</span>
                              <span aria-hidden="true"><i class="fa fa-angle-right"></i></span>'),
    ) );
    if( is_array( $pages ) ) {
        $paged = ( get_query_var('paged') == 0 ) ? 1 : get_query_var('paged');
        echo '<ul class="pagination">';
        foreach ( $pages as $page ) {
            echo "<li class='page-item'>$page</li>";
        }
        echo '</ul>';
    }
}
/*
 * Theme customizer
 */