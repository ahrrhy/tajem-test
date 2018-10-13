<?php
/**
 * tajem Theme Customizer
 *
 * @package tajem
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function tajem_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';

	if ( isset( $wp_customize->selective_refresh ) ) {
		$wp_customize->selective_refresh->add_partial( 'blogname', array(
			'selector'        => '.site-title a',
			'render_callback' => 'tajem_customize_partial_blogname',
		) );
		$wp_customize->selective_refresh->add_partial( 'blogdescription', array(
			'selector'        => '.site-description',
			'render_callback' => 'tajem_customize_partial_blogdescription',
		) );
	}
}
add_action( 'customize_register', 'tajem_customize_register' );

/**
 * Render the site title for the selective refresh partial.
 *
 * @return void
 */
function tajem_customize_partial_blogname() {
	bloginfo( 'name' );
}

/**
 * Render the site tagline for the selective refresh partial.
 *
 * @return void
 */
function tajem_customize_partial_blogdescription() {
	bloginfo( 'description' );
}

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function tajem_customize_preview_js() {
	wp_enqueue_script( 'tajem-customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), '20151215', true );
}
add_action( 'customize_preview_init', 'tajem_customize_preview_js' );

function customizer_front_page($wp_customize){

	$wp_customize->add_section(
		'front_page',
		[
			'title' => __('Customize Front Page Main', 'tajem')
		]);

	$wp_customize->add_setting(
        'fourth_screen_background',
        [
            'default' => '',
        ]
    );

	$wp_customize->add_control( new WP_Customize_Image_Control(
		$wp_customize,
		'fourth_screen_background',
		[
			'label'    => __('Fourth Screen Background', 'tajem'),
			'section'  => 'front_page',
			'settings' => 'fourth_screen_background',
		]));

	$wp_customize->add_setting(
		'video_thumb',
		[
			'default' => '',
		]
	);

	$wp_customize->add_control( new WP_Customize_Image_Control(
		$wp_customize,
		'video_thumb',
		[
			'label'    => __('Video Thumbnail', 'tajem'),
			'section'  => 'front_page',
			'settings' => 'video_thumb',
		]));

	/**
	 *  Video Caption
	 */
	$wp_customize->add_setting('video_caption');
	$wp_customize->add_control(
		'video_caption',
		[
			'label' => __('Video Caption'),
			'description' => __('Add here Video Caption'),
			'section' => 'front_page',
			'type' => 'text',
		]
	);

	$wp_customize->add_setting(
		'sixth_screen_background',
		[
			'default' => '',
		]
	);

	$wp_customize->add_control( new WP_Customize_Image_Control(
		$wp_customize,
		'sixth_screen_background',
		[
			'label'    => __('Sixth Screen Background', 'tajem'),
			'section'  => 'front_page',
			'settings' => 'sixth_screen_background',
		]));
}
add_action( 'customize_register', 'customizer_front_page' );

function output_front_page_customization(){ ?>
	<style>
		/*
	  adding bg to first screen
	   */
		.fourth-screen{
			background: url("<?php echo get_theme_mod('fourth_screen_background'); ?>") 0 0/cover no-repeat;
		}
        .sixth-screen{
			background: url("<?php echo get_theme_mod('sixth_screen_background'); ?>") 0 0/cover no-repeat;
		}
	</style>
<?php }
add_action('wp_head', 'output_front_page_customization');

function customize_footer($wp_customize) {
	$wp_customize->add_section(
		'footer_customizer',
		[
			'title' => __('Customize Site Footer', 'tajem')
        ]
    );

	$wp_customize->add_setting(
		'footer_background',
		[
			'default' => '',
		]
	);

	$wp_customize->add_control( new WP_Customize_Image_Control(
		$wp_customize,
		'footer_background',
		[
			'label'    => __('Footer Background', 'tajem'),
			'section'  => 'footer_customizer',
			'settings' => 'footer_background',
		]));

	$wp_customize->add_setting('footer_site_info');
	$wp_customize->add_control(
	        'footer_site_info',
            [
                'label' => __('Footer Site Info'),
                'description' => __('Add here short info about your team'),
                'section' => 'footer_customizer',
                'type' => 'text',
            ]
	);

	/**
	 *  Address Section
	 */
	$wp_customize->add_setting('footer_site_address_section_title');
	$wp_customize->add_control(
		'footer_site_address_section_title',
		[
			'label' => __('Footer Site Address Section Title'),
			'description' => __('Add here Address Section Title'),
			'section' => 'footer_customizer',
			'type' => 'text',
		]
	);

	$wp_customize->add_setting('footer_site_address_section_address');
	$wp_customize->add_control(
		'footer_site_address_section_address',
		[
			'label' => __('Company Address'),
			'description' => __('Add here Address'),
			'section' => 'footer_customizer',
			'type' => 'text',
		]
	);

	$wp_customize->add_setting(
		'footer_site_address_section_address_icon',
		[
			'default' => '',
		]
	);

	$wp_customize->add_control( new WP_Customize_Image_Control(
		$wp_customize,
		'footer_site_address_section_address_icon',
		[
			'label'    => __('Address Icon', 'tajem'),
			'section'  => 'footer_customizer',
			'settings' => 'footer_site_address_section_address_icon',
		]
    ));

	$wp_customize->add_setting('footer_site_address_section_phone_label');
	$wp_customize->add_control(
		'footer_site_address_section_phone_label',
		[
			'label' => __('Company contact phone label'),
			'description' => __('Add here Phone in order you want to output it'),
			'section' => 'footer_customizer',
			'type' => 'text',
		]
	);

	$wp_customize->add_setting('footer_site_address_section_phone');
	$wp_customize->add_control(
		'footer_site_address_section_phone',
		[
			'label' => __('Company contact phone'),
			'description' => __('Add here Phone'),
			'section' => 'footer_customizer',
			'type' => 'text',
		]
	);

	$wp_customize->add_setting(
		'footer_site_address_section_phone_icon',
		[
			'default' => '',
		]
	);

	$wp_customize->add_control( new WP_Customize_Image_Control(
		$wp_customize,
		'footer_site_address_section_phone_icon',
		[
			'label'    => __('Phone Icon', 'tajem'),
			'section'  => 'footer_customizer',
			'settings' => 'footer_site_address_section_phone_icon',
		]
	));
	/**
	 * End Address Section
	 */

	/**
	 * Social Links section
	 */
	$wp_customize->add_setting('footer_site_social_section_title');
	$wp_customize->add_control(
		'footer_site_social_section_title',
		[
			'label' => __('Footer Site Social Section Title'),
			'description' => __('Add here Social Section Title'),
			'section' => 'footer_customizer',
			'type' => 'text',
		]
	);

	$wp_customize->add_setting('footer_site_social_section_mailchimp');
	$wp_customize->add_control(
		'footer_site_social_section_mailchimp',
		[
			'label' => __('MailChimp shortcode'),
			'description' => __('Add here MailChimp shortcode'),
			'section' => 'footer_customizer',
			'type' => 'text',
		]
	);

	$wp_customize->add_setting(
		'footer_site_social_section_mailchimp_icon',
		[
			'default' => '',
		]
	);

	$wp_customize->add_control( new WP_Customize_Image_Control(
		$wp_customize,
		'footer_site_social_section_mailchimp_icon',
		[
			'label'    => __('Mailchimp Icon', 'tajem'),
			'section'  => 'footer_customizer',
			'settings' => 'footer_site_social_section_mailchimp_icon',
		]
	));
}
add_action( 'customize_register', 'customize_footer' );

function output_footer_customization(){ ?>
    <style>
        /*
	  adding bg to first screen
	   */
        #site-footer{
            background: url("<?php echo get_theme_mod('footer_background'); ?>") 0 0/cover no-repeat;
        }

        #site-footer .address-icon:before {
            background: url("<?php echo get_theme_mod('footer_site_address_section_address_icon'); ?>") 0 0/contain no-repeat;
        }
        #site-footer .phone-icon:before {
            background: url("<?php echo get_theme_mod('footer_site_address_section_phone_icon'); ?>") 0 0/contain no-repeat;
        }

        .mailchimp p input[type="submit"] {
            background: url("<?php echo get_theme_mod('footer_site_social_section_mailchimp_icon'); ?>") center/auto no-repeat;;
        }
    </style>
<?php }
add_action('wp_head', 'output_footer_customization');

function social_customizer_sections( $wp_customize ) {

	$social_sites = social_array();

	// set a priority used to order the social sites
	$priority = 5;

	// section
	$wp_customize->add_section( 'social_media_icons', array(
		'title'       => __( 'Social Media Icons', 'tajem' ),
		'priority'    => 25,
		'description' => __( 'Add the URL for each of your social profiles.', 'tajem' )
	) );

	// create a setting and control for each social site
	foreach ( $social_sites as $social_site => $value ) {

		$label = ucfirst( $social_site );

		if ( $social_site == 'google-plus' ) {
			$label = 'Google Plus';
		} elseif ( $social_site == 'rss' ) {
			$label = 'RSS';
		} elseif ( $social_site == 'soundcloud' ) {
			$label = 'SoundCloud';
		} elseif ( $social_site == 'slideshare' ) {
			$label = 'SlideShare';
		} elseif ( $social_site == 'codepen' ) {
			$label = 'CodePen';
		} elseif ( $social_site == 'stumbleupon' ) {
			$label = 'StumbleUpon';
		} elseif ( $social_site == 'deviantart' ) {
			$label = 'DeviantArt';
		} elseif ( $social_site == 'hacker-news' ) {
			$label = 'Hacker News';
		} elseif ( $social_site == 'whatsapp' ) {
			$label = 'WhatsApp';
		} elseif ( $social_site == 'qq' ) {
			$label = 'QQ';
		} elseif ( $social_site == 'vk' ) {
			$label = 'VK';
		} elseif ( $social_site == 'wechat' ) {
			$label = 'WeChat';
		} elseif ( $social_site == 'tencent-weibo' ) {
			$label = 'Tencent Weibo';
		} elseif ( $social_site == 'paypal' ) {
			$label = 'PayPal';
		} elseif ( $social_site == 'email-form' ) {
			$label = 'Contact Form';
		}
		// setting
		$wp_customize->add_setting( $social_site, array(
			'sanitize_callback' => 'esc_url_raw'
		) );
		// control
		$wp_customize->add_control( $social_site, array(
			'type'     => 'url',
			'label'    => $label,
			'section'  => 'social_media_icons',
			'priority' => $priority
		) );
		// increment the priority for next site
		$priority = $priority + 5;
	}
}
add_action( 'customize_register', 'social_customizer_sections' );