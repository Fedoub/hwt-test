SELECT wp_posts.ID AS "Order ID", wp_posts.post_title AS "Order Tile", GROUP_CONCAT(wp_postmeta.Meta_value SEPARATOR" ") AS "Customer Name" 
FROM test.wp_posts
JOIN test.wp_postmeta ON wp_posts.ID=wp_postmeta.Post_id
WHERE Meta_key = "_billing_first_name" OR Meta_key = "_billing_last_name";