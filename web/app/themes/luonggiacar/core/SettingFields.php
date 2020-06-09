<?php

namespace LuongWP\Common;

/**
 * Class SettingFields
 * @package MatiWP\Common
 */
class SettingFields {
	public static function displayInput( $args ): void {
		$type  = $args['type'] ?? '';
		$name  = $args['name'];
		$value = get_option( $name );
		$rows  = isset( $args['rows'] ) ? (int) $args['rows'] : 3;

		switch ( $type ) {
			case 'textarea':
				?>
                <textarea name="<?php echo $name; ?>" id="<?php echo $name; ?>"
                          class="large-text code" rows="<?php echo $rows; ?>"><?php echo $value; ?></textarea>
				<?php

				break;
			case 'checkbox':
				?>
                <input type="checkbox" name="<?php echo $name; ?>" id="<?php echo $name; ?>"
                       value="1" <?php checked( 1, $value, true ); ?>>
				<?php

				break;
			case 'colorpicker':
				?>
                <input type="text" name="<?php echo $name; ?>" id="<?php echo $name; ?>"
                       value="<?php echo $value; ?>" class="sf-color-field"/>
                <script>
                    jQuery(function () {
                        jQuery('.sf-color-field').wpColorPicker();
                    });
                </script>
				<?php

				break;
			default:
				?>
                <input type="text" name="<?php echo $name; ?>" id="<?php echo $name; ?>"
                       value="<?php echo $value; ?>" class="regular-text">
			<?php
		}

		self::displayInputHelpNote( $args );
	}

	private static function displayInputHelpNote( $args ): void {
		if ( ! empty( $args['note'] ) ) {
			$width = ! empty( $args['width'] ) && $args['width'] === 'half' ? 'display: inline-block; ' : '';
			?>
            <div style="padding-top: 3px; <?php echo $width; ?>color: #666; font-style: italic"><?php echo $args['note'] ?></div>
			<?php
		}
	}
}
