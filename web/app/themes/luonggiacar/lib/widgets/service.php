<?php
namespace LuongWP\Widgets;

use LuongWP\Common\RepeaterWidget;

class LuongWP_Service_Widget extends RepeaterWidget
{
    // Thong tin widget
    function __construct()
    {
        parent::__construct( 'luongwp_service_widget', 'Dịch vụ của chúng tôi', [
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

//    // Thiet lap truong nhap lieu
//    function form($instance)
//    {
//        //Biến tạo các giá trị mặc định trong form
//        $default = array(
//            'title_color' => 'Dịch vụ',
//            'title' => 'Dịch vụ của chúng tôi'
//        );
//
//        //Gộp các giá trị trong mảng $default vào biến $instance để nó trở thành các giá trị mặc định
//        $instance = wp_parse_args( (array) $instance, $default);
//
//        //Tạo biến riêng cho giá trị mặc định trong mảng $default
//        $title_color = esc_attr( $instance['title_color'] );
//        $title = esc_attr( $instance['title'] );
//
//        //Hiển thị form trong option của widget
//        echo "Title Color: <input class= type=text name=".$this->get_field_name('title_color')." value='".$title_color."' />";
//        echo "Title: <input class= type=text name=".$this->get_field_name('title')." value='".$title."' />";
//    }
//
//    // Luu du lieu tu form
//    function update($new_instance, $old_instance)
//    {
//        $instance = $old_instance;
//        $instance['title'] = strip_tags( $new_instance['title'] );
//        $instance['title_color'] = strip_tags( $new_instance['title_color'] );
//        return $instance;
//    }

    //Hien thi du lieu ra ben ngoai FE
    function widget($args, $inst)
    {
//        $title = apply_filters( 'widget_title', $instance['title'] );
//        $title_color = apply_filters( 'widget_title', $instance['title_color'] );
        $total = $this->getTotalGroups( $inst );
        $title_color = $this->getVal( $inst, 'title_color' );
        $title = $this->getVal( $inst, 'title' );
        ?>
        <section class="ftco-section services-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                        <span class="subheading"><?php echo $title_color; ?></span>
                        <h2 class="mb-2"><?php echo $title; ?></h2>
                    </div>
                </div>
                <div class="row d-flex">

                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services">
                            <div class="media-body py-md-4">
                                <div class="d-flex mb-3 align-items-center">
                                    <div class="icon"><span class="flaticon-placeholder"></span></div>
                                    <h3 class="heading mb-0 pl-3">24/7 Car Support</h3>
                                </div>
                                <p>A small river named Duden flows by their place and supplies it with you</p>
                            </div>
                        </div>
                    </div>
<!--                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">-->
<!--                        <div class="media block-6 services">-->
<!--                            <div class="media-body py-md-4">-->
<!--                                <div class="d-flex mb-3 align-items-center">-->
<!--                                    <div class="icon"><span class="flaticon-placeholder"></span></div>-->
<!--                                    <h3 class="heading mb-0 pl-3">Lots of location</h3>-->
<!--                                </div>-->
<!--                                <p>A small river named Duden flows by their place and supplies it with you</p>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">-->
<!--                        <div class="media block-6 services">-->
<!--                            <div class="media-body py-md-4">-->
<!--                                <div class="d-flex mb-3 align-items-center">-->
<!--                                    <div class="icon"><span class="flaticon-placeholder"></span></div>-->
<!--                                    <h3 class="heading mb-0 pl-3">Reservation</h3>-->
<!--                                </div>-->
<!--                                <p>A small river named Duden flows by their place and supplies it with you</p>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">-->
<!--                        <div class="media block-6 services">-->
<!--                            <div class="media-body py-md-4">-->
<!--                                <div class="d-flex mb-3 align-items-center">-->
<!--                                    <div class="icon"><span class="flaticon-placeholder"></span></div>-->
<!--                                    <h3 class="heading mb-0 pl-3">Rental Cars</h3>-->
<!--                                </div>-->
<!--                                <p>A small river named Duden flows by their place and supplies it with you</p>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
                </div>
            </div>
        </section>
<?php
    }
}

function create_service_widget() {
    register_widget('LuongWP_Service_Widget');
}
add_action( 'widgets_init', 'create_service_widget' );