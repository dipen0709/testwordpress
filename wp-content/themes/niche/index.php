<?php
/**
 * The main template file
 * */
get_header();
?>
<!--Blogs posts start-->
<section <?php post_class(); ?>>
<div class="page-banner col-md-12">
	<div class="blur-white"></div>
	<div class="container less-padding">
	   <h2 class="page-heading">
		   <?php $blogtitle_check = get_theme_mod( 'niche_blogtitle' );
				if( $blogtitle_check != '' ) {  
					echo esc_attr( get_theme_mod('niche_blogtitle', '') );
				 } else { 	
					echo esc_html_e('Our Blog','niche');
				 } ?>
	   </h2>
		
	</div>
</div>

<?php get_template_part('content'); ?>

</section>	
<!--Blogs posts end-->
<?php get_footer(); ?>




