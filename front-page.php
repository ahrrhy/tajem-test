<?php get_header(); ?>

    <div id="primary" class="content-area container-fluid">
        <main id="main" class="site-main">
            <!-- FIRST SCREEN SECTION -->
            <section class="first-screen row" id="page-top">
                <div class="carousel slide" id="header-slider" data-ride="carousel">
                    <?php
                    $slider_args = [
                        'order'          => 'ASC',
                        'post_type'      => 'header_slider',
                        'posts_per_page' => 4,
                    ];
                    $slider = new WP_Query( $slider_args );
                    if ( $slider->have_posts() ):
                        $slider_count = $slider->found_posts;
                        ?>
                        <ol class="carousel-indicators">
                            <?php for ( $i = 0; $i < $slider_count; $i ++ ) { ?>
                                <li data-target="#header-slider"
                                    data-slide-to="<?php echo $i; ?>"
                                    class="<?php echo ( $i == 0 ) ? 'active' : '' ?>">
                                </li>
                            <?php } ?>
                        </ol> <!--.carousel-indicators-->

                        <ul class="carousel-inner" role="listbox">
                            <?php $i = 0;
                            while ( $slider->have_posts() ): $slider->the_post(); ?>
                                <li class="carousel-item text-center <?php echo ( $i == 0 ) ? 'active' : '' ?>">
                                    <?php
                                    $attr = [ 'class' => 'img-fluid slider-img' ];
                                    the_post_thumbnail( 'full', $attr );
                                    ?>
                                    <div class="carousel-caption">
                                        <p class="slider-header"><?php the_title(); ?></p>
                                        <p class="slider-excerpt"><?php echo get_the_excerpt(); ?></p>
                                        <p class="slider-link"><a href="<?php the_permalink(); ?>">learn more</a>
                                        </p>
                                    </div>
                                </li><!--.carousel-item-->
                                <?php $i ++; endwhile; ?>
                        </ul> <!--.carouse-inner-->

                    <?php endif;
                    wp_reset_postdata(); ?>
                </div>
            </section><!-- FIRST SCREEN SECTION -->
            <!-- SECOND SCREEN SECTION -->
            <section id="about" class="row second-screen">
                <div class="container">
                    <div class="row">
                    <?php $section_about_args = [
                            'name'      => 'about',
                            'post_type' => 'page_sections'
                    ];
                    $section_about = new WP_Query($section_about_args);
                    if ($section_about->have_posts()) : ?>
                        <?php $section_about->the_post(); ?>
                            <div class="huge-logo text-center col-12 offset-md-1 col-md-3">
                                <?php $attr = [ 'class' => 'img-fluid' ];
                                the_post_thumbnail( 'full', $attr ); ?>
                            </div>
                            <div class="col-12 offset-md-1 col-md-7">
                                <p class="about-section-title"><?php the_title(); ?></p>
                                <div class="about-section-excerpt"><?php echo get_the_excerpt(); ?></div>
                                <p class="our-story-link"><a href="<?php the_permalink(); ?>">learn more</a>
                            </div>
                            <div class="video-box">
                                <?php the_field('video_story'); ?>
                            </div>
                    <?php endif;
                    wp_reset_postdata();?>
                    </div>
                </div>
                <?php while ( have_posts() ) : the_post(); ?>
                <div class="video-story">
                    <?php the_content(); ?>
                    <div class="fake-video">
                        <img src="<?php echo get_theme_mod( 'video_thumb' ); ?>" alt="video">
                        <div class="play">
                            <button id="play"></button>
                            <p><?php echo get_theme_mod('video_caption'); ?></p>
                        </div>

                    </div>
                </div>
                <?php endwhile; ?>
            </section><!-- SECOND SCREEN SECTION -->
            <!-- THIRD SCREEN SECTION -->
            <section class="row third-screen" id="expertise">
                <div class="container">
                    <h4 class="col-12 section-header"><?php the_field('expertise_section_title')?>
                        <span class="section-description"><?php echo get_field('expertise_section_description') ?></span>
                    </h4>
                    <?php
                    $expertise_query_args = [
                        'numberposts' => 6,
                        'orderby'     => 'date',
                        'order'       => 'ASC',
                        'post_type'   => 'expertise',
                        'suppress_filters' => true,
                    ];
                    $expertise_posts = new WP_Query($expertise_query_args);
                    if ($expertise_posts->have_posts()) : ?>
                    <ul class="row expertise-list">
                        <?php while ($expertise_posts->have_posts()) : $expertise_posts->the_post(); ?>
                        <li class="col-6 col-md-4">
                            <span class="equalizer">
                                <?php
                                $attr = [ 'class' => 'img-fluid slider-img' ];
                                the_post_thumbnail( 'full', $attr ); ?>
                            </span>
                            <p class="expertise-title"><?php the_title(); ?></p>
                            <p class="expertise-description"><?php echo get_the_content(); ?></p>
                        </li>
                        <?php endwhile;
                        endif;
                        wp_reset_postdata();
                        ?>
                    </ul>
                </div>
            </section><!-- THIRD SCREEN SECTION -->
            <!-- FOURTH SCREEN SECTION -->
            <section class="row fourth-screen" id="teams">
                <div class="container">
                    <h4 class="col-12 section-header"><?php the_field('employees_section_title')?>
                        <span class="section-description">
                            <?php echo get_field('employees_section_description'); ?>
                        </span>
                    </h4>
                    <?php
                    $teams_query_args = [
                        'numberposts' => 4,
                        'orderby'     => 'date',
                        'order'       => 'ASC',
                        'post_type'   => 'employees',
                        'suppress_filters' => true,
                    ];
                    $teams_posts = new WP_Query($teams_query_args);
                    if ($teams_posts->have_posts()) : ?>
                    <ul class="row teams-list">
                        <?php while ($teams_posts->have_posts()) : $teams_posts->the_post(); ?>
                            <li class="col-6 col-md-3">
                                <span>
                                    <?php
                                    $attr = [ 'class' => 'img-fluid slider-img' ];
                                    the_post_thumbnail( 'full', $attr ); ?>
                                </span>
                                <div class="bordered-box">
                                    <p class="teams-title"><?php the_title(); ?></p>
                                    <p class="teams-description"><?php echo get_the_content(); ?></p>
                                </div>
                            </li>
                        <?php endwhile;
                        endif;
                        wp_reset_postdata();
                        ?>
                    </ul>
                    <p class="col-12 hiring-request"><?php the_field('hiring_request_text'); ?>
                       <span><a href="<?php the_field('hiring_page_link'); ?>" class="hiring-link"><?php the_field('hiring_link_text'); ?></a></span>
                    </p>
                </div>
            </section><!-- FOURTH SCREEN SECTION -->
            <!-- FIFTH SCREEN SECTION -->
            <section class="row fifth-screen" id="works">
                <header class="container">
                    <div class="row justify-content-between">
                        <h4 class="col-12 col-md-2 align-self-center works-header"><?php the_field('works_section_title'); ?></h4>
                        <a class="col-12 col-md-3 align-self-center text-center" href="<?php the_field('dribble_link_url'); ?>"><?php the_field('dribbble_link_text'); ?></a>
                    </div>
                </header>
                <?php
                $works_query_args = [
                    'numberposts' => 12,
                    'orderby'     => 'date',
                    'order'       => 'ASC',
                    'post_type'   => 'portfolio',
                    'suppress_filters' => true,
                ];
                $works_posts = new WP_Query($works_query_args);
                if ($works_posts->have_posts()) : ?>
                <ul class="row works-list">
                    <?php while ($works_posts->have_posts()) : $works_posts->the_post(); ?>
                        <li class="col-6 col-md-2">
                                <span>
                                    <?php
                                    $attr = [ 'class' => 'img-fluid slider-img' ];
                                    the_post_thumbnail( 'full', $attr ); ?>
                                </span>
                        </li>
                    <?php endwhile;
                    endif;
                    wp_reset_postdata();
                    ?>
                </ul>
                <p class="text-center col-12">
                    <a href="<?php the_field('dribbble_link_text'); ?>" class="load-works">
		                <?php the_field('load_works_button_text'); ?>
                    </a>
                </p>
            </section><!-- FIFTH SCREEN SECTION -->
            <!-- SIXTH SCREEN SECTION data-ride="carousel"-->
            <section class="row sixth-screen" id="people-say">
                <div class="carousel slide container" id="testimonials-slider"  >
                    <?php
                    $testimonials_slider_args = [
                        'order'          => 'ASC',
                        'post_type'      => 'testimonials',
                        'posts_per_page' => 5,
                    ];
                    $controls = get_posts( [
                        'numberposts' => 5,
                        'orderby'     => 'date',
                        'order'       => 'ASC',
                        'post_type'   => 'testimonials',
                        'suppress_filters' => true,
                    ] ); ?>
                    <ol class="carousel-indicators">
                        <?php for ( $i = 0; $i < count($controls); $i ++ ) { ?>
                            <li data-target="#testimonials-slider"
                                data-slide-to="<?php echo $i; ?>"
                                class="<?php echo ( $i == 0 ) ? 'active' : '' ?>">
                                <p><?php echo get_the_post_thumbnail($controls[$i]->ID, 'full'); ?></p>
                            </li>
                        <?php } ?>
                    </ol> <!--.carousel-indicators-->
                    <?php wp_reset_postdata();
                    $testimonials_slider = new WP_Query( $testimonials_slider_args );
                    if ( $testimonials_slider->have_posts() ):
                       $testimonials_slider_count = $testimonials_slider->found_posts; ?>
                        <ul class="carousel-inner row justify-content-center" role="listbox">
                            <?php $i = 0;
                            while ( $testimonials_slider->have_posts() ): $testimonials_slider->the_post(); ?>
                                <li class="col-12 col-md-10 carousel-item text-center <?php echo ($i == 0) ? 'active' : '' ?>">
                                    <?php echo get_the_content(); ?>
                                    <p class="customer-name"><?php the_title(); ?></p>
                                    <p class="customer-position"><?php the_field('customer_position'); ?></p>
                                </li><!--.carousel-item-->
                                <?php $i ++; endwhile; ?>
                        </ul> <!--.carouse-inner-->
                        <a class="carousel-control-prev" href="#testimonials-slider" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#testimonials-slider" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    <?php endif;
                    wp_reset_postdata(); ?>
                </div>
            </section><!-- SIXTH SCREEN SECTION -->
            <!-- SEVENTH SCREEN SECTION -->
            <section class="row seventh-screen" id="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <p class="contact-form-title"><?php the_field('contact_form_title'); ?></p>
                           <?php
                            $form = get_field('contact_form_shortcode');
                            echo do_shortcode($form); ?>
                        </div>
                        <div class="col-12 col-md-5 offset-md-1">
                            <p class="contact-form-title"><?php the_field('clients_title'); ?></p>
                            <?php
                            $works_query_args = [
                                'numberposts' => 10,
                                'orderby'     => 'date',
                                'order'       => 'ASC',
                                'post_type'   => 'customers',
                                'suppress_filters' => true,
                            ];
                            $works_posts = new WP_Query($works_query_args);
                            if ($works_posts->have_posts()) : ?>
                            <ul class="row justify-content-around customers-list">
                                <?php while ($works_posts->have_posts()) : $works_posts->the_post(); ?>
                                    <li class="col-6 align-self-center">
                                <span>
                                    <?php
                                    $attr = [ 'class' => 'img-fluid slider-img' ];
                                    the_post_thumbnail( 'full', $attr ); ?>
                                </span>
                                    </li>
                                <?php endwhile;
                                endif;
                                wp_reset_postdata();
                                ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </section><!-- SEVENTH SCREEN SECTION -->
        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
