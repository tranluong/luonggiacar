<?php
/**
 * Created by PhpStorm.
 * User: luong.tran
 * Date: 22/06/2020
 * Time: 17:30
 */

$car = \LuongWP\Products\get_car_by_type();
//


while ($post->have_posts()) {
    $post->the_post();
    echo the_title();
}
wp_reset_postdata();