<?php

use LuongWP\Common\RepeaterWidget;

class LuongWP_HowItWork_Widget extends RepeaterWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_howitwork_widget',LUONGWP_ABBR. ' - how it work', [
            'description'   => 'Cách đặt xe trên web',
            'panels_icon'   => 'dashicons dashicons-editor-help icon-color',
            'panels_groups' => [ LUONGWP_WIDGET_GROUP ]
        ], [], 3 );

        $this
            ->regField( 'title1', 'Tiêu đề 1', '' )
            ->regField( 'title2', 'Tiêu đề 2', '' )
            ->regField( 'image_howitwork', 'Hình nền', '', 'image' )
            ->regRepField( 'icon', 'Tên Icon', '' )
            ->regRepField( 'title_howitwork', 'Tiêu đề "How It Work"', '' )
            ->regRepField( 'title_desc', 'Mô tả', '', 'textarea' );
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
        $total = $this->getTotalGroups( $inst );
        $title1 = $this->getVal( $inst, 'title1' );
        $title2 = $this->getVal( $inst, 'title2' );
        $imageBackground = $this->getVal( $inst, 'image_howitwork' );
        ?>
        <section class="ftco-section services-section img" style="background-image: url(<?php echo $imageBackground; ?>);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                        <span class="subheading"><?php echo $title1; ?></span>
                        <h2 class="mb-3"><?php echo $title2; ?></h2>
                    </div>
                </div>
                <div class="row">
                <?php for ( $i = 0; $i < $total; $i ++ ) : ?>
                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services services-2">
                            <div class="media-body py-md-4 text-center">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="<?php $this->val( $inst, 'icon', $i ); ?>"></span></div>
                                <h3><?php $this->val( $inst, 'title_howitwork', $i ); ?></h3>
                                <p><?php $this->val( $inst, 'title_desc', $i ); ?></p>
                            </div>
                        </div>
                    </div>
                <?php endfor; ?>
                </div>
            </div>
        </section>
<?php
    }
}

function create_howitwork_widget() {
    register_widget('LuongWP_HowItWork_Widget');
}
add_action( 'widgets_init', 'create_howitwork_widget' );