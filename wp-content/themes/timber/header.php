<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <?php wp_head(); ?>
        <link rel="shortcut icon" href="<?php bloginfo('template_url') ?>/assets/img/logo.png">
        <title><?php bloginfo('name') ?></title>
    </head>

    <body>
        <header class="header" style="background-image: url(<?php the_field('top__bg'); ?>);">
            <div class="header__inner">
                <img src="<?php bloginfo('template_url'); ?>/assets/img/logo.png">

                <div class="header__name"><?php the_field('header__name'); ?></div>
                <a class="phone" href="tel:<?php the_field('phone'); ?>"><?php the_field('phone'); ?></a>
                <div class="header__title"><?php the_field('header__title'); ?></div>

                <div class="header__sale">
                    <img src="<?php the_field('header__sale'); ?>">
                </div>
            </div>
        </header>
