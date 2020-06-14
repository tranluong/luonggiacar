<!DOCTYPE html>
<html lang="en">
<head>
    <title>Autoroad - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/animate.css">

    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?php echo LUONGWP_ASSETS; ?>css/magnific-popup.css">

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
        <a class="navbar-brand" href="/">HUNA-<span>LUONGGIACAR</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="/" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="/#about" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item"><a href="thu-tuc-thue-xe/" class="nav-link">Thủ tục thuê xe</a></li>
                <li class="nav-item"><a href="bang-gia/" class="nav-link">Bảng giá</a></li>
<!--                <li class="nav-item"><a href="#" class="nav-link">Danh sách xe</a></li>-->
<!--                <li class="nav-item"><a href="#" class="nav-link">Blog</a></li>-->
                <li class="nav-item"><a href="#" class="nav-link">Liên hệ</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->
<!--<div class="container">-->
<!--    <div class="row">-->
<!--        <div class="col-lg-6"></div>-->
<!--        <div class="col-lg-6">sssssssssss</div>-->
<!--    </div>-->
<!--</div>-->
<?php if (is_front_page()) : ?>
<div class="hero-wrap" style="background-image: url('app/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center">
            <div class="col-lg-6 col-md-6 ftco-animate d-flex align-items-end">
                <div class="text">
                    <h1 class="mb-4">Wow !!! <span>Xe đẹp quá</span> <span>thuê ngay thôi</span></h1>
                    <p style="font-size: 18px;">Bạn bị stress công việc, bạn là người thích du lịch với gia đình bạn bè, hú hí với người yêu. Hãy đến với Huna-Luonggiacar, nhận xe và xỏa thôi nào.</p>
<!--                    <a href="https://vimeo.com/45830194" class="icon-wrap popup-vimeo d-flex align-items-center mt-4">-->
<!--                        <div class="icon d-flex align-items-center justify-content-center">-->
<!--                            <span class="ion-ios-play"></span>-->
<!--                        </div>-->
<!--                        <div class="heading-title ml-5">-->
<!--                            <span>Easy steps for renting a car</span>-->
<!--                        </div>-->
<!--                    </a>-->
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
                            <a href="tel:0933324679" style="animation-duration: 1s;" class="btn btn-danger py-3 px-4 animated swing infinite">0933324679</a>
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

<!--<section class="ftco-section ftco-no-pb ftco-no-pt">-->
<!--    <div class="container">-->
<!--        <div class="row">-->
<!--            <div class="col-md-12">-->
<!--                <div class="search-wrap-1 ftco-animate mb-5">-->
<!--                    <form action="#" class="search-property-1">-->
<!--                        <div class="row">-->
<!--                            <div class="col-lg align-items-end">-->
<!--                                <div class="form-group">-->
<!--                                    <label for="#">Select Model</label>-->
<!--                                    <div class="form-field">-->
<!--                                        <div class="select-wrap">-->
<!--                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
<!--                                            <select name="" id="" class="form-control">-->
<!--                                                <option value="">Select Model</option>-->
<!--                                                <option value="">Model 1</option>-->
<!--                                                <option value="">Model 2</option>-->
<!--                                                <option value="">Model 3</option>-->
<!--                                                <option value="">Model 4</option>-->
<!--                                                <option value="">Model 5</option>-->
<!--                                                <option value="">Model 6</option>-->
<!--                                                <option value="">Model 7</option>-->
<!--                                                <option value="">Model 8</option>-->
<!--                                                <option value="">Model 9</option>-->
<!--                                                <option value="">Model 10</option>-->
<!--                                            </select>-->
<!--                                        </div>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div class="col-lg align-items-end">-->
<!--                                <div class="form-group">-->
<!--                                    <label for="#">Select Brand</label>-->
<!--                                    <div class="form-field">-->
<!--                                        <div class="select-wrap">-->
<!--                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
<!--                                            <select name="" id="" class="form-control">-->
<!--                                                <option value="">Select Brand</option>-->
<!--                                                <option value="">Brand 1</option>-->
<!--                                                <option value="">Brand 2</option>-->
<!--                                                <option value="">Brand 3</option>-->
<!--                                                <option value="">Brand 4</option>-->
<!--                                                <option value="">Brand 5</option>-->
<!--                                                <option value="">Brand 6</option>-->
<!--                                                <option value="">Brand 7</option>-->
<!--                                                <option value="">Brand 8</option>-->
<!--                                                <option value="">Brand 9</option>-->
<!--                                                <option value="">Brand 10</option>-->
<!--                                            </select>-->
<!--                                        </div>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div class="col-lg align-items-end">-->
<!--                                <div class="form-group">-->
<!--                                    <label for="#">Year Model</label>-->
<!--                                    <div class="form-field">-->
<!--                                        <div class="select-wrap">-->
<!--                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
<!--                                            <select name="" id="" class="form-control">-->
<!--                                                <option value="">Year Model</option>-->
<!--                                                <option value="">2019</option>-->
<!--                                                <option value="">2018</option>-->
<!--                                                <option value="">2017</option>-->
<!--                                                <option value="">2016</option>-->
<!--                                                <option value="">2015</option>-->
<!--                                                <option value="">2014</option>-->
<!--                                            </select>-->
<!--                                        </div>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div class="col-lg align-items-end">-->
<!--                                <div class="form-group">-->
<!--                                    <label for="#">Price Limit</label>-->
<!--                                    <div class="form-field">-->
<!--                                        <div class="select-wrap">-->
<!--                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
<!--                                            <select name="" id="" class="form-control">-->
<!--                                                <option value="">$1</option>-->
<!--                                                <option value="">$50</option>-->
<!--                                                <option value="">$100</option>-->
<!--                                                <option value="">$200</option>-->
<!--                                                <option value="">$300</option>-->
<!--                                                <option value="">$400</option>-->
<!--                                                <option value="">$500</option>-->
<!--                                                <option value="">$600</option>-->
<!--                                                <option value="">$700</option>-->
<!--                                                <option value="">$800</option>-->
<!--                                                <option value="">$900</option>-->
<!--                                                <option value="">$1000</option>-->
<!--                                            </select>-->
<!--                                        </div>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div class="col-lg align-self-end">-->
<!--                                <div class="form-group">-->
<!--                                    <div class="form-field">-->
<!--                                        <input type="submit" value="Search" class="form-control btn btn-primary">-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </form>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</section>-->