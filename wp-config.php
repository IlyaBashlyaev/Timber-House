<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'timber-wp' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Vsa,2K,LijBkrU`GgpcD6-<cIx7^&rs`} LCU(LSS0}giDYu%Ahe`[SM;4^5CJF$' );
define( 'SECURE_AUTH_KEY',  '7|4k+ZGF[;XE:a]? FTabOs1v,& n&I~pRtlU>~ P@I8jn|X}nv)mZ$%IR8hwX_!' );
define( 'LOGGED_IN_KEY',    'suG3tpWRpe46ihjoFM0NspzTY%c$Aw%oNJ}liEdqHI~# ?{<ud$~cI2{o>PZCs)`' );
define( 'NONCE_KEY',        '!{tx4(R2V%/N_Eb,]fQ$xrTB~KKdEo?zUD|t5,]Jf3T4;e^M;*bY ZE&>3@>4AXb' );
define( 'AUTH_SALT',        'u!i?tm`_TgT=8x}s2/q^4iTB>PX[rEFRvo|BC(;4N3|s?U;N4(ePd@JI~#LHU>x3' );
define( 'SECURE_AUTH_SALT', ')G}Yy6BJT.!=?Ma|)~;Dkrbm]*lBZ+H+Fp#z-y5>F^DZYic(r78r8E%%}ZMD*,QT' );
define( 'LOGGED_IN_SALT',   'LkaP8c|,f<QZ$AocBVk[>6x*1Cui d>L>yM`Xb+2i`BYx(V:lS.gF^C|TDbLF1`K' );
define( 'NONCE_SALT',       ',Z5=s .ssBt=9,[4$P>#[F<tpw|5=z[?>]rWd.3aPf@/V)],h|4m*{,2Uam)W4zb' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
