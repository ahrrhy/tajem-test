	<?php

	/** Create Custom Post types */

	// Header Slides
	function create_post_type_header_slider() {
	register_post_type(
		'header_slider',
		[
			'labels' => [
				'name' => __( 'Header Slides' ),
				'singular_name' => __( 'Header Slide' )
			],
			'description' =>  __( 'Header Slider Posts. Here you add slides for header slider' ),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_nav_menus' => true,
			'query_var' => true,
			'capability_type' => 'post',
			'has_archive' => false,
			'supports' => ['title', 'thumbnail', 'editor', 'author', 'excerpt'],
		]
	);
	}
	add_action( 'init', 'create_post_type_header_slider' );

	// Expertise
	function create_post_type_expertise() {
	register_post_type(
		'expertise',
		[
			'labels' => [
				'name' => __( 'Expertise' ),
				'singular_name' => __( 'Expertise' )
			],
			'description' =>  __( 'Add your team expertise spheres' ),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_nav_menus' => true,
			'query_var' => true,
			'capability_type' => 'post',
			'has_archive' => false,
			'supports' => ['title', 'thumbnail', 'editor', 'author', 'custom-fields'],
		]
	);
	}
	add_action( 'init', 'create_post_type_expertise' );

	// Employees
	function create_post_type_employees() {
	register_post_type(
		'employees',
		[
			'labels' => [
				'name' => __( 'Employees' ),
				'singular_name' => __( 'Employees' )
			],
			'description' =>  __( 'Add your team employees' ),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_nav_menus' => true,
			'query_var' => true,
			'capability_type' => 'post',
			'has_archive' => false,
			'supports' => ['title', 'thumbnail', 'editor', 'author', 'custom-fields'],
		]
	);
	}
	add_action( 'init', 'create_post_type_employees' );

	// Portfolio Works
	function create_post_type_portfolio() {
	register_post_type(
		'portfolio',
		[
			'labels' => [
				'name' => __( 'Portfolio Works' ),
				'singular_name' => __( 'Portfolio Work' )
			],
			'description' =>  __( 'Add your team portfolio works' ),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_nav_menus' => true,
			'query_var' => true,
			'capability_type' => 'post',
			'has_archive' => false,
			'supports' => ['title', 'thumbnail', 'editor', 'author', 'custom-fields'],
		]
	);
	}
	add_action( 'init', 'create_post_type_portfolio' );

	// Testimonials
	function create_post_type_testimonials() {
	register_post_type(
		'testimonials',
		[
			'labels' => [
				'name' => __( 'Testimonials' ),
				'singular_name' => __( 'Testimonial' )
			],
			'description' =>  __( 'Add your customer testimonials' ),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_nav_menus' => true,
			'query_var' => true,
			'capability_type' => 'post',
			'has_archive' => false,
			'supports' => ['title', 'thumbnail', 'editor', 'author', 'custom-fields'],
		]
	);
	}
	add_action( 'init', 'create_post_type_testimonials' );

	// Partners
	function create_post_type_partners() {
	register_post_type(
		'customers',
		[
			'labels' => [
				'name' => __( 'Customers' ),
				'singular_name' => __( 'Customers' )
			],
			'description' =>  __( 'Add your team customers' ),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_nav_menus' => true,
			'query_var' => true,
			'capability_type' => 'post',
			'has_archive' => false,
			'supports' => ['title', 'thumbnail', 'editor', 'author', 'custom-fields'],
		]
	);
	}
	add_action( 'init', 'create_post_type_partners' );

	// PAGE SECTIONS
	function create_post_type_page_sections() {
	register_post_type(
		'page_sections',
		[
			'labels' => [
				'name' => __( 'Page Sections' ),
				'singular_name' => __( 'Page Section' )
			],
			'description' =>  __( 'Add Page Section' ),
			'public' => true,
			'publicly_queryable' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_nav_menus' => true,
			'query_var' => true,
			'capability_type' => 'post',
			'has_archive' => false,
			'supports' => ['title', 'thumbnail', 'editor', 'author', 'custom-fields', 'excerpt', 'post-formats'],
		]
	);
	}
	add_action( 'init', 'create_post_type_page_sections' );