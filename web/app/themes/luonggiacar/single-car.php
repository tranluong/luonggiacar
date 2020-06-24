<?php

get_header();
$post_type = get_post_type();
if (is_singular($post_type)) :
    get_template_part('templates/content', 'product');
endif;
get_footer();