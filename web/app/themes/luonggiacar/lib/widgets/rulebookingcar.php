<?php

use LuongWP\Common\RepeaterWidget;

class LuongWP_Rule_Booking_Car_Widget extends RepeaterWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_service_widget',LUONGWP_ABBR. ' - car booking rule', [
            'description'   => 'Dịch vụ của chúng tôi',
            'panels_icon'   => 'dashicons dashicons-editor-help icon-color',
            'panels_groups' => [ LUONGWP_WIDGET_GROUP ]
        ], [], 3 );

        $this
            ->regField( 'title_color', 'Tiêu đề có màu', '' )
            ->regField( 'title', 'Tiêu đề', '' )
            ->regRepField( 'icon', 'Tên Icon', '' )
            ->regRepField( 'title_service', 'Tên dịch vụ', '' )
            ->regRepField( 'title_service_desc', 'Mô tả', '', 'textarea' );
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
        $total = $this->getTotalGroups( $inst );
        ?>
        <section class="ftco-section services-section">
            <div class="container">
                <div class="row" style="padding-bottom: 20px;">
                    <span style="background-color: rgb(245, 227, 8); padding: 1em; border-top-right-radius: 40px; border-bottom-right-radius: 40px; color: #000; text-transform: uppercase; font-size: 25px">Thủ tục thuê xe tại Huna-Luonggiacar gồm có:</span>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <span style="font-weight: 700;">1. Giấy tờ cần xuất trình</span>
                    </div>
                    <div class="col-md-12" style="padding: 25px;">
                            <p>- CMND hoặc Passport & Bằng lái B2 </p>
                            <p>- Sổ hộ khẩu hoặc KT3 </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <span style="font-weight: 700;">2. Tài sản thế chấp</span>
                    </div>
                    <div class="col-md-12" style="padding: 25px;">
                        <p>- CMND hoặc Passport & Bằng lái B2 </p>
                        <p>- Sổ hộ khẩu hoặc KT3 </p>
                    </div>
                </div>
            </div>
        </section>
<?php
    }
}

function create_rule_booking_widget() {
    register_widget('LuongWP_Rule_Booking_Car_Widget');
}
add_action( 'widgets_init', 'create_rule_booking_widget' );