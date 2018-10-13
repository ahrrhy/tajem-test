<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package tajem
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer container-fluid">
		<div class="row"  id="site-footer">
            <div class="container">
                <ul class="row footer-sections-list">
                    <li class="col-12 col-md-4">
                        <section class="site-info">
                            <?php the_custom_logo(); ?>
                            <p class="site-title">
                                <a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
                                    <?php bloginfo( 'name' ); ?>
                                </a>
                            </p>
                            <p class="site-description"><?php echo get_theme_mod('footer_site_info'); ?></p>
                        </section>
                    </li>
                    <li class="col-12 col-md-4">
                        <section class="address-section">
                            <p class="section-header">
                                <?php echo get_theme_mod('footer_site_address_section_title'); ?>
                            </p>
                            <ul class="site-description">
                                <li class="address-icon">
                                    <?php echo get_theme_mod('footer_site_address_section_address'); ?>
                                </li>
                                <li class="phone-icon">
                                    <a href="lel:<?php echo get_theme_mod('footer_site_address_section_phone'); ?>">
	                                    <?php echo get_theme_mod('footer_site_address_section_phone_label'); ?>
                                    </a>
                                </li>
                            </ul>
                        </section>
                    </li>
                    <li class="col-12 col-md-4">
                        <section class="social">
                            <p class="section-header">
                                <?php echo get_theme_mod('footer_site_social_section_title'); ?>
                            </p>
                            <div class="site-description">
                                <?php echo do_shortcode(get_theme_mod('footer_site_social_section_mailchimp')) ; ?>
                            </div>
                            <?php social_icons_output(); ?>
                        </section>
                    </li>
                </ul>
                <div class="row justify-content-between site-info">
                    <div class="col-12 col-md-4">
                        <ul class="row justify-content-between condition-pages-list">
                            <li class="col-auto text-left">
                                <a href="<?php echo get_permalink( get_page_by_path( 'help' ) ); ?>">
				                    <?php echo get_the_title( get_page_by_path( 'help' ) ); ?>
                                </a></li>
                            <li class="col-auto text-left">
                                <a href="<?php echo get_permalink( get_page_by_path( 'terms-condition' ) ); ?>">
				                    <?php echo get_the_title( get_page_by_path( 'terms-condition' ) ); ?>
                                </a></li>
                            <li class="col-auto text-right">
                                <a href="<?php echo get_permalink( get_page_by_path( 'privacy' ) ); ?>">
				                    <?php echo get_the_title( get_page_by_path( 'privacy' ) ); ?>
                                </a></li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <span class="copyright">Copyright © <?php echo date('Y'); ?> - Tajem Creative</span>
                    </div>
                </div><!-- .site-info -->
            </div>
        </div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
