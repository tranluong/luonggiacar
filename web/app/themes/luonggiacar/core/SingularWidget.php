<?php

namespace LuongWP\Common;

/**
 * Class Singular_Widget
 * @package MatiWP\Common
 */
abstract class SingularWidget extends \WP_Widget {
	protected $fields = [];

	public function regField( $id, $label, $default = '', $type = 'text', $options = [] ): SingularWidget {
		$this->fields[] = [
			'id'      => $id,
			'label'   => $label,
			'type'    => $type,
			'default' => $default,
			'options' => $options
		];

		return $this;
	}

	public function form( $instance ) {
		echo $this->getHtmlBlock();

		foreach ( $this->fields as $field ) {
			if ( $field['type'] === 'select' ) {
				$this->addField(
					! empty( $instance[ $field['id'] ] ) ? $instance[ $field['id'] ] : '',
					$field['id'],
					$field['label'],
					$field['type'],
					$field['default'],
					$field['options']
				);
			} else {
				$default = $field['default'] ?? '';
				$this->addField(
					! empty( $instance[ $field['id'] ] ) ? $instance[ $field['id'] ] : '',
					$field['id'],
					$field['label'],
					$field['type'],
					empty( $instance ) ? $default : '',
					$field['options']
				);
			}
		}
	}

	protected function addField( $field_value, $field_id, $field_label, $type = 'text', $default = '', $options = [] ) {
		if ( $type === 'text' ) :
			$field_value = ! empty( $field_value ) ? $field_value : ( ! empty( $default ) ? $default : '' );
			?>
            <div class="ls-widget">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <input class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                       name="<?php echo $this->get_field_name( $field_id ); ?>" type="text"
                       value="<?php echo esc_attr( $field_value ); ?>">
            </div>
		<?php
        elseif ( $type === 'label' ) :
			?>
            <div class="ls-widget">
				<?php _e( $field_label ); ?>
            </div>
		<?php
        elseif ( $type === 'image' ) :
			$field_value = ! empty( $field_value ) ? $field_value : ( ! empty( $default ) ? $default : '' ); ?>
            <div class="ls-widget ls-widget-image">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <input class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                       name="<?php echo $this->get_field_name( $field_id ); ?>" type="text"
                       value="<?php echo esc_attr( $field_value ); ?>">
                <img id="<?php echo $this->get_field_id( $field_id ); ?>_img"
                     class="<?php empty( $field_value ) ? 'hide' : '' ?>" src="<?php echo esc_attr( $field_value ); ?>"
                     alt="preview" height="100"/>
                <script type="text/javascript">
                    jQuery("#<?php echo $this->get_field_id( $field_id ); ?>").on('change', function () {
                        jQuery("#<?php echo $this->get_field_id( $field_id ); ?>_img").attr('src', jQuery(this).val());
                    });
                </script>
            </div>
		<?php
        elseif ( $type === 'imagepicker' ) :
			wp_enqueue_media();
			$field_value = ! empty( $field_value ) ? $field_value : ( ! empty( $default ) ? $default : '' ); ?>
            <div class="ls-widget ls-widget-image">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <input type='text' class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                       name="<?php echo $this->get_field_name( $field_id ); ?>"
                       value='<?php echo esc_attr( $field_value ); ?>'>
                <div style="padding-top: 3px;">
                    <input id="<?php echo $this->get_field_id( $field_id ); ?>_upload_btn" type="button" class="button"
                           value="<?php _e( 'Add From Media' ); ?>"/>
                    <img id="<?php echo $this->get_field_id( $field_id ); ?>_img_prev"
                         class="<?php empty( $field_value ) ? 'hide' : '' ?>"
                         src="<?php echo esc_attr( $field_value ); ?>"
                         alt="preview" height="100"/>
                </div>
                <script type="text/javascript">
                    jQuery(document).ready(function ($) {
                        var file_frame,
                            wp_media_post_id = wp.media.model.settings.post.id;

                        jQuery('#<?php echo $this->get_field_id( $field_id ); ?>_upload_btn').on('click', function (event) {
                            event.preventDefault();

                            file_frame = wp.media.frames.file_frame = wp.media({
                                title: 'Select a image to upload',
                                button: {
                                    text: 'Use this image'
                                },
                                multiple: false
                            });

                            file_frame.on('select', function () {
                                var attachment = file_frame.state().get('selection').first().toJSON();
                                $('#<?php echo $this->get_field_id( $field_id ); ?>_img_prev').attr('src', attachment.url).css('width', 'auto');
                                $('#<?php echo $this->get_field_id( $field_id ); ?>').val(attachment.url);

                                wp.media.model.settings.post.id = wp_media_post_id;
                            });

                            file_frame.open();
                        });

                        jQuery("#<?php echo $this->get_field_id( $field_id ); ?>").on('change', function () {
                            jQuery("#<?php echo $this->get_field_id( $field_id ); ?>_img_prev").attr('src', jQuery(this).val());
                        });
                    });
                </script>
            </div>
		<?php
        elseif ( $type === 'checkbox' ) :
			$field_value = ! empty( $field_value ) ? $field_value : ( ! empty( $default ) ? $default : '' );
			?>
            <div class="ls-widget">
                <input class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                       name="<?php echo $this->get_field_name( $field_id ); ?>" type="checkbox"
                       value="<?php echo esc_attr( $field_value ); ?>"
					<?php echo ! empty( $field_value ) ? 'checked' : ''; ?>> <?php _e( $field_label ); ?>
                <script type="text/javascript">
                    jQuery("#<?php echo $this->get_field_id( $field_id ); ?>").on('click', function () {
                        jQuery(this).attr('value', this.checked ? 1 : 0);
                    });
                </script>
            </div>
		<?php
        elseif ( $type === 'textarea' ) :
			$field_value = ! empty( $field_value ) ? $field_value : ( ! empty( $default ) ? $default : '' ); ?>
            <div class="ls-widget ls-widget-image">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <textarea class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                          name="<?php echo $this->get_field_name( $field_id ); ?>"
                          rows="8"><?php echo esc_attr( $field_value ); ?></textarea>
            </div>
		<?php
        elseif ( $type === 'select' ) :
			$field_value = ( empty( $field_value ) && 0 !== $field_value ) ? $default : $field_value; ?>
            <div class="ls-widget ls-widget-image">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <select class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                        name="<?php echo $this->get_field_name( $field_id ); ?>">
					<?php foreach ( $options as $key => $option ) : ?>
                        <option value="<?php echo $key; ?>" <?php echo $field_value == $key ? 'selected' : ''; ?>>
							<?php echo $option; ?>
                        </option>
					<?php endforeach; ?>
                </select>
            </div>
		<?php
        elseif ( $type === 'date' ) :
			$field_value = ( empty( $field_value ) && 0 !== $field_value ) ? $default : $field_value; ?>
            <div class="ls-widget ls-widget-image">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <input class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                       name="<?php echo $this->get_field_name( $field_id ); ?>" type="date"
                       value="<?php echo esc_attr( $field_value ); ?>">
            </div>
		<?php
        elseif ( $type === 'taxonomy' ) :
			$field_value = ( empty( $field_value ) && 0 !== $field_value ) ? $default : $field_value;
			$terms = get_terms( $options['taxonomy'], [ 'hide_empty' => false ] ); ?>
            <div class="ls-widget">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <select class="widefat"
                        id="<?php echo $this->get_field_id( $field_id ); ?>"
                        name="<?php echo $this->get_field_name( $field_id ); ?>"
					<?php echo ! empty( $options['multiple'] ) ? ' multiple size="4"' : ''; ?>>
                    <option>Please Select</option>
					<?php foreach ( $terms as $term ) :
						$value = empty( $options['useid'] ) ? $term->slug : $term->term_id;
						$selected = is_array( $field_value ) ? in_array( $value, $field_value ) : $field_value == $value;
						?>
                        <option value="<?php echo $value; ?>" <?php echo $selected ? 'selected' : ''; ?>>
							<?php echo $term->name; ?>
                        </option>
					<?php endforeach; ?>
                </select>
            </div>
		<?php
        elseif ( $type === 'post_type' ) :
			$field_value = ( empty( $field_value ) && 0 !== $field_value ) ? $default : $field_value;
			$posts = get_posts( [ 'post_type' => $options['post_type'], 'posts_per_page' => - 1 ] ); ?>
            <div class="ls-widget">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
                <select class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                        name="<?php echo $this->get_field_name( $field_id ); ?>">
                    <option>Please select one</option>
					<?php foreach ( $posts as $post ) :
						?>
                        <option value="<?php echo $post->ID; ?>" <?php echo ( $field_value == $post->ID ) ? 'selected' : ''; ?>>
							<?php echo $post->post_title; ?>
                        </option>
					<?php endforeach; ?>
                </select>
            </div>
		<?php
        elseif ( $type === 'post_page' ) :
			$field_value = ( empty( $field_value ) && 0 !== $field_value ) ? $default : $field_value; ?>
            <div class="ls-widget">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
				<?php echo wp_dropdown_pages( [
					'selected'         => $field_value,
					'name'             => $this->get_field_name( $field_id ),
					'id'               => $this->get_field_id( $field_id ),
					'class'            => 'widefat',
					'show_option_none' => 'Please select one'
				] ) ?>
            </div>
		<?php
        elseif ( $type === 'ninjaforms' ) :
			$field_value = ( empty( $field_value ) && 0 !== $field_value ) ? $default : $field_value;
			?>
            <div class="ls-widget">
                <label for="<?php echo $this->get_field_id( $field_id ); ?>"><?php _e( $field_label ); ?></label>
				<?php if ( function_exists( 'Ninja_Forms' ) ) :
					$nf_forms = Ninja_Forms()->form()->get_forms(); ?>
                    <select class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                            name="<?php echo $this->get_field_name( $field_id ); ?>">
                        <option>Please select one</option>
						<?php foreach ( $nf_forms as $form ) :
							$form_id = $form->get_id();
							$form_name = $form->get_setting( 'title' );
							?>
                            <option value="<?php echo $form_id; ?>" <?php echo ( $field_value == $form_id ) ? 'selected' : ''; ?>>
                                #<?php echo $form_id; ?> - <?php echo $form_name; ?>
                            </option>
						<?php endforeach; ?>
                    </select>
				<?php else :
					?>
                    <input class="widefat" id="<?php echo $this->get_field_id( $field_id ); ?>"
                           name="<?php echo $this->get_field_name( $field_id ); ?>" type="text"
                           value="<?php echo esc_attr( $field_value ); ?>">
                    <label for="<?php echo $this->get_field_id( $field_id ); ?>" style="color: red">This widget is using
                        NinjaForms but NinjaForms is not installed or deactivated.</label>
				<?php endif; ?>
            </div>
		<?php
        elseif ( $type === 'hidden' ) :
			$field_value = ! empty( $field_value ) ? $field_value : ( ! empty( $default ) ? $default : '' );
			?>
            <input id="<?php echo $this->get_field_id( $field_id ); ?>"
                   name="<?php echo $this->get_field_name( $field_id ); ?>" type="hidden"
                   value="<?php echo esc_attr( $field_value ); ?>">
		<?php
		endif;
	}

	protected function val( $inst, $field_id, $pos = - 1 ): void {
		echo $this->getVal( $inst, $field_id, $pos );
	}

	protected function getVal( $inst, $field_id, $pos = - 1 ) {
		if ( - 1 === $pos ) {
			$val = ! empty( $inst[ $field_id ] ) ? $inst[ $field_id ] : '';
		} else {
			$field_id .= '_' . $pos;
			$val      = ! empty( $inst[ $field_id ] ) ? $inst[ $field_id ] : '';
		}

		return $val;
	}

	protected function linkVal( $inst, $field_id, $pos = - 1 ): void {
		echo $this->getLinkVal( $inst, $field_id, $pos );
	}

	protected function getLinkVal( $inst, $field_id, $pos = - 1 ) {
		$val = trim( $this->getVal( $inst, $field_id, $pos ) );

		if ( '' !== $val && '#' !== $val && ! preg_match( '/#[a-zA-Z0-9_]*$/', $val ) ) {
			$val = trailingslashit( $val );
		}

		return $val;
	}

	protected function getHtmlBlock() {
		ob_start(); ?>
        <style>
            .ls-widget {
                margin: 10px 0;
            }

            .ls-widget label {
                margin-bottom: 5px;
                display: block;
                margin-left: 1px;
                font-weight: bold;
            }

            .ls-widget img {
                margin-top: 3px;
            }

            .ls-widget textarea {
                width: 100%;
                font-family: "Open Sans", Helvetica, Arial, sans-serif;
            }
        </style>
		<?php

		return ob_get_clean();
	}

	protected function getWidgetId( $inst ) {
		if ( ! empty( $inst['panels_info'] ) && ! empty( $inst['panels_info']['style'] ) && ! empty( $inst['panels_info']['style']['id'] ) ) {
			return $inst['panels_info']['style']['id'];
		}

		return '';
	}

	protected function pId( $inst, $override_id = 0 ) {
		$id = $this->getWidgetId( $inst );
		echo ! empty( $override_id ) ? " id='$override_id'" : ( ! empty( $id ) ? " id='$id'" : '' );
	}

	protected function getWidgetClass( $inst ) {
		if ( ! empty( $inst['panels_info'] ) && ! empty( $inst['panels_info']['style'] ) && ! empty( $inst['panels_info']['style']['class'] ) ) {
			return $inst['panels_info']['style']['class'];
		}

		return '';
	}

	protected function pClass( $inst ) {
		$class = $this->getWidgetClass( $inst );
		echo ! empty( $class ) ? " $class" : '';
	}

	protected function getWidgetStyle( $inst ) {
		if ( ! empty( $inst['panels_info'] ) && ! empty( $inst['panels_info']['style'] ) && ! empty( $inst['panels_info']['style']['widget_css'] ) ) {
			return $inst['panels_info']['style']['widget_css'];
		}

		return '';
	}

	protected function pStyle( $inst, $other_style = '' ): void {
		$style = str_replace( [ "\n", "\r" ], '', $this->getWidgetStyle( $inst ) ) . $other_style;
		echo ! empty( $style ) ? " style='$style'" : '';
	}

	protected function getWidgetAttr( $inst ): array {
		return [
			$this->getWidgetId( $inst ),
			$this->getWidgetClass( $inst ),
			$this->getWidgetStyle( $inst )
		];
	}
}
