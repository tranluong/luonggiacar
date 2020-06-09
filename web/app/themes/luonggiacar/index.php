<?php
//get_header();
//    if (is_home()) :
//        get_template_part( 'templates/content', 'page' );
//    else:
//        global $post;
//        $page_slug = $post->post_name;
//        var_dump($page_slug);
//        global $wp;
//        $url = home_url( $wp->request );
//        $baseName = basename($url);
//        if ($baseName === 'contact') :
//            get_template_part('templates/content', 'contact');
//        elseif ($baseName === 'pricing') :
//            get_template_part('templates/content', 'price');
//        elseif ($baseName === 'about') :
//            get_template_part('templates/content', 'about');
//        elseif ($baseName === 'car') :
//            get_template_part('templates/content', 'car');
//        else:
//            // 404 page
//            get_template_part( 'templates/content', '404' );
//        endif;
//    endif;
//get_footer();


if ( is_404() ) :
    get_template_part( 'templates/content', '404' );
else:
    get_header();
    get_template_part( 'templates/content', 'page' );
    get_footer();
endif;
?>
