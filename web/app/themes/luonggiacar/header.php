<!DOCTYPE html>
<html lang="en">
<head>
    <title>Autoroad - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_STATIC; ?>animate.css/animate.min.css">

    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_STATIC; ?>magnific-popup/dist/magnific-popup.css">

    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/aos.css">

    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/ionicons.min.css">

    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/jquery.timepicker.css">


    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/flaticon.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/icomoon.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/style.css">
<!--    <link rel="stylesheet" href="--><?php //bloginfo('stylesheet_url'); ?><!--">-->
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <?php
        $custom_logo_id = get_theme_mod( 'custom_logo' );
        $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
        if ( has_custom_logo() ):
            echo '<a class="navbar-brand" href="/"><img src="' . esc_url( $logo[0] ) . '" alt="' . get_bloginfo( 'name' ) . '"></a>';
        else:
            echo '<h1>'. get_bloginfo( 'name' ) .'</h1>';
        endif;
        ?>
<!--        <a class="navbar-brand" href="/">HUNA-<span>LUONGGIACAR</span></a>-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="/" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="/#about" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item"><a href="thu-tuc-thue-xe/" class="nav-link">Thủ tục thuê xe</a></li>
                <li class="nav-item"><a href="bang-gia/" class="nav-link">Bảng giá</a></li>
                <li class="nav-item"><a href="lien-he/" class="nav-link">Liên hệ</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->
<?php if (is_front_page()) : ?>
<div class="hero-wrap" style="background-image: url('/app/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center">
            <div class="col-lg-6 col-md-6 ftco-animate d-flex align-items-end">
                <div class="text">
                    <h1 class="mb-4">Wow !!! <span>Xe đẹp quá</span> <span>thuê ngay thôi</span></h1>
                    <p style="font-size: 18px;">Bạn bị stress công việc, bạn là người thích du lịch với gia đình bạn bè, hú hí với người yêu. Hãy đến với Huna-Luonggiacar, nhận xe và xỏa thôi nào.</p>
                </div>
            </div>
            <div class="col-lg-2 col"></div>
            <div class="col-lg-4 col-md-6 mt-0 mt-md-5 d-flex">
                <form action="#" class="request-form ftco-animate">
                    <h2>Bạn muốn đi đâu ?</h2>
                    <div class="form-group">
                        <label for="" class="label">Điểm đón khách</label>
                        <input type="text" class="form-control" placeholder="Chúng tôi đón bạn ở đâu ?">
                    </div>
                    <div class="form-group">
                        <label for="" class="label">Điểm khách đi</label>
                        <input type="text" class="form-control" placeholder="Bạn muốn đến nơi nào ?">
                    </div>
                    <div class="d-flex">
                        <div class="form-group mr-2">
                            <label for="" class="label">Ngày đi</label>
                            <input type="text" class="form-control" id="book_pick_date" placeholder="Ngày đi">
                        </div>
                        <div class="form-group ml-2">
                            <label for="" class="label">Ngày về</label>
                            <input type="text" class="form-control" id="book_off_date" placeholder="Ngày về">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="label">Thời gian nhận xe</label>
                        <input type="text" class="form-control" id="time_pick" placeholder="Thời gian nhận xe">
                    </div>
                    <div class="form-group">
                        <label for="" class="label">Bạn đi xe mấy chỗ ?</label>
                        <select name="capacity">
                            <option>4 chỗ</option>
                            <option>7 chỗ</option>
                        </select>
                    </div>
                    <div class="d-flex">
                        <div class="form-group mr-2">
                            <input type="submit" value="Đặt ngay" class="btn btn-primary py-3 px-4">
                        </div>
                        <div class="form-group mr-2">
                            <a href="tel:<?php echo get_option( 'company_phone_web' ); ?>" style="animation-duration: 1s;" class="btn btn-danger py-3 px-4 animated swing infinite"><?php echo get_option( 'company_phone_web' ); ?></a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php else : ?>
<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('/app/assets/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs"><span class="mr-2"><a href="/">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span> <span><?php the_title(); ?><i class="ion-ios-arrow-forward"></i></span></p>
                <h1 class="mb-3 bread"><?php the_title(); ?></h1>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>