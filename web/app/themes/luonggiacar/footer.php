<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Huna-Luonggiacar</h2>
                    <p>Luôn luôn làm mới dịch vụ, không ngừng nâng cao chất lượng và cung cách phục vụ.</p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-5">
                    <h2 class="ftco-heading-2">Thông tin</h2>
                    <ul class="list-unstyled">
                        <li><a href="/#about" class="py-2 d-block">Giới thiệu</a></li>
                        <li><a href="/#service" class="py-2 d-block">Dịch vụ</a></li>
                        <li><a href="thu-tuc-thue-xe/" class="py-2 d-block">Thủ tục thuê xe</a></li>
                        <li><a href="bang-gia/" class="py-2 d-block">Bảng giá</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Dịch vụ khách hàng</h2>
                    <ul class="list-unstyled">
                        <li class="service-info"><span class="text">Xe hoa</span></li>
                        <li class="service-info"><span class="text">Đưa rước sân bay</span></li>
                        <li class="service-info"><span class="text">Giao xe tận nơi</span></li>
                        <li class="service-info"><span class="text">Không phụ phí rửa xe</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Liên hệ</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li class="service-info"><span class="icon icon-map-marker"></span><span class="text"><?php echo get_option('company_address_web') ?></span></li>
                            <li class="service-info"><a href="tel:<?php echo get_option( 'company_phone_web' ); ?>"><span class="icon icon-phone"></span><span class="text"><?php echo get_option( 'company_phone_web' ); ?></span></a></li>
                            <li class="service-info"><a href="mailto:<?php echo get_option( 'company_email_web' ); ?>"></a><span class="icon icon-envelope"></span><span class="text"><?php echo get_option( 'company_email_web' ); ?></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">

                <p style="color: #fff;"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    &copy;<script>document.write(new Date().getFullYear());</script> Bản quyền thuộc về <strong>Huna-Luonggiacar</strong>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="<?php echo LUONGWP_STATIC; ?>jquery/dist/jquery.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/jquery-migrate-3.0.1.min.js"></script>
<script src="<?php echo LUONGWP_STATIC; ?>popper.js/dist/popper.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/bootstrap.min.js"></script>
<script src="<?php echo LUONGWP_STATIC; ?>jquery.easing/jquery.easing.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/jquery.waypoints.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/jquery.stellar.min.js"></script>
<script src="<?php echo LUONGWP_STATIC; ?>owl.carousel/dist/owl.carousel.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/jquery.magnific-popup.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/aos.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/jquery.animateNumber.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/bootstrap-datepicker.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/jquery.timepicker.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/google-map.js"></script>
<script src="<?php echo LUONGWP_STATIC; ?>jquery-validation/dist/jquery.validate.min.js"></script>
<script src="<?php echo LUONGWP_ASSETS; ?>js/main.js"></script>
<script>
    $(document).ready(function(){
        //Active menu when reload
        var fullpath = window.location.pathname; // location.pathname to get link and active when reload page
        var filename = fullpath.replace('/', '');
        // if it is not home page
        if (filename != '') {
            $('ul li').removeClass("active");
            var currentLink=$('a[href="' + filename + '"]');
            currentLink.parent().addClass("active");
        }

        // Active menu not reload page
        var currentLinkOnFooter = '';
        $('ul li').click(function(){
            $('ul li').removeClass("active");
            $(this).addClass("active");
//            // If click menu on footer, it will find and active menu on TOP

            if ($(this).find('a').attr('href') == '/#about' ) {
                currentLinkOnFooter = $('a[href="/#about"]');
                currentLinkOnFooter.parent().addClass("active");
            }
            if ($(this).find('a').attr('href') == '/#service') {
                currentLinkOnFooter = $('a[href="/"]');
                currentLinkOnFooter.parent().addClass("active");
            }
        });

        // Scroll to position when reloading page
        scrollToPosition = window.location.hash; // location.hash to get link when using #id to scroll without reload page
        if (scrollToPosition != '') {
            $('ul li').removeClass("active");
            currentLinkOnFooter = $('a[href="/'+scrollToPosition+'"]');
            currentLinkOnFooter.parent().addClass("active");
            $('html, body').animate({
                scrollTop: $(scrollToPosition).offset().top
            }, 1000);
        }
    });
</script>

</body>
</html>