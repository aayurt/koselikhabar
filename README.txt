Koselikhabar->Local
UPDATE 	wp_options SET option_value = REPLACE(option_value,'https://www.koselikhabar.com','http://localhost/koselikhabar');
UPDATE 	wp_posts SET guid = REPLACE(guid,'https://www.koselikhabar.com','http://localhost/koselikhabar');
UPDATE	wp_posts SET post_content = REPLACE( post_content,'https://www.koselikhabar.com','http://localhost/koselikhabar');
UPDATE 	wp_postmeta SET meta_value = REPLACE(meta_value,'https://www.koselikhabar.com','http://localhost/koselikhabar');
Local->Koselikhabar
UPDATE 	wp_options SET option_value = REPLACE(option_value,'http://localhost/koselikhabar','https://www.koselikhabar.com');
UPDATE 	wp_posts SET guid = REPLACE(guid,'http://localhost/koselikhabar','https://www.koselikhabar.com');
UPDATE	wp_posts SET post_content = REPLACE( post_content,'http://localhost/koselikhabar','https://www.koselikhabar.com');
UPDATE 	wp_postmeta SET meta_value = REPLACE(meta_value,'http://localhost/koselikhabar','https://www.koselikhabar.com');
