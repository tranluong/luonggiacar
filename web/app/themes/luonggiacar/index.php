<?php
    if (is_home()) :
        get_header();
        get_template_part( 'templates/content', 'page' );
        get_footer();
    else:
        global $wp;
        $url = home_url( $wp->request );
        $baseName = basename($url);
        if ($baseName === 'contact') :
            get_template_part('templates/content', 'contact');
        elseif ($baseName === 'pricing') :
            get_template_part('templates/content', 'price');
        elseif ($baseName === 'about') :
            get_template_part('templates/content', 'about');
        elseif ($baseName === 'car') :
            get_template_part('templates/content', 'car');
        else:
            // 404 page
            get_template_part( 'templates/content', '404' );
        endif;
    endif;
    ?>
