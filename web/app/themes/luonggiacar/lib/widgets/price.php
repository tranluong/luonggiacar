<?php

use LuongWP\Common\RepeaterWidget;

class LuongWP_Price_Widget extends RepeaterWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_price_widget',LUONGWP_ABBR. ' - pricing', [
            'description'   => 'Giá thuê xe',
            'panels_icon'   => 'dashicons dashicons-editor-help icon-color',
            'panels_groups' => [ LUONGWP_WIDGET_GROUP ]
        ], [], 10 );

        $this
            ->regRepField( 'img_car', 'Hình ảnh xe', '', 'image' )
            ->regRepField( 'type_car', 'Tên xe', '' )
            ->regRepField( 'type_capacity', 'Số chỗ', '' )
            ->regRepField( 'type_manual', 'Hộp số', '' )
            ->regRepField( 'rating_car', 'Đánh giá', '' )
            ->regRepField( 'price_day', 'Giá thuê ngày', '' )
            ->regRepField( 'price_month', 'Giá thuê tháng', '' );
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
        $total = $this->getTotalGroups( $inst );
        ?>
        <section class="ftco-section ftco-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div class="car-list">
                            <table class="table">
                                <thead class="thead-primary">
                                <tr class="text-center">
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                    <th class="bg-primary heading">Thuê ngày</th>
                                    <th class="bg-black heading">Thuê tháng</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php for($i = 0; $i < $total; $i ++) : ?>
                                <tr class="">
                                    <td class="car-image"><div class="img" style="background-image:url(<?php $this->val($inst, 'img_car', $i); ?>);"></div></td>
                                    <td class="product-name">
                                        <h3><?php $this->val($inst, 'type_car', $i); ?></h3>
                                        <p class="mb-0 capacity">
                                            <span>Số chỗ:</span>
                                            <span style="color: #000;"><?php $this->val($inst, 'type_capacity', $i); ?></span>
                                        </p>
                                        <p class="mb-0 type-sdt">
                                            <span style="color: #000;"><?php $this->val($inst, 'type_manual', $i); ?></span
                                        </p>
                                        <p class="mb-0 rated">
                                            <span>Đánh giá:</span>
                                            <span class="ion-ios-star"></span>
                                            <span class="ion-ios-star"></span>
                                            <span class="ion-ios-star"></span>
                                            <span class="ion-ios-star"></span>
                                            <span class="ion-ios-star"></span>
                                        </p>
                                    </td>

                                    <td class="price">
<!--                                        <p class="btn-custom"><a href="#">Rent a car</a></p>-->
                                        <p class="btn-custom"><a href="tel:0933324679">Gọi ngay</a></p>
                                        <div class="price-rate">
                                            <h3>
                                                <span class="num"><?php $this->val($inst, 'price_day', $i); ?></span>
                                                <span class="per">/ngày</span>
                                            </h3>
<!--                                            <span class="subheading">$3/hour fuel surcharges</span>-->
                                        </div>
                                    </td>

                                    <td class="price">
<!--                                        <p class="btn-custom"><a href="#">Rent a car</a></p>-->
                                        <p class="btn-custom"><a href="tel:0933324679">Gọi ngay</a></p>
                                        <div class="price-rate">
                                            <h3>
                                                <span class="num"><?php $this->val($inst, 'price_month', $i); ?></span>
<!--                                                <span class="per">/ngày</span>-->
                                            </h3>
<!--                                            <span class="subheading">$3/hour fuel surcharges</span>-->
                                        </div>
                                    </td>
                                </tr><!-- END TR-->
                                <?php endfor; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php
    }
}

function create_price_widget() {
    register_widget('LuongWP_Price_Widget');
}
add_action( 'widgets_init', 'create_price_widget' );