<?php

use LuongWP\Common\SingularWidget;

class LuongWP_About_Widget extends SingularWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_about_widget',LUONGWP_ABBR. ' - about', [
            'description'   => 'Về chúng tôi',
            'panels_icon'   => 'dashicons dashicons-editor-help icon-color',
            'panels_groups' => [ LUONGWP_WIDGET_GROUP ]
        ], [], 3 );

        $this
            ->regField( 'image_about', 'Hình giới thiệu', '', 'image' )
            ->regField( 'title_color', 'Tiêu đề có màu', '' )
            ->regField( 'title', 'Tiêu đề', '' )
            ->regField( 'desc', 'Mô tả', '', 'textarea' );
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
//        $title = apply_filters( 'widget_title', $instance['title'] );
//        $title_color = apply_filters( 'widget_title', $instance['title_color'] );
        $image_about = $this->getVal( $inst, 'image_about' );
        $title_color = $this->getVal( $inst, 'title_color' );
        $title = $this->getVal( $inst, 'title' );
        $desc = $this->getVal( $inst, 'desc' );
        ?>
        <section class="ftco-section services-section" id="about">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url(<?php echo $image_about; ?>);">
                    </div>
                    <div class="col-md-6 wrap-about py-md-5 ftco-animate">
                        <div class="heading-section mb-5 pl-md-5">
                            <span class="subheading"><?php echo $title_color; ?></span>
                            <h2 class="mb-4"><?php echo $title; ?></h2>
                            <p><?php echo $desc; ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php
    }
}

function create_about_widget() {
    register_widget('LuongWP_About_Widget');
}
add_action( 'widgets_init', 'create_about_widget' );