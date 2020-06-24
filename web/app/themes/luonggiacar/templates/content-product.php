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
                    <div class="img" style="background-image: url(<?php echo $car['car_image']; ?>);"></div>
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
                <span class="subheading">Choose Car</span>
                <h2 class="mb-2">Related Cars</h2>
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