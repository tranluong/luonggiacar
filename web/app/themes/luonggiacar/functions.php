<?php

require_once 'lib/defines.php';
require_once 'lib/ajax.php';

require_once 'lib/settings.php';
require_once 'lib/products.php';

require_once 'core/Utils.php';
require_once 'core/SettingFields.php';
require_once 'core/SingularWidget.php';
require_once 'core/RepeaterWidget.php';

require_once 'lib/widgets/service.php';
require_once 'lib/widgets/about.php';
require_once 'lib/widgets/howitwork.php';
require_once 'lib/widgets/happyclient.php';
require_once 'lib/widgets/price.php';
require_once 'lib/widgets/rulebookingcar.php';
require_once 'lib/widgets/contact.php';
require_once 'lib/widgets/cars.php';

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

// change title name in column to new name and sort column position
add_filter('manage_car_posts_columns', 'my_columns_head');
function my_columns_head($posts_columns) {
    $posts_columns['title'] = 'Tên xe';
//    $posts_columns['date'] = 'Ngày tạo';
//    var_dump($posts_columns);
//    $crunchify_columns = array();
//    $categories = 'date';
//    $title = 'title';
//    foreach($posts_columns as $key => $value) {
//        if ($key==$title){
//            $crunchify_columns[$categories] = $categories;
//        }
//        $crunchify_columns[$key] = $value;
//    }
//    return $crunchify_columns;
    return $posts_columns;
}

//Add rows data  column namewith by post_id
//add_action( 'manage_car_posts_custom_column' , 'my_custom_column', 10, 2 );
//function my_custom_column($column, $post_id ){
//    var_dump(get_post_custom( $post_id ));
//    $cars = get_post_custom( $post_id ); // or get_post_meta($post_id, 'wpcf-car_capacity', true);
//    $capacity = $cars[0]['wpcf-car_name'];
//    switch ( $column ) {
//        case 'test':
//            echo $capacity;
//            break;
//    }
//}

