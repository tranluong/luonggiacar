<?php

use LuongWP\Common\SingularWidget;

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
                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-1.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Audi</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-2.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Ford</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-3.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Cheverolet</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-4.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Mercedes</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-5.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Audi</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-6.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Ford</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-7.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Cheverolet</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="car-wrap ftco-animate">
                            <div class="img d-flex align-items-end" style="background-image: url(/app/assets/images/car-8.jpg);">
                                <div class="price-wrap d-flex">
                                    <span class="rate">$25</span>
                                    <p class="from-day">
                                        <span>From</span>
                                        <span>/Day</span>
                                    </p>
                                </div>
                            </div>
                            <div class="text p-4 text-center">
                                <h2 class="mb-0"><a href="#">Mercedes Grand Sedan</a></h2>
                                <span>Mercedes</span>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Book now</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Details</a></p>
                            </div>
                        </div>
                    </div>
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