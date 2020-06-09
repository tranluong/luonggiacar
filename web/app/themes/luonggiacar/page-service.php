<?php get_header(); ?>
<?php if ( is_active_sidebar( 'service_page_child' ) ) : ?>
    <?php dynamic_sidebar( 'service_page_child' ); ?>
<?php endif; ?>