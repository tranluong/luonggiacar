<?php if (is_home()) : ?>
    <?php get_header(); ?>
        <?php
            if ( is_404() ) :
                get_template_part( 'templates/content', '404' );
            else:
                get_template_part( 'templates/content', 'page' );
            endif;
        ?>
    <?php get_footer(); ?>
<?php else:
    global $wp;
    $url = home_url( $wp->request );
    if (basename($url) === 'contact') :
        get_template_part('templates/content', 'contact');
    elseif (basename($url) === 'pricing') :
        get_template_part('templates/content', 'price');
    endif;
endif; ?>
