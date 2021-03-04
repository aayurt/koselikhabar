UPDATE 	wp_options SET option_value = REPLACE(option_value,'https://www.koselikhabar.com/','http://localhost/koselikhabar');
UPDATE 	wp_posts SET guid = REPLACE(guid,'https://www.koselikhabar.com/','http://localhost/koselikhabar');
UPDATE	wp_posts SET post_content = REPLACE( post_content,'https://www.koselikhabar.com/','http://localhost/koselikhabar');
UPDATE 	wp_postmeta SET meta_value = REPLACE(meta_value,'https://www.koselikhabar.com/','http://localhost/koselikhabar');