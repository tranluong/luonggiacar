<?php

function luongwp_send_message_callback() {
	$nonce     = $_POST['form-id'];
	$full_name = $_POST['contact_name'];
	$email     = $_POST['contact_email'];
	$phone     = $_POST['contact_phone'];
	$content   = $_POST['contact_content'];

	if ( empty( $nonce ) || ! wp_verify_nonce( $nonce, 'luongwp-contact' ) || empty( $full_name )
	     || empty( $email ) || ! is_email( $email ) || empty( $phone ) || empty( $content ) ) {
		wp_send_json_error( [ 'message' => 'Invalid request.' ] );
	}

	$content = esc_html( $content );
	$ip      = $_SERVER['REMOTE_ADDR'] ?? 'n/a';
	$browser = $_SERVER['HTTP_USER_AGENT'] ?? 'n/a';
	$meta    = "IP Address: $ip\r\nBrowser: $browser";

	$subject = get_bloginfo( 'name' ) . ': Tin nhắn mới từ ' . $full_name;

	$body = str_replace(
		[
			'{FULL_NAME}',
			'{EMAIL_ADDR}',
			'{PHONE_NUMBER}',
			'{MESSAGE}',
			'{MESSAGE_META}',
		],
		[
			$full_name,
			$email,
			$phone,
			$content,
			wpautop( $meta )
		],
		file_get_contents( locate_template( 'templates/emails/contact-message.html' ) )
	);

	// Send email
	$admin_email = get_option('company_email_web' );

	$status = luongwp_sent_email( $admin_email, $subject, $body );

	// Save DB
//	$save_db = get_option( MATIWP_SAVE_CONTACT_MESSAGE );
//	if ( ! empty( $save_db ) ) {
//		$id = wp_insert_post( [
//			'post_type'   => MATIWP_MESSAGE_POST_TYPE,
//			'post_title'  => $full_name . ' || ' . $email,
//			'post_status' => 'publish'
//		] );
//
//		if ( ! is_wp_error( $id ) ) {
//			add_post_meta( $id, MATIWP_MESSAGE_NAME, $full_name );
//			add_post_meta( $id, MATIWP_MESSAGE_EMAIL, $email );
//			add_post_meta( $id, MATIWP_MESSAGE_PHONE, $phone );
//			add_post_meta( $id, MATIWP_MESSAGE_ADDRESS, $address );
//			add_post_meta( $id, MATIWP_MESSAGE_MESSAGE, $message );
//			add_post_meta( $id, MATIWP_MESSAGE_META, $meta );
//			add_post_meta( $id, MATIWP_MESSAGE_IS_SENT, $status );
//		}
//	}

	wp_send_json_success( [ 'message' => 'OK' ] );
}

add_action( 'wp_ajax_send_message', 'luongwp_send_message_callback' );
add_action( 'wp_ajax_nopriv_send_message', 'luongwp_send_message_callback' );

function luongwp_sent_email( $to_emails, $mail_subject, $mail_body, $bccs = null ) {
	if ( empty( $to_emails ) ) {
		return false;
	}

	$mail_header[] = 'Content-Type: text/html; charset=UTF-8' . "\r\n";
	if ( ! empty( $bccs ) ) {
		$mail_header[] = 'Bcc: ' . $bccs;
	}

	$to_emails = explode( ',', $to_emails );

	return wp_mail( $to_emails, $mail_subject, $mail_body, $mail_header );
}
