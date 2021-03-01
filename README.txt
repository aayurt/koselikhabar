UPDATE 	wp_options SET option_value = REPLACE(option_value,'http://ratosurya.binayas.com.np','http://localhost/ratosurya');
UPDATE 	wp_posts SET guid = REPLACE(guid,'http://ratosurya.binayas.com.np','http://localhost/ratosurya');
UPDATE	wp_posts SET post_content = REPLACE( post_content,'http://ratosurya.binayas.com.np','http://localhost/ratosurya');
UPDATE 	wp_postmeta SET meta_value = REPLACE(meta_value,'http://ratosurya.binayas.com.np','http://localhost/ratosurya');