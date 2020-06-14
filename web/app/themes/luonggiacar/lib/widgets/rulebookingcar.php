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
            ->regField( 'rule_type', 'Loại thủ tục', '' )
            ->regRepField( 'rule_title', 'Tên thủ tục', '' )
            ->regRepField( 'rule_desc', 'Mô tả', '', 'textarea' );
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
        $total = $this->getTotalGroups( $inst );
        $rule_type = $this->getVal( $inst, 'rule_type' );
        ?>
        <section class="ftco-section services-section">
            <div class="container">
                <div class="row" style="padding-bottom: 20px;">
                    <span style="background-color: rgb(245, 227, 8); padding: 1em; border-top-right-radius: 40px; border-bottom-right-radius: 40px; color: #000; text-transform: uppercase; font-size: 25px"><?php echo $rule_type; ?></span>
                </div>
                <?php for ($i = 0; $i < $total; $i ++) : ?>
                    <div class="row">
                        <div class="col-md-12">
                            <span style="font-weight: 700;"><?php $this->val($inst, 'rule_title', $i); ?></span>
                        </div>
                        <div class="col-md-12">
                            <p><?php $this->val($inst, 'rule_desc', $i); ?></p>
                        </div>
                    </div>
                <?php endfor; ?>
            </div>
        </section>
<?php
    }
}

function create_rule_booking_widget() {
    register_widget('LuongWP_Rule_Booking_Car_Widget');
}
add_action( 'widgets_init', 'create_rule_booking_widget' );