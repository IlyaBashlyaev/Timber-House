<?php
/**
 * Plugin Name: WP Dark Mode
 * Plugin URI:  https://wppool.dev/wp-dark-mode
 * Description: WP Dark Mode automatically enables a stunning dark mode of your website based on user's operating system. Supports macOS, Windows, Android & iOS.
 * Version:     2.2.6
 * Author:      WPPOOL
 * Author URI:  http://wppool.dev
 * Text Domain: wp-dark-mode
 * Domain Path: /languages/
 * License:     GPL-2.0+
 * License URI: http://www.gnu.org/licenses/gpl-2.0.txt
 */

/** don't call the file directly */
if ( ! defined( 'ABSPATH' ) ) {
	wp_die( __( 'You can\'t access this page', 'wp-dark-mode' ) );
}

if ( ! defined( 'WP_DARK_MODE_VERSION' ) ) {
	define( 'WP_DARK_MODE_VERSION', '2.2.6' );
	define( 'WP_DARK_MODE_FILE', __FILE__ );
	define( 'WP_DARK_MODE_PATH', dirname( WP_DARK_MODE_FILE ) );
	define( 'WP_DARK_MODE_INCLUDES', WP_DARK_MODE_PATH . '/includes' );
	define( 'WP_DARK_MODE_TEMPLATES', WP_DARK_MODE_PATH . '/templates' );
	define( 'WP_DARK_MODE_URL', plugin_dir_URL( WP_DARK_MODE_FILE ) );
	define( 'WP_DARK_MODE_ASSETS', WP_DARK_MODE_URL . 'assets' );

	include_once WP_DARK_MODE_INCLUDES . '/base.php';
}
