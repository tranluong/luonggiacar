<?php

use LuongWP\Common\SingularWidget;
use function LuongWP\Products\luongwp_get_products;

class LuongWP_Cars_Widget extends SingularWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_cars_widget',LUONGWP_ABBR. ' - cars', [
            'description'   => 'Tất cả xe',
            'panels_icon'   => 'dashicons dashicons-editor-help icon-color',
            'panels_groups' => [ LUONGWP_WIDGET_GROUP ]
        ], [], 3 );

        $this
            ->regField( 'title_color', 'Tiêu đề có màu', '' )
            ->regField( 'title', 'Tiêu đề', '' )
            ->regField('limit', 'Hiển thị bao nhiêu sản phẩm');
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
        $title_color = $this->getVal( $inst, 'title_color' );
        $title = $this->getVal( $inst, 'title' );
        $items = $this->getVal( $inst, 'limit' );
        $limit = !empty($items) ? (int)$items : '-1';
        ?>
        <section class="ftco-section">
            <div class="container-fluid px-4">
                <div class="row justify-content-center">
                    <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                        <span class="subheading"><?php echo $title_color; ?></span>
                        <h2 class="mb-2"><?php echo $title; ?></h2>
                    </div>
                </div>
                <div class="row">
                    <?php $cars = luongwp_get_products($limit); ?>
                    <?php if (!empty($cars) ): ?>
                        <?php foreach ($cars as $car) : $car_id = $car->ID; ?>
                            <?php include( locate_template( 'templates/partials/product-all-car.php' ) ); ?>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </div>
            </div>
        </section>
        <?php
    }
}

function create_cars_widget() {
    register_widget('LuongWP_Cars_Widget');
}
add_action( 'widgets_init', 'create_cars_widget' );