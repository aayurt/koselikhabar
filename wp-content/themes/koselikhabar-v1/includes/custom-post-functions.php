<?php
/**********************************************************DESH**************************************************************************/
function deshNews() {
    $labels = array(
        'name' => _x('Desh', 'koseli_desh'),
        'singular_name' => _x('Desh', 'koseli_desh'),
        'add_new' => _x('Add Desh News', 'Desh'),
        'add_new_item' => __('Add New Desh News'),
        'edit_item' => __('Edit Desh News'),
        'new_item' => __('New Desh News'),
        'all_items' => __('All Desh News'),
        'view_item' => __('View Desh News'),
        'search_items' => __('Search Desh News'),
        'not_found' =>  __('No Desh News found'),
        'not_found_in_trash' => __('No Desh News found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Desh News')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'desh-news', 'koseli-desh-news') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt', 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('desh_news', $args);
}
//add_action( 'init', 'deshNews' );

/**********************************************************SAMACHAR**************************************************************************/
function samachar() {
    $labels = array(
        'name' => _x('Samachar', 'koseli_samachar'),
        'singular_name' => _x('Samachar', 'koseli_samachar'),
        'add_new' => _x('Add Samachar', 'Samachar'),
        'add_new_item' => __('Add New Samachar'),
        'edit_item' => __('Edit Samachar'),
        'new_item' => __('New Samachar'),
        'all_items' => __('All Samachars'),
        'view_item' => __('View Samachar'),
        'search_items' => __('Search Samachar'),
        'not_found' =>  __('No Samachars found'),
        'not_found_in_trash' => __('No Samachars found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Samachar')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'samachars', 'koseli-samachar') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt', 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('samachar', $args);
}
//add_action( 'init', 'samachar' );


/**********************************************************Video************************************************************/
function videoslist(){
    $labels = array(
        'name' => _x('Videos', 'koseli_videos'),
        'singular_name' => _x('Videos', 'koseli_videos'),
        'add_new' => _x('Add Video', 'TestDrive'),
        'add_new_item' => __('Add Video '),
        'edit_item' => __('Edit Video'),
        'new_item' => __('New  Video'),
        'all_items' => __('All  Videos'),
        'view_item' => __('View Video'),
        'search_items' => __('Search Video'),
        'not_found' =>  __('No Videos found'),
        'not_found_in_trash' => __('No  Videos found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Videos')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'video', 'koseli-videolist') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'menu_icon'           => 'dashicons-media-video',
        'register_meta_box_cb' => 'add_link_metaboxes',
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt' , 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('videos', $args);
}
add_action('init', 'videoslist');


/**********************************************************entertainment ************************************************************/
function entertainment(){
    $labels = array(
        'name' => _x('Entertainment', 'koseli_entertainments'),
        'singular_name' => _x('Entertainment', 'koseli_entertainments'),
        'add_new' => _x('Add Entertainment', 'TestDrive'),
        'add_new_item' => __('Add Entertainment'),
        'edit_item' => __('Edit Entertainment'),
        'new_item' => __('New  Entertainment'),
        'all_items' => __('All  Entertainments'),
        'view_item' => __('View Entertainment'),
        'search_items' => __('Search Entertainment'),
        'not_found' =>  __('No Entertainments found'),
        'not_found_in_trash' => __('No  Entertainments found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Entertainments')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'entertainment', 'koseli-entertainment') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'menu_icon'           => 'dashicons-tickets-alt',
        'register_meta_box_cb' => 'add_link_metaboxes',
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt' , 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('entertainment', $args);
}
//add_action('init', 'entertainment');


/**********************************************************sports ************************************************************/
function sports(){
    $labels = array(
        'name' => _x('Sports', 'koseli_sports'),
        'singular_name' => _x('Sports', 'koseli_sports'),
        'add_new' => _x('Add Sport', 'TestDrive'),
        'add_new_item' => __('Add Sport'),
        'edit_item' => __('Edit Sport'),
        'new_item' => __('New  Sport'),
        'all_items' => __('All  Sports'),
        'view_item' => __('View Sport'),
        'search_items' => __('Search Sport'),
        'not_found' =>  __('No Sports found'),
        'not_found_in_trash' => __('No  Sports found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Sports')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'sports', 'koseli-sports') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'register_meta_box_cb' => 'add_link_metaboxes',
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt' , 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('sports', $args);
}
//add_action('init', 'sports');


/**********************************************************Muncha ************************************************************/
function muncha(){
    $labels = array(
        'name' => _x('Muncha', 'koseli_muncha'),
        'singular_name' => _x('Muncha', 'koseli_muncha'),
        'add_new' => _x('Add Muncha', 'TestDrive'),
        'add_new_item' => __('Add Muncha'),
        'edit_item' => __('Edit Muncha'),
        'new_item' => __('New  Muncha'),
        'all_items' => __('All  Muncha'),
        'view_item' => __('View Muncha'),
        'search_items' => __('Search Muncha'),
        'not_found' =>  __('No Muncha found'),
        'not_found_in_trash' => __('No  Muncha found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Muncha')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'muncha', 'koseli-muncha') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'register_meta_box_cb' => 'add_link_metaboxes',
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt' , 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('muncha', $args);
}
//add_action('init', 'muncha');

