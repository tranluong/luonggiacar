<?php while ( have_posts() ) : the_post(); ?>
<?php if ( is_front_page() ) : ?>
    <main>
        <?php the_content(); ?>
    </main>
<?php else : ?>
    <div class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <?php the_content(); ?>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>
<?php endwhile;