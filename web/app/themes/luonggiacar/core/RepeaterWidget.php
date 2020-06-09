<?php

namespace LuongWP\Common;

/**
 * Class RepeaterWidget
 * @package MatiWP\Common
 */
abstract class RepeaterWidget extends SingularWidget {
	protected $repeater_fields = [];

	public function __construct( $id_base, $name, $widget_options = [], $control_options = [], $total_repeat_fields = 1 ) {
		parent::__construct( $id_base, $name, $widget_options, $control_options );

		$this->regField( 'repeater_total', 'Number of groups of data', $total_repeat_fields );
	}

	public function regRepField( $id, $label, $default = '', $type = 'text' ): RepeaterWidget {
		$this->repeater_fields[] = [
			'id'      => $id,
			'label'   => $label,
			'type'    => $type,
			'default' => $default
		];

		return $this;
	}

	public function form( $inst ) {
		parent::form( $inst );

		$total = $this->getTotalGroups( $inst );
		for ( $i = 0; $i < $total; $i ++ ) {
			echo '<h3>Group #' . ( $i + 1 ) . '</h3>';
			foreach ( $this->repeater_fields as $field ) {
				$field_id    = $field['id'] . '_' . $i;
				$field_value = ! empty( $inst[ $field_id ] ) ? $inst[ $field_id ] : '';
				$default     = $field['default'] ?? '';

				$this->addField( $field_value, $field_id, $field['label'], $field['type'], $default );
			}
		}
	}

	protected function getTotalGroups( $inst ) {
		foreach ( $this->fields as $field ) {
			if ( 'repeater_total' === $field['id'] && isset( $inst[ $field['id'] ] ) ) {
				$total = $inst[ $field['id'] ];

				return ! empty( $total ) ? $total : $field['default'];
			}
		}

		return false;
	}
}
