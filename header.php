<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package tajem
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'tajem' ); ?></a>

	<header id="masthead" class="site-header">
        <nav class="navbar navbar-expand-md navbar-light" role="navigation">
            <div class="container menu-wrap">
                <!-- Brand and toggle get grouped for better mobile display -->
                <button class="navbar-toggler"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-brand" href="#">
                    <?php the_custom_logo();
                    if ( is_front_page() && is_home() ) :
                        ?>
                        <h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
                    <?php
                    else :
                        ?>
                        <p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
                    <?php
                    endif; ?>
                </div><!-- .navbar -->
                <?php
                wp_nav_menu( array(
                    'theme_location'    => 'menu-1',
                    'depth'             => 2,
                    'container'         => 'div',
                    'container_class'   => 'collapse navbar-collapse',
                    'container_id'      => 'navbarSupportedContent',
                    'menu_class'        => 'nav navbar-nav',
                    'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
                    'walker'            => new WP_Bootstrap_Navwalker(),
                ) );
                ?>
            </div>
        </nav><!-- #site-navigation -->
	</header><!-- #masthead -->

	<div id="content" class="site-content">
