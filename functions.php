<?php
/**
 * tajem functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package tajem
 */

if ( ! function_exists( 'tajem_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function tajem_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on tajem, use a find and replace
		 * to change 'tajem' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'tajem', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'tajem' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'tajem_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'tajem_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function tajem_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'tajem_content_width', 640 );
}
add_action( 'after_setup_theme', 'tajem_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function tajem_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'tajem' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'tajem' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'tajem_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function tajem_scripts() {
	wp_enqueue_style( 'tajem-style', get_stylesheet_uri() );

	wp_enqueue_script( 'tajem-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

// bootstrap scripts
	wp_enqueue_script('bootstrap.bundle-js', get_template_directory_uri().'/libs/bootstrap/dist/js/bootstrap.bundle.js', [], '', true);
	wp_enqueue_script('bootstrap-js', get_template_directory_uri().'/libs/bootstrap/dist/js/bootstrap.min.js', [], '', true);
	wp_enqueue_style('bootstrap-css', get_template_directory_uri().'/libs/bootstrap/dist/css/bootstrap.min.css');
	wp_enqueue_style('bootstrap-reboot-css', get_template_directory_uri().'/libs/bootstrap/dist/css/bootstrap-reboot.min.css');

	wp_enqueue_style('custom-css', get_template_directory_uri().'/stylesheets/style.css');
	wp_enqueue_script('navigation-menu', get_template_directory_uri().'/js/navigation-menu.js', ['jquery'], '', true);
	wp_enqueue_script('video', get_template_directory_uri().'/js/video.js', ['jquery'], '', true);

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'tajem_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Add custom post types.
 */
require get_template_directory() . '/custom-posts.php';

/**
 * Load Nav-Walker
 */
require_once('wp-bootstrap-navwalker.php');

/**
 * Load font-awesome
 */
wp_enqueue_style( 'font-awesome', '//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css' );

function social_array() {

	$social_sites = array(
		'facebook'      => 'facebook_profile',
		'twitter'       => 'twitter_profile',
		'dribbble'      => 'dribbble_profile',
		'instagram'     => 'instagram_profile',
		'google-plus'   => 'googleplus_profile',
		'pinterest'     => 'pinterest_profile',
		'linkedin'      => 'linkedin_profile',
		'youtube'       => 'youtube_profile',
		'vimeo'         => 'vimeo_profile',
		'tumblr'        => 'tumblr_profile',
		'flickr'        => 'flickr_profile',
		'rss'           => 'rss_profile',
		'reddit'        => 'reddit_profile',
		'soundcloud'    => 'soundcloud_profile',
		'spotify'       => 'spotify_profile',
		'vine'          => 'vine_profile',
		'yahoo'         => 'yahoo_profile',
		'behance'       => 'behance_profile',
		'codepen'       => 'codepen_profile',
		'delicious'     => 'delicious_profile',
		'stumbleupon'   => 'stumbleupon_profile',
		'deviantart'    => 'deviantart_profile',
		'digg'          => 'digg_profile',
		'github'        => 'github_profile',
		'hacker-news'   => 'hacker-news_profile',
		'steam'         => 'steam_profile',
		'vk'            => 'vk_profile',
		'weibo'         => 'weibo_profile',
		'tencent-weibo' => 'tencent_weibo_profile',
		'500px'         => '500px_profile',
		'foursquare'    => 'foursquare_profile',
		'slack'         => 'slack_profile',
		'slideshare'    => 'slideshare_profile',
		'qq'            => 'qq_profile',
		'whatsapp'      => 'whatsapp_profile',
		'skype'         => 'skype_profile',
		'wechat'        => 'wechat_profile',
		'xing'          => 'xing_profile',
		'paypal'        => 'paypal_profile',
		'email-form'    => 'email_form_profile'
	);

	return apply_filters( 'social_array_filter', $social_sites );
}

function social_icons_output() {

	$social_sites = social_array();

	foreach ( $social_sites as $social_site => $profile ) {

		if ( strlen( get_theme_mod( $social_site ) ) > 0 ) {
			$active_sites[ $social_site ] = $social_site;
		}
	}

	if ( ! empty( $active_sites ) ) {

		echo '<ul class="row social-media-icons">';
		foreach ( $active_sites as $key => $active_site ) {
			$class = 'fa fa-' . $active_site; ?>
			<li class="col">
				<a class="<?php echo esc_attr( $active_site ); ?>" target="_blank" href="<?php echo esc_url( get_theme_mod( $key ) ); ?>">
					<i class="<?php echo esc_attr( $class ); ?>" title="<?php echo esc_attr( $active_site ); ?>"></i>
				</a>
			</li>
		<?php }
		echo "</ul>";
	}
}

function my_youtube_player_iframe_api( $html ) {
	if ( false !== strpos( $html, 'youtube' ) ) {
		$html = str_replace( '?feature=oembed', '?feature=oembed&enablejsapi=1', $html );
	}
	return $html;
}
add_filter( 'oembed_result', 'my_youtube_player_iframe_api', 10, 1 );