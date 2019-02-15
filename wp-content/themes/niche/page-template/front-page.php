<?php
/*
 * Template Name: Home Page
 */
?>
<?php get_header(); ?>

<section>

<!--Slider Start-->
<?php  /*$niche_metaslider = get_theme_mod( 'niche_metaslider' );
		if(!empty($niche_metaslider)){
			echo do_shortcode('[metaslider id="'.$niche_metaslider.'"]');
		}*/
?>
<div class="banner">    		
	<div id="slider-carousel" class="carousel zoomIn garden-slider" data-ride="carousel">
		<div class="carousel-inner slider">
			<?php $indicators=0;$niche_loop_active=0;
			for($niche_loop=1 ; $niche_loop <=5 ; $niche_loop++):			
				$sliderimage_image = get_theme_mod ( 'niche_homepage_sliderimage'.$niche_loop.'_image');

				$sliderimage_title = get_theme_mod ( 'niche_homepage_sliderimage'.$niche_loop.'_title');
				$sliderimage_content = get_theme_mod ( 'niche_homepage_sliderimage'.$niche_loop.'_content');
				
				$sliderimage_link  = get_theme_mod ( 'niche_homepage_sliderimage'.$niche_loop.'_link' );
			?>

			<?php if($sliderimage_image!=''){
				$niche_loop_active++;
				$sliderimage_image_url = wp_get_attachment_image_src($sliderimage_image,'niche-slider-image-home');
			?>
			<div class="item <?php if($niche_loop_active == 1) { echo "active"; } ?>">
				<?php if($sliderimage_link!='') { ?>
				
					<img src="<?php echo esc_url($sliderimage_image_url[0]); ?>" alt="<?php echo esc_attr($niche_loop);?>" />
					<div class="effect-hover">
						<h3><?php echo esc_html($sliderimage_title); ?></h3>
						<p><?php echo esc_html($sliderimage_content);?></p>
						<p><a href="<?php echo esc_url($sliderimage_link);?>" target="_blank"><?php esc_html_e('Read More','niche'); ?></a></p>
					</div>
				
				<?php } else { ?>                          
					<img src="<?php echo esc_url($sliderimage_image_url[0]); ?>" alt="<?php echo esc_attr($niche_loop);?>" />
					<div class="effect-hover">
						<h3><?php echo esc_html($sliderimage_title); ?></h3>
					</div>
				<?php } ?>	
			</div>  
			<?php $indicators++;}  endfor; ?>
		</div>
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<?php for($niche_loop=1 ; $niche_loop<=$indicators ; $niche_loop++):  ?>
		    <li data-target="#slider-carousel" class="<?php echo ($niche_loop==1)?'active':'';?>" data-slide-to="<?php echo esc_attr($niche_loop-1); ?>"></li>
		    <?php endfor; ?>
	  	</ol>
		<?php if($niche_loop_active >= 2) { ?>		
		<a class="left carousel-control slider_button" href="#slider-carousel" data-slide="prev">
			<i class="fa fa-angle-left"></i>
		</a>
		<a class="right carousel-control slider_button" href="#slider-carousel" data-slide="next">
			<i class="fa fa-angle-right"></i>
		</a>
		<?php } ?>
	</div>
