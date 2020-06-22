<?php
$car = \LuongWP\Products\luongwp_get_product_by_id($car_id);
if (!empty($car)) :
?>

<div class="col-md-3">
    <div class="car-wrap ftco-animate">
        <div class="img d-flex align-items-end" style="background-image: url(<?php echo $car['car_image']; ?>);">
            <div class="price-wrap d-flex">
                <span class="rate"><?php echo $car['car_price']; ?></span>
                <p class="from-day">
                    <span>Ngày</span>
<!--                    <span>/Ngày</span>-->
                </p>
            </div>
        </div>
        <div class="text p-4 text-center">
            <h2 class="mb-0"><a href="#"></a><?php echo $car['car_name']; ?></h2>
            <span>KIA</span>
            <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-black btn-outline-black mr-1">Đặt ngay</a> <a href="#" class="btn btn-black btn-outline-black ml-1">Chi tiết</a></p>
        </div>
    </div>
</div>
<?php endif; ?>