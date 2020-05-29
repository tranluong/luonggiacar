<?php get_header(); ?>

    <?php
        if ( is_404() ) :
            get_template_part( 'templates/content', '404' );
        else:
            get_template_part( 'templates/content', 'page' );
        endif;
    ?>

<?php get_footer(); ?>