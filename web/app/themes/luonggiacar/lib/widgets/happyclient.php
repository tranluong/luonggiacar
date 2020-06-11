<?php

use LuongWP\Common\RepeaterWidget;

class LuongWP_HappyClient_Widget extends RepeaterWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_happy_client_widget',LUONGWP_ABBR. ' - happy client', [
            'description'   => 'Cảm nhận của khách hàng',
            'panels_icon'   => 'dashicons dashicons-editor-help icon-color',
            'panels_groups' => [ LUONGWP_WIDGET_GROUP ]
        ], [], 3 );

        $this
            ->regField( 'title_color', 'Tiêu đề có màu', 'Phản hồi' )
            ->regField( 'title', 'Tiêu đề', 'Cảm nhận từ khách hàng' )
            ->regRepField( 'img_person', 'Hình khách hàng', '', 'image' )
            ->regRepField( 'happy_desc', 'Mô tả', '', 'textarea' )
            ->regRepField( 'happy_name', 'Tên khách hàng', '' );
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
        $total = $this->getTotalGroups( $inst );
        $title_color = $this->getVal( $inst, 'title_color' );
        $title = $this->getVal( $inst, 'title' );
        ?>
        <section class="ftco-section testimony-section">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 text-center heading-section ftco-animate">
                        <span class="subheading"><?php echo $title_color; ?></span>
                        <h2 class="mb-3"><?php echo $title; ?></h2>
                    </div>
                </div>
                <div class="row ftco-animate">
                    <div class="col-md-12">
                        <div class="carousel-testimony owl-carousel ftco-owl">
                            <?php for ( $i=0; $i < $total; $i ++) : ?>
                            <div class="item">
                                <div class="testimony-wrap text-center py-4 pb-5">
                                    <div class="user-img mb-4" style="background-image: url(/app/assets/images/person_1.jpg)">
                                    </div>
                                    <div class="text pt-4">
                                        <p class="name">Roger Scott</p>
                                        <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
<!--                                        <span class="position">Marketing Manager</span>-->
                                    </div>
                                </div>
                            </div>
                            <?php endfor;?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php
    }
}

function create_happy_client_widget() {
    register_widget('LuongWP_HappyClient_Widget');
}
add_action( 'widgets_init', 'create_happy_client_widget' );