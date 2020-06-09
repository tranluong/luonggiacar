<?php get_header(); ?>
<?php if ( is_active_sidebar( 'about_page_child' ) ) : ?>
    <?php dynamic_sidebar( 'about_page_child' ); ?>
<?php endif; ?>