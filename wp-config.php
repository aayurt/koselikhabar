<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
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
if($_SERVER['HTTP_HOST']=="localhost" || $_SERVER['HTTP_HOST']=="127.0.0.1") {
    /** The name of the database for WordPress */
    define('DB_NAME', 'koselikhabar');

    /** MySQL database username */
    define('DB_USER', 'root');

    /** MySQL database password */
    define('DB_PASSWORD', '');
}
else{
    /** The name of the database for WordPress */
    define('DB_NAME', 'binayasc_ratosurya');

    /** MySQL database username */
    define('DB_USER', 'binayasc_ratosurya');

    /** MySQL database password */
    define('DB_PASSWORD', 'ywn31*eZUOe?');
}
/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'ieBM?a4qJjgym@k~8sW/|C`w}&0Rk]Ty<|l4$5NXY67 gc@+2Z%Q6wnHRElF1U A' );
define( 'SECURE_AUTH_KEY',  'LTZG>_c4&31^Z]jtMKJSA20y=_7$hSVqDLuQJbfo+R:HI3)voX1BFj_VcYG~L%r_' );
define( 'LOGGED_IN_KEY',    ']tAZ{A~<IxDM tlf/@RCI`kHS$A$hQ]+/R!i%bN:UBd7|7W*kG4|4R2_ssC}dp$m' );
define( 'NONCE_KEY',        'tmaCBgm|MfI7zM{@u2(nPJTe c`$p0 |a}P}cYZJrIU/M:N0x;mgOjz+akzY!u!k' );
define( 'AUTH_SALT',        'B{5R:@[8^-D*G#jIqbUI0~L>^F}OZ)`avU)na0Tg=Jj1cN^[LM*)%y}w,Rdq}d&n' );
define( 'SECURE_AUTH_SALT', 'dOH%eoU]_Ce0ZX<!$yjMt2|F?]@S+pCb(!2enpKgZ}nNf2:<_qPN+gHo8-ThsRq<' );
define( 'LOGGED_IN_SALT',   'u/rP2cPKRHz$.oZ~QF|:N-C.yL`hoxh[{Bm0NFFO`coq|w!)ia_/NJF2Uxa;tP!:' );
define( 'NONCE_SALT',       'x6iH,,s@}W<c^}tBh>1&w_Q&Ovy9EDA>##EoZEv}yYIePEIE-m<AQJ~ZK]u+*i87' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
