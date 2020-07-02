<?php
$post_id = get_the_ID();
$car = LuongWP\Products\luongwp_get_product_by_id($post_id);
if (!empty($car)) :

?>
<section class="ftco-section ftco-car-details">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="car-details">
                    <div class="img">
                        <?php foreach ($car['car_image'] as $image_url): ?>
                        <a href="<?php echo $image_url; ?>">
                            <img class="img-popup" src="<?php echo $image_url ?>">
                        </a>
                        <?php endforeach; ?>
                    </div>

                    <div class="text text-center">
                        <span class="subheading"><?php echo $car['car_type']; ?></span>
                        <h2><?php echo $car['car_name']; ?></h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services">
                    <div class="media-body py-md-4">
                        <div class="d-flex mb-3 align-items-center">
                            <div class="icon"><span class="flaticon-dashboard"></span></div>
                            <div class="text">
                                <h3 class="heading mb-0 pl-3">
                                    Đời
                                    <span><?php echo $car['car_year']; ?></span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services">
                    <div class="media-body py-md-4">
                        <div class="d-flex mb-3 align-items-center">
                            <div class="icon"><span class="flaticon-car-machine"></span></div>
                            <div class="text">
                                <h3 class="heading mb-0 pl-3">
                                    Hộp số
                                    <span><?php echo $car['car_transmis']; ?></span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services">
                    <div class="media-body py-md-4">
                        <div class="d-flex mb-3 align-items-center">
                            <div class="icon"><span class="flaticon-car-seat"></span></div>
                            <div class="text">
                                <h3 class="heading mb-0 pl-3">
                                    Số chỗ
                                    <span><?php echo $car['car_capacity']; ?></span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services">
                    <div class="media-body py-md-4">
                        <div class="d-flex mb-3 align-items-center">
                            <div class="icon"><span class="flaticon-backpack"></span></div>
                            <div class="text">
                                <h3 class="heading mb-0 pl-3">
                                    Hành lý
                                    <span>4 Bags</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services">
                    <div class="media-body py-md-4">
                        <div class="d-flex mb-3 align-items-center">
                            <div class="icon"><span class="flaticon-diesel"></span></div>
                            <div class="text">
                                <h3 class="heading mb-0 pl-3">
                                    Nhiên liệu
                                    <span><?php echo $car['car_fuel']; ?></span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>

<section class="ftco-section ftco-no-pt">
    <div class="container-fluid px-4">
        <div class="row justify-content-center">
            <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                <span class="subheading">Xe</span>
                <h2 class="mb-2">Chọn xe của bạn</h2>
            </div>
        </div>
        <div class="row">
            <?php $cars = LUONGWP\Products\luongwp_get_car_related($post_id, 12); ?>
            <?php foreach ($cars as $car) : $car_id = $car->ID; ?>
                <?php include (locate_template( 'templates/partials/product-all-car.php' ));?>
            <?php endforeach; ?>
        </div>
    </div>
</section>