<?php

namespace LuongWP\Products;

function luongwp_get_products( $limit = 12 ) {
     return  get_posts( [
        'post_type'   => LUONGWP_PRODUCT_POST_TYPE,
        'post_status' => 'publish',
        'numberposts' => $limit,
        'order'       => 'ASC',
    ] );
}

function luongwp_get_product_by_id( $car_id ) {
    if (empty($car_id)) {
        return [];
    }
    $car_name = get_post_meta($car_id, LUONGWP_PRODUCT_CAR_NAME, true);
    $car_image = get_post_meta($car_id, LUONGWP_PRODUCT_CAR_IMAGE, true);
    $car_capacity = get_post_meta($car_id, LUONGWP_PRODUCT_CAR_CAPACITY, true);
    $car_transmis = get_post_meta($car_id, LUONGWP_PRODUCT_CAR_TRANSMISS, true);
    $car_price = get_post_meta($car_id, LUONGWP_PRODUCT_CAR_PRICE, true);

    return [
        'car_name' => $car_name,
        'car_image' => $car_image,
        'car_capacity' => $car_capacity,
        'car_transmis' => $car_transmis,
        'car_price' => $car_price
    ];
}



function get_car_by_type() {
    if(!is_tax())
        return [];

    $term_id = get_queried_object_id();
    $param_query = [
        'post_type'      => LUONGWP_PRODUCT_POST_TYPE,
        'post_status'    => 'publish',
        'posts_per_page' => 8,
        'tax_query'      => [
            'taxonomy' => 'car-type',
            'field' => 'term_id',
            'terms' => $term_id
        ]
    ];

    return new \WP_Query($param_query);
}