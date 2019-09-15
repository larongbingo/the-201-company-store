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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'the201companystore' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

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
define( 'AUTH_KEY',         '#B!e[RpkKZ:,]d,UFE0w>>)j;?c(>y,4@tpK>&e^xU|,voy(9(0uN7n}ffauaH`D' );
define( 'SECURE_AUTH_KEY',  '*{e@m[LXQ=uqUmi)x0~<U4r9P!.VZ;KLKZzgS{%KXpU^c8,Oe;Qi;vjjB$~D&7(c' );
define( 'LOGGED_IN_KEY',    'SM8G>na_XATe[To&$_fFfrX|HaVW0C7p$qUrS|3*nGrdp.IjRP+u=f|Ysxe`#Mb4' );
define( 'NONCE_KEY',        'W_PdZ1)Lsw|F|xuz%^PlC/^Ri`Pq8>t.jg6EaOg%gK1EDgrn31Q8^XxrHVj{<=tu' );
define( 'AUTH_SALT',        '0^0a@Rh<yVo(N0j-7xCM:C=usl`NiW=O8|2+wih %G,oo.mPfRKPA}tUUZ~iZH7L' );
define( 'SECURE_AUTH_SALT', 'Gpf:oxi_n3B?i9G_*<uD/dMKs-<f}w7W,zTAMn97dy>L@]]C.~A8?e.X_1&>]O2(' );
define( 'LOGGED_IN_SALT',   '#XWB7(!Kp~xdX_Qz_CgEEb1uH4%#Lm-K0-XRW/-3o}bR1OZaZD`v>#d`>]L5g<d[' );
define( 'NONCE_SALT',       'TDl%&(.P~dl$1)p@{!4iDJHO+B>I8J;VEwJ+rkobQt$#X?xMK.F.+{]Bb$mPQb| ' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
