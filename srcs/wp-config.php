<?php

/**
 * Configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 * This file contains the following configurations:
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 * https://codex.wordpress.org/Editing_wp-config.php
 * @package PhpMyAdmin
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'serverdb');
/** MySQL database username */
define('DB_USER', 'salec');
/** MySQL database password */
define('DB_PASSWORD', 'salec42');
/** MySQL hostname */
define('DB_HOST', 'localhost');
/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');
/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**
 * Authentication Unique Keys and Salts.
 * Generated at https://api.wordpress.org/secret-key/1.1/salt/
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 */
define('AUTH_KEY',         '4nUZ|a1!>e~=8xGQ@tW:1GP0t3Xy_PpjU![?f.U%A`-`0B9pe[s%KJ<i6PR|r~&Z');
define('SECURE_AUTH_KEY',  'BgcgC(^-,yvKaaN(O|rc}Q#E4Nq8q$#@M7]-)wmq&$,+y,#M{|Avuj)1UlGF.GCp');
define('LOGGED_IN_KEY',    '}Y>ivT@N)OS0Rb]%_Eh+q& atIxD,O(DNqWGxO/S>-fPZQYz:{4}mWZcw$m_vc) ');
define('NONCE_KEY',        'HtE+T5d^#vsxt-P^Zh$P~Y3-[5C}p${5qPS:Qtu%]H+Fn9Jt3>S&e/C? Hka4+|k');
define('AUTH_SALT',        'k5u/U13GX6NNBu oUx_]N7~0_#{+#zpds=`|17+GI63yIN(G[B21FN_xUz/w@)fe');
define('SECURE_AUTH_SALT', '=]p)sVX2?,.q3z)[u,ap,R]SxJ+3 p$dgFge|d6y%+>Xi-Ev&>|>F[iZ..8W<oJ~');
define('LOGGED_IN_SALT',   'FD.dDz5oKd8#]u|huNO2LQLX|!w_1=m20v&X:!5]zM%e+tmu1|-gYl3oztla#X]>');
define('NONCE_SALT',       '3:>KhPjSZ#8<j=C![Gz8w-rzdPCoSjS6e/Y2ZtE-PIg}z{%(_-+hGk`l4AmTbw;$');

/**
 * WordPress Database Table prefix.
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 * https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

?>
