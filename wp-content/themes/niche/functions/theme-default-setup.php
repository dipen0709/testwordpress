<?php
/*
 * niche Main Sidebar
 */
function niche_widgets_init() {
    register_sidebar(array(
        'name' => __('Main Sidebar', 'niche'),
        'id' => 'sidebar-1',
        'description' => __('Main sidebar that appears on the right.', 'niche'),
        'before_widget' => '<aside id="%1$s" class=" widget widget_recent_entries %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
        ));
    
    register_sidebar(array(
        'name' => __('Footer Area One', 'niche'),
        'id' => 'footer-1',
        'description' => __('Footer Area One that appears on footer.', 'niche'),
        'before_widget' => '<aside id="%1$s" class="footer-widget widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
    ));
    
    register_sidebar(array(
        'name' => __('Footer Area Two', 'niche'),
        'id' => 'footer-2',
        'description' => __('Footer Area Two that appears on footer.', 'niche'),
        'before_widget' => '<aside id="%1$s" class="footer-widget widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
    ));
    
    register_sidebar(array(
        'name' => __('Footer Area Three', 'niche'),
        'id' => 'footer-3',
        'description' => __('Footer Area Three that appears on footer.', 'niche'),
        'before_widget' => '<aside id="%1$s" class="footer-widget widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
    ));
    
    register_sidebar(array(
        'name' => __('Footer Area Four', 'niche'),
        'id' => 'footer-4',
        'description' => __('Footer Area Four that appears on footer.', 'niche'),
        'before_widget' => '<aside id="%1$s" class="footer-widget widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
    ));
}

add_action('widgets_init', 'niche_widgets_init');

/**
 * Set up post entry meta.    
 * Meta information for current post: categories, tags, permalink, author, and date.    
 * */
function niche_entry_meta() {
	$niche_categories_list = get_the_category_list(', ','');
	$niche_tag_list = get_the_tag_list('', ', ' );	
	
	$niche_comments = wp_count_comments(get_the_ID()); 	

?>	
	<ul>
       <li><i class="fa fa-calendar"></i><?php printf(/* translators: %s is post date.*/ esc_html__( ' %s ', 'niche' ), sprintf('<time datetime="%1$s">%2$s</time>', esc_attr(get_the_date('c')), esc_html(get_the_date('F d , Y'))) ); ?></li>
       <li><i class="fa fa-user"></i><a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>" rel="tag"><?php echo esc_html(ucfirst(get_the_author())); ?></a></li>
<?php if (!is_page_template('page-template/front-page.php')) { ?>
       <li><?php if(!empty($niche_categories_list)) { ?><i class="fa fa-folder-open"></i><?php echo get_the_category_list(', ',''); ?></li><?php } ?>    <?php if(!empty($niche_tag_list)) { ?>
		<li><i class="fa fa-link"></i><?php echo get_the_tag_list('', ', ' ); ?></li><?php } ?>
<?php } ?>
       <li><i class="fa fa-comment"></i><?php echo comments_number(); ?></li>
    </ul>	
<?php 	
}
/*
 * Comments placeholder function
 * 
**/
add_filter( 'comment_form_default_fields', 'niche_comment_placeholders' );
function niche_comment_placeholders( $fields )
{
	$fields['author'] = str_replace(
		'<input',
		'<input placeholder="'
		. _x(
		'Name *',
		'comment form placeholder',
		'niche'
		)
		. '" required',
		
	$fields['author']
	);
	$fields['email'] = str_replace(
		'<input',
		'<input id="email" name="email" type="text" placeholder="'
		. _x(
		'Email Id *',
		'comment form placeholder',
		'niche'
		)
		. '" required',
	$fields['email']
	);
	$fields['url'] = str_replace(
		'<input',
		'<input id="url" name="url" type="text" placeholder="'
		. _x(
		'Website URL',
		'comment form placeholder',
		'niche'
		)
		. '" required',
	$fields['url']
	);
	return $fields;
}
add_filter( 'comment_form_defaults', 'niche_textarea_insert' );
	function niche_textarea_insert( $fields )
	{
		$fields['comment_field'] = str_replace(
			'<textarea',
			'<textarea id="comment" aria-required="true" rows="8" cols="45" name="comment" placeholder="'
			. _x(
			'Comment',
			'comment form placeholder',
			'niche'
			)
		. '" ',
		$fields['comment_field']
		);
	return $fields;
	}