/**********************************************************Special ************************************************************/
function special(){
    $labels = array(
        'name' => _x('Koseli Khabar Special', 'koselikhabar_special'),
        'singular_name' => _x('Koseli Khabar Special', 'koselikhabar_special'),
        'add_new' => _x('Add Special', 'TestDrive'),
        'add_new_item' => __('Add Special'),
        'edit_item' => __('Edit Special'),
        'new_item' => __('New  Special'),
        'all_items' => __('All  Special'),
        'view_item' => __('View Special'),
        'search_items' => __('Search Special'),
        'not_found' =>  __('No Special found'),
        'not_found_in_trash' => __('No  Specials found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Koseli Khabar Special')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'special', 'koseli-special') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'register_meta_box_cb' => 'add_link_metaboxes',
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt' , 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('special', $args);
}
//add_action('init', 'special');

/**********************************************************History ************************************************************/
function itihas(){
    $labels = array(
        'name' => _x('Itihas', 'koseli_itihas'),
        'singular_name' => _x('Itihas', 'koseli_itihas'),
        'add_new' => _x('Add Itihas', 'TestDrive'),
        'add_new_item' => __('Add Itihas'),
        'edit_item' => __('Edit Itihas'),
        'new_item' => __('New  Itihas'),
        'all_items' => __('All  Itihas'),
        'view_item' => __('View Itihas'),
        'search_items' => __('Search Itihas'),
        'not_found' =>  __('No Itihas found'),
        'not_found_in_trash' => __('No  Itihas found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Itihas')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'itihas', 'koseli-itihas') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'menu_icon'           => 'dashicons-clock',
        'register_meta_box_cb' => 'add_link_metaboxes',
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt' , 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('itihas', $args);
}
//add_action('init', 'itihas');

/**********************************************************Surakchya ************************************************************/
function surakchya(){
    $labels = array(
        'name' => _x('Surakchya', 'koseli_surakchya'),
        'singular_name' => _x('Surakchya', 'koseli_surakchya'),
        'add_new' => _x('Add Surakchya', 'TestDrive'),
        'add_new_item' => __('Add Surakchya'),
        'edit_item' => __('Edit Surakchya'),
        'new_item' => __('New  Surakchya'),
        'all_items' => __('All  Surakchya'),
        'view_item' => __('View Surakchya'),
        'search_items' => __('Search Surakchya'),
        'not_found' =>  __('No Surakchya found'),
        'not_found_in_trash' => __('No  Surakchya found in Trash'),
        'parent_item_colon' => '',
        'menu_name' => __('Surakchya')
    );
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => _x( 'surakchya', 'koseli-itihas') ),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => 5,
        'menu_icon'           => 'dashicons-clock',
        'register_meta_box_cb' => 'add_link_metaboxes',
        'supports' => array( 'title', 'thumbnail', 'editor' , 'excerpt' , 'comments', 'tags'),
        'taxonomies' => array('category','post_tag')
    );
    register_post_type('Surakchya', $args);
}
//add_action('init', 'surakchya');


/**********************************************************Youtube link************************************************************/
add_action( 'add_meta_boxes', 'add_link_metaboxes' );
// Add the Events Meta Boxes

function add_link_metaboxes() {
    $post_types = array('post','samachar','videos','deshNews','entertainment','sports');
    foreach ($post_types as $post_type){
        add_meta_box(
            'wpt_youtube_link',
            'Youtube Link',
            'wpt_youtube_link',
            $post_type,
            'normal',
            'default');
    }
}

// The Event Location Metabox

function wpt_youtube_link() {
    global $post;

    // Noncename needed to verify where the data originated
    echo '<input type="hidden" name="eventmeta_noncename" id="eventmeta_noncename" value="' .
        wp_create_nonce( plugin_basename(__FILE__) ) . '" />';

    // Get the location data if its already been entered
    $youtubelink = get_post_meta($post->ID, '_youtubelink', true);

    // Echo out the field
    echo '<input type="text" name="_youtubelink" value="' . $youtubelink  . '" class="widefat" placeholder="https://www.youtube.com/embed/Qq0uVosVoaA" />';

}

// Save the Metabox Data

function wpt_save_events_meta($post_id, $post) {

    // verify this came from the our screen and with proper authorization,
    // because save_post can be triggered at other times
    if ( !wp_verify_nonce( $_POST['eventmeta_noncename'], plugin_basename(__FILE__) )) {
        return $post->ID;
    }

    // Is the user allowed to edit the post or page?
    if ( !current_user_can( 'edit_post', $post->ID ))
        return $post->ID;

    // OK, we're authenticated: we need to find and save the data
    // We'll put it into an array to make it easier to loop though.

    $events_meta['_youtubelink'] = $_POST['_youtubelink'];

    // Add values of $events_meta as custom fields

    foreach ($events_meta as $key => $value) { // Cycle through the $events_meta array!
        if( $post->post_type == 'revision' ) return; // Don't store custom data twice
        $value = implode(',', (array)$value); // If $value is an array, make it a CSV (unlikely)
        if(get_post_meta($post->ID, $key, FALSE)) { // If the custom field already has a value
            update_post_meta($post->ID, $key, $value);
        } else { // If the custom field doesn't have a value
            add_post_meta($post->ID, $key, $value);
        }
        if(!$value) delete_post_meta($post->ID, $key); // Delete if blank
    }

}

add_action('save_post', 'wpt_save_events_meta', 1, 2); // save the custom fields