</div>
<!--Slider End--> 
<!--our blog -->
<div class="section-row our-blog-section col-md-12">
	<div class="container less-padding">
		<div class="full-title col-md-12">
			<h2 class="main-title border-style1">
				<?php $blog_check = get_theme_mod( 'niche_blog-title' );
					if(!empty($blog_check)) {
						 echo esc_attr( get_theme_mod('niche_blog-title', '') ); 
					 } else { 
						echo esc_html_e('Our Blog', 'niche');  
				 } ?>
			</h2>
			<?php
			$niche_blogcategory=get_theme_mod('niche_blogcategory');
			$niche_args = array(
				'ignore_sticky_posts' => '1',
				'meta_query' => array(
					array(
						'key' => '_thumbnail_id',
						'compare' => 'EXISTS'
					),
				)
			);
			if(!empty($niche_blogcategory))
				$niche_args['cat']=$niche_blogcategory;
				$niche_query = new WP_Query($niche_args);
			?>
			 <?php if ($niche_query->found_posts >= 3) { ?>
			<div class="customNavigation">
				<a class="btn prev"><i class='fa fa-chevron-left'></i></a>
				<a class="btn next"><i class='fa fa-chevron-right'></i></a>
			</div>
			<?php } 
				$bloginfo_check = get_theme_mod( 'niche_bloginfo' );
				if(!empty($bloginfo_check)) { ?>
					 <p><?php echo esc_attr(get_theme_mod('niche_bloginfo', '')); ?></p>
			<?php } ?>
		</div>

		<div id="our-blog-gallery"    class="col-md-12">
			 <?php
				 if ($niche_query->have_posts()) : while ($niche_query->have_posts()) : $niche_query->the_post();
			?>
			<div class="item">
				<div class="ourblog-box">
					<?php if ( has_post_thumbnail() ) : ?>
					<div class="post-header">
						<div class="image-wrapper">
							<a href="<?php echo esc_url( get_permalink() ); ?>">
								<?php the_post_thumbnail( 'niche-blog-thumbnail-image-home', array( 'alt' => get_the_title(), 'class' => 'img-responsive') ); ?>
							</a>
						</div>
					</div>
					<?php endif; ?>
					<div class="post-detail">
						<a class="post-title" href="<?php echo esc_url( get_permalink() ); ?>"><?php echo esc_attr(get_the_title()); ?></a>
						<div class="post-meta">
							<?php  niche_entry_meta(); ?>  
						</div>
						<?php the_excerpt(); ?>  
					</div>
				</div>
			</div>
		<?php endwhile; ?>
		<?php endif; ?>                  
		</div>  
	</div>
</div>
<!--our blog end-->


<!--Our path to Perfection -->
<?php $niche_perfection_title = get_theme_mod( 'niche_perfectiontitle' ); 
	  $niche_perfection__info = get_theme_mod( 'niche_perfectioninfo' );
	  $niche_perfection__image = get_theme_mod( 'niche_perfection_image' );
	  if(!empty($niche_perfection__image)){
		$niche_perfection_col_md = 'col-sm-6';
	  }	else {
		 $niche_perfection_col_md = 'col-sm-12';
	  }
		
	  
	  if(!empty($niche_perfection_title) || !empty($niche_perfection__info) || !empty($niche_perfection__image)) { 
?>	  
<div class="section-row path-section col-md-12">
	<div class="blur-slider"></div>
	<div class="container less-padding">
		<div class="col-md-12 speciality-box">
			<div class="row">
				<?php  	
				if(!empty($niche_perfection_title) || !empty($niche_perfection__info)) {	 
				?>
				<div class="<?php echo esc_attr($niche_perfection_col_md); ?> article-left">
					<?php if(!empty($niche_perfection_title)) { ?>
							<h2 class="main-title border-style1">
								<?php echo esc_attr( get_theme_mod('niche_perfectiontitle', '') );  ?>
							</h2>	
					<?php }
						if(!empty($niche_perfection__info)) { ?>
							 <p><?php echo esc_attr(get_theme_mod('niche_perfectioninfo', '')); ?></p>
					<?php } ?>
				</div>
				 <?php }
				  if (!empty($niche_perfection__image)) { ?>
					<div class="col-md-6 col-sm-6 article-right">
						<div class="iphone-screen">
							<img src="<?php echo esc_url( get_theme_mod( 'niche_perfection_image' ) ); ?>" alt="<?php esc_attr_e('iphone','niche'); ?>" class="img-responsive">
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>            
<?php } ?>
<!--Our path to Perfection End-->
 
</section>
<?php get_footer(); ?>

