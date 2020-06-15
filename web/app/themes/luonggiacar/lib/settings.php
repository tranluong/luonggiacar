<?php

function luongwp_settings_menu_item() {
    add_menu_page(  'LGC Settings',  'LGC Settings', 'manage_options', strtolower( LUONGWP_ABBR ) . '-settings', __NAMESPACE__ . '\\theme_settings_page', 'dashicons-forms', '3' );
}

add_action( 'admin_menu', __NAMESPACE__ . '\\luongwp_settings_menu_item' );

function display_theme_panel_fields() {
    //Group Company
    add_settings_section( 'company-section', 'Thông tin công ty', null, 'theme-options' );
    add_settings_field( 'company_name_web', 'Tên công ty', 'LuongWP\Common\SettingFields::displayInput', 'theme-options', 'company-section', [
        'name' => 'Tên công ty',
        'note' => 'Can use HTML code here.'
    ] );

    add_settings_field( 'company_address_web', 'Địa chỉ', 'LuongWP\Common\SettingFields::displayInput', 'theme-options', 'company-section', [
        'name' => 'Địa chỉ',
        'type' => 'textarea',
        'rows'  => '5',
        'note' => 'Can use HTML code here.'
    ] );

    add_settings_field( 'company_phone_web', 'Số điện thoại', 'LuongWP\Common\SettingFields::displayInput', 'theme-options', 'company-section', [
        'name' => 'Số điện thoại',
        'note' => 'Can use HTML code here.'
    ] );

    add_settings_field( 'company_email_web', 'Email', 'LuongWP\Common\SettingFields::displayInput', 'theme-options', 'company-section', [
        'name' => 'Email',
        'note' => 'Can use HTML code here.'
    ] );

    register_setting( 'luongwp-panel-form', 'company_name_web' );
    register_setting( 'luongwp-panel-form', 'company_address_web' );
    register_setting( 'luongwp-panel-form', 'company_phone_web' );
    register_setting( 'luongwp-panel-form', 'company_email_web' );

    // General
    add_settings_section( 'general-section', 'Cài đặt chung', null, 'theme-options' );
}

add_action( 'admin_init', __NAMESPACE__ . '\\display_theme_panel_fields' );

function theme_settings_page() {
    ?>
    <div class="wrap">
        <h1>LGC Settings</h1>
        <form method="post" action="options.php">
            <?php
            settings_fields( 'luongwp-panel-form' );

            do_settings_sections( 'theme-options' );

            submit_button();
            ?>
        </form>
    <script>
        jQuery(function () {
            var admintabs = [];
            var adminsubtabsdata = window.adminsubtabs || {};
            var adminsubtabs = [];
            var hash = jQuery(location).attr('hash');

            jQuery('#wpbody form h2').each(function (i) {
                var linkid = jQuery(this).text().toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
                admintabs.push('<a id="' + linkid + '" class="nav-tab" href="#' + linkid + '">' + jQuery(this).text() + '</a>');

                jQuery(this)
                    .remove();

                if (adminsubtabsdata[i]) {
                    var _subtabs = [];
                    var _startrow = 0;

                    for (var j in adminsubtabsdata[i]) {
                        _subtabs.push('<a href="#" data-formtableid="' + i + '" data-startrow="' + _startrow + '" data-endrow="' + (_startrow + adminsubtabsdata[i][j].numitems) + '">' + adminsubtabsdata[i][j].tabtext + '</a>');
                        _startrow += adminsubtabsdata[i][j].numitems;
                    }

                    if (_subtabs.length > 0) {
                        adminsubtabs.push('<ul class="adminsubtabs" id="adminsubtabs' + i + '"><li>' + _subtabs.join('</li><li>') + '</li></ul>');
                    }
                }
            });

            jQuery('#wpbody form[action="options.php"]')
                .prepend(adminsubtabs.join(''))
                .prepend('<h2 class="nav-tab-wrapper">' + admintabs.join('') + '</h2>');

            jQuery('.adminsubtabs li a')
                .on('click', function () {
                    var jqthis = jQuery(this);

                    jqthis
                        .parent()
                        .parent()
                        .find('a')
                        .removeClass('subtab-active');

                    jqthis
                        .addClass('subtab-active');

                    jQuery('.form-table:eq(' + jqthis.data('formtableid') + ') tr')
                        .hide()
                        .slice(jqthis.data('startrow'), jqthis.data('endrow'))
                        .show();

                    return false;
                });

            jQuery('.nav-tab-wrapper a')
                .on("click", function () {
                    jQuery('.nav-tab-wrapper a.nav-tab-active')
                        .removeClass("nav-tab-active");

                    jQuery('#wpbody form .tabinfo,#wpbody form .form-table,.adminsubtabs')
                        .hide();

                    var tabindex = jQuery(this)
                        .addClass('nav-tab-active')
                        .index();

                    jQuery('#wpbody form .tabinfo:eq(' + tabindex + '),#wpbody form .form-table:eq(' + tabindex + ')')
                        .show();

                    jQuery('#wpbody #adminsubtabs' + tabindex + ':not(.subtab-activated)')
                        .find('a:first')
                        .trigger('click');

                    jQuery('#wpbody #adminsubtabs' + tabindex)
                        .addClass('subtab-activated')
                        .show();

                    var linkId = jQuery(this).attr('id');
                    jQuery('form').attr('action', 'options.php#' + linkId);

                    if (history.pushState) {
                        history.pushState(null, null, '#' + linkId);
                    } else {
                        window.location.hash = '#' + linkId;
                    }

                    return false;
                });

            if (hash) {
                jQuery('.nav-tab-wrapper a' + hash).trigger('click');
            } else {
                jQuery('.nav-tab-wrapper a:first').trigger('click');
            }
        });
        </script>
    </div>
    <?php
}
