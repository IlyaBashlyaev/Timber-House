 <?php get_header(); ?>

        <main class="main">
            <div class="container">
                <div class="main__title"><?php the_field('main__title'); ?></div>
                <div class="main__text"><?php the_field('main__text'); ?></div>

                <div class="main__img">
                    <img src="<?php bloginfo('template_url'); ?>/assets/img/main-img.png">
                </div>

                <div class="project">
                    <div class="project__title"><?php the_field('project__title'); ?></div>

                    <?php
                        $posts = get_field('project_item');
                        if ($posts) {
                            foreach($posts as $post) { 
                                setup_postdata($post); ?>
                                <div class="project_item">
                                    <?php the_title(); ?>
                                    <div class="project__name"><?php the_field('project__name'); ?></div>
                                    <div class="project__size"><?php the_field('project__size'); ?></div>
                                    <div class="project__area"><?php the_field('project__area'); ?></div>
                                    <div class="project__price"><?php the_field('project__price'); ?></div>

                                    <div class="project__images">
                                        <div class="project__images-item">
                                            <img src="<?php the_field('project__images-item-1'); ?>">
                                        </div>

                                        <div class="project__images-item">
                                            <img src="<?php the_field('project__images-item-2'); ?>">
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        <?php
                            wp_reset_postdata();
                        } ?>
                </div>
            </div>

            <div class="download">
                <img src="<?php bloginfo('template_url'); ?>/assets/img/home-download.png">
                <a href="<?php the_field('download__link'); ?>" download="">СКАЧАТЬ ВЕСЬ КАТАЛОГ ДОМОВ</a>
            </div>

            <div class="container">
                <div class="gallery">
                    <div class="gallery__title"><?php the_field('gallery__title'); ?></div>
                    <div class="gallery__text"><?php the_field('gallery__text'); ?></div>
                    <div id="gallery__inner"><?php the_field('gallery'); ?></div>
                </div>

                <div class="main__img">
                    <img src="<?php bloginfo('template_url'); ?>/assets/img/main-img.png">
                </div>
            </div>
        </main>

<?php get_footer(); ?>