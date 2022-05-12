<?php

$includes_path = TEMPLATEPATH . '/includes/';

require_once($includes_path . 'theme-functions.php');        // theme functions
require_once($includes_path . 'custom-post-functions.php');        // custom post types functions
require_once($includes_path . 'bootstrap_nav_walker.php');  // bootstrap menu walker
require_once($includes_path . 'form-submit.php');  // bootstrap menu walker
add_action('init', function() {
    register_post_type( 'ads', [
      'public'=>true,
      'label'  => 'Ad',
      'show_in_graphql' => true,
      'graphql_single_name' => 'Ad',
      'graphql_plural_name' => 'Ads',
    ]);
  });
add_action( 'graphql_init', function() {
    add_filter( 'graphql_persona_fields', function( $fields ) {
                $fields['image'] = [
                		'type' => \WPGraphQL\Types::string(),
                        'resolve' => function( \WP_Post $post ) {
                                return get_post_meta( $post->ID, 'image', true );
                		},
                ];
       return $fields;
    } );
} );