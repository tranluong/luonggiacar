<?php

namespace LuongWP;

class Utils {
	public static function make_number_call( $num, $code = '+84' ): string {
		return $code . str_replace( '.', '', ltrim( $num, '0' ) );
	}

	public static function format_number( $number, $point = '.' ) {
		if ( empty( $number ) ) {
			return 0;
		}

		return number_format( $number, 0, ',', $point );
	}

	public static function menu_items( $parent_id, $nav_menu_items, $depth = true ): array {
		$nav_menu_item_list = [];
		foreach ( (array) $nav_menu_items as $nav_menu_item ) {
			if ( $nav_menu_item->menu_item_parent == $parent_id ) {
				$nav_menu_item_list[] = $nav_menu_item;
				if ( $depth && $children = self::menu_items( $nav_menu_item->ID, $nav_menu_items ) ) {
					$nav_menu_item_list = array_merge( $nav_menu_item_list, $children );
				}
			}
		}

		return $nav_menu_item_list;
	}

	public static function matiwp_pagination( $pages = '', $range = 2 ) {
		$show_items = ( $range * 2 ) + 1;

		global $paged;
		if ( empty( $paged ) ) {
			$paged = 1;
		}

		if ( $pages === '' ) {
			global $wp_query;
			$pages = $wp_query->max_num_pages;
			if ( ! $pages ) {
				$pages = 1;
			}
		}

		if ( 1 !== $pages ) {
			echo "<nav aria-label=\"pagination-center\"><ul class='pagination justify-content-center'>";
			if ( $paged > 2 && $paged > $range + 1 && $show_items < $pages ) {
				echo "<li class='page-item'><a href='" . get_pagenum_link( 1 ) . "' class='page-link'><i class='md-icon dp16'>chevron_left</i></a></li>";
			}
			if ( $paged > 1 && $show_items < $pages ) {
				echo "<li class='page-item'><a href='" . get_pagenum_link( $paged - 1 ) . "' class='page-link'><i class='md-icon dp16'>chevron_left</i></a></li>";
			}

			for ( $i = 1; $i <= $pages; $i ++ ) {
				if ( 1 !== $pages && ( ! ( $i >= $paged + $range + 1 || $i <= $paged - $range - 1 ) || $pages <= $show_items ) ) {
					echo ( $paged == $i ) ? ( "<li class='page-item active'><a href='" . get_pagenum_link( $i ) . "' class='page-link' >" . $i . "</a></li>" )
						: ( "<li class='page-item'><a href='" . get_pagenum_link( $i ) . "' class='page-link disabled' >" . $i . "</a></li>" );
				}
			}

			if ( $paged < $pages && $show_items < $pages ) {
				echo "<li class='page-item'><a href='" . get_pagenum_link( $paged + 1 ) . "' class='page-link'><i class='md-icon dp16'>chevron_right</i></a></li>";
			}
			if ( $paged < $pages - 1 && $paged + $range - 1 < $pages && $show_items < $pages ) {
				echo "<li class='page-item'><a href='" . get_pagenum_link( $pages ) . "' class='page-link'><i class='md-icon dp16'>chevron_right</i></a></li>";
			}
			echo "</ul></nav>\n";
		}
	}
}
