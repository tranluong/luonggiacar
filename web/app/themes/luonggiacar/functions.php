<?php

require_once 'lib/defines.php';
require_once 'lib/widgets/service.php';

function sidebar_widgets_init() {

    register_sidebar( array(
        'name' => 'Dịch vụ của chúng tôi',
        'id' => 'service_page_child',
        'before_widget' => '<div>',
        'after_widget' => '</div>',
        'before_title' => '<h2 class="rounded">',
        'after_title' => '</h2>',
    ) );
}
add_action( 'widgets_init', 'sidebar_widgets_init' );