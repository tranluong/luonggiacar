<?php

//require_once 'lib/widget/widget_test.php';
// This function enqueues the Normalize.css for use. The first parameter is a name for the stylesheet, the second is the URL. Here we use an online version of the css file.

function add_normalize_CSS() {

    wp_enqueue_style( 'normalize-styles', "https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css");

}

// Register a new sidebar simply named 'sidebar'

function add_widget_Support() {

    register_sidebar( array(

        'name'       => 'Sidebar 111',

        'id'         => 'sidebar111',

        'before_widget' => '<div>qqqqq',

        'after_widget'  => '</div>',

        'before_title'  => '<h2>fffffff',

        'after_title'   => '</h2>',

    ) );

    register_sidebar( array(

        'name'       => 'Sidebar 222',

        'id'         => 'sidebar222',

        'before_widget' => '<div>',

        'after_widget'  => '</div>',

        'before_title'  => '<h2>',

        'after_title'   => '</h2>',

    ) );

    register_sidebar( array(

        'name'       => 'Sidebar footer',

        'id'         => 'sidebar_footer',

        'before_widget' => '<div>sidebar footer',

        'after_widget'  => '</div>',

        'before_title'  => '<h2>',

        'after_title'   => '</h2>',

    ) );

}

// Hook the widget initiation and run our function

add_action( 'widgets_init', 'add_Widget_Support' );

// Register a new navigation menu

function add_Main_Nav() {

    register_nav_menu('header-menu',__( 'Header Menu' ));

}

// Hook to the init action hook, run our navigation menu function

add_action( 'init', 'add_Main_Nav' );