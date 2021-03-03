UPDATE 	wp_options SET option_value = REPLACE(option_value,'http://localhost/koselikhabar','http://localhost/koselikhabar');
UPDATE 	wp_posts SET guid = REPLACE(guid,'http://localhost/koselikhabar','http://localhost/koselikhabar');
UPDATE	wp_posts SET post_content = REPLACE( post_content,'http://localhost/koselikhabar','http://localhost/koselikhabar');
UPDATE 	wp_postmeta SET meta_value = REPLACE(meta_value,'http://localhost/koselikhabar','http://localhost/koselikhabar');