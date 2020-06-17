<?php

use LuongWP\Common\RepeaterWidget;

class LuongWP_Contact_Widget extends RepeaterWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_contact_widget',LUONGWP_ABBR. ' - contact', [
            'description'   => 'Liên hệ',
            'panels_icon'   => 'dashicons dashicons-editor-help icon-color',
            'panels_groups' => [ LUONGWP_WIDGET_GROUP ]
        ]);

        $this
            ->regField( 'contact_title', 'Tiêu đề', '' )
            ->regField( 'contact_map_url', 'Map URL', '' );
    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
        $total = $this->getTotalGroups( $inst );
        $title = $this->getVal( $inst, 'contact_title' );
        $url = $this->getVal( $inst, 'contact_map_url' );
        ?>
        <section class="ftco-section contact-section">
            <div class="container-wrap">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-12">
                            <div class="mapouter">
                                <div class="gmap_canvas">
                                    <iframe width=100% height="100%" id="gmap_canvas" src="<?php if (!empty($url)) : echo $url;endif; ?>" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.org"></a></div>
                                <style>.mapouter{position:relative;text-align:right;height:400px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:400px;width:100%;}</style>
                            </div>
                    </div>
                </div>
                <div class="row block-9 justify-content-center">
                    <div class="col-md-8 mb-md-5">
                        <h3 class="text-center"><?php if (!empty($title)) : echo $title;endif; ?></h3>
                        <form action="" id="contact-form" method="post" class="bg-light p-5 contact-form">
                            <input type="hidden" name="form-id"
                                   value="<?php echo wp_create_nonce( 'luongwp-contact' ) ?>">
                            <input type="hidden" name="action" value="send_message">
                            <div class="form-group">
                                <input type="text" class="form-control" name="contact_name" placeholder="Tên">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="contact_email" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="contact_phone" placeholder="Số điện thoại">
                            </div>
                            <div class="form-group">
                                <textarea name="contact_content" id="" cols="30" rows="7" class="form-control" placeholder="Nội dụng..."></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Gửi" class="btn btn-primary py-3 px-5">
                                <span id="contact-form-result" style="display: none"
                                      class="pt-2 pt-md-0"></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
<?php
    }
}

function create_contact_widget() {
    register_widget('LuongWP_Contact_Widget');
}
add_action( 'widgets_init', 'create_contact_widget' );