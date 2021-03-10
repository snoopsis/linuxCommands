UPDATE wp_options SET option_value = replace(option_value, 'http://localhost/wpstore', 'https://cestafeliz.migueldias.net') WHERE option_name = 'home' OR option_name = 'siteurl';

UPDATE wp_posts SET guid = replace(guid, 'http://localhost/wpstore','https://cestafeliz.migueldias.net');

UPDATE wp_posts SET post_content = replace(post_content, 'http://localhost/wpstore', 'https://cestafeliz.migueldias.net');

UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://localhost/wpstore','https://cestafeliz.migueldias.net');


UPDATE wp_posts
SET post_content = REPLACE (post_content,
'src="http://localhost/wpstore', 'src="https://cestafeliz.migueldias.net');
