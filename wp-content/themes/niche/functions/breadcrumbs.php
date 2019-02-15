<?php
/*
 * niche Breadcrumbs
*/
function niche_custom_breadcrumbs() {
  $niche_showonhome = 0; // 1 - show breadcrumbs on the homepage, 0 - don't show  
  $niche_showcurrent = 1; // 1 - show current post/page title in breadcrumbs, 0 - don't show
  global $post;
  if (is_home() || is_front_page()) {
    if ($niche_showonhome == 1) echo '<ol class="breadcrumb breadcrumb-menubar"><li><a href="' . esc_url(home_url('/')) . '">' . esc_html__('Home','niche') . '</a></li></ol>';
  }  else {
    echo '<ol class="breadcrumb breadcrumb-menubar"><li><a href="' . esc_url(home_url('/')). '">' . esc_html__('Home','niche') . '</a> </li>';
   if ( is_category() ) {
      $niche_thisCat = get_category(get_query_var('cat'), false);
      if ($niche_thisCat->parent != 0) echo get_category_parents($niche_thisCat->parent, TRUE, ' ');      
        echo '<li>';  esc_html_e('Category','niche'); echo ' "'.single_cat_title('', false) . '"';echo '</li>';
    } 
    elseif ( is_search() ) {
       esc_html_e('Search Results For','niche'); echo ' "'. get_search_query() . '"';
    } elseif ( is_day() ) {
      echo '<li><a href="' . esc_url(get_year_link(get_the_time('Y'))) . '">' . esc_attr(get_the_time('Y')) . '</a> </li>';
      echo '<li><a href="' . esc_url(get_month_link(get_the_time('Y'),get_the_time('m'))) . '">' . esc_attr(get_the_time('F')) . '</a></li> ';
     echo '<li>'; echo esc_html(get_the_time('d')) ;echo '</li>';
    } elseif ( is_month() ) {
      echo '<li><a href="' . esc_url(get_year_link(get_the_time('Y'))) . '">' . esc_attr(get_the_time('Y')) . '</a> </li>';
      echo '<li>';echo  esc_html(get_the_time('F')) ;echo '</li>';
    } elseif ( is_year() ) {
     echo '<li>'; echo  esc_html(get_the_time('Y')) ;echo '</li>';
    } elseif ( is_single() && !is_attachment() ) {
      if ( get_post_type() != 'post' ) {
        $niche_post_type = get_post_type_object(get_post_type());
        $niche_slug = $niche_post_type->rewrite;
        echo '<li><a href="' . esc_url(home_url('/'. $niche_slug['slug'])). '/">' . esc_html($niche_post_type->labels->singular_name) . '</a></li>';
        if ($niche_showcurrent == 1) echo esc_attr(get_the_title()) ;
      } else {
        $niche_cat = get_the_category(); $niche_cat = $niche_cat[0];
        $niche_cats = get_category_parents($niche_cat, TRUE, ' ');
        if ($niche_showcurrent == 0) $niche_cats = preg_replace("#^(.+)\s \s$#", "$1", $niche_cats);
        echo '<li>';echo $niche_cats;echo '</li>';
        if ($niche_showcurrent == 1) echo '<li>';echo esc_attr(get_the_title()) ;echo '</li>';
      }
    } elseif ( !is_single() && !is_page() && get_post_type() != 'post' && !is_404() ) {
      $niche_post_type = get_post_type_object(get_post_type());
      echo  $niche_post_type->labels->singular_name ;
    } elseif ( is_attachment() ) {
      $niche_parent = get_post($post->post_parent);
      $niche_cat = get_the_category($niche_parent->ID); $niche_cat = $niche_cat[0];
      echo get_category_parents($niche_cat, TRUE, ' ');
      echo '<li><a href="' . esc_url(get_permalink($niche_parent)) . '">' . esc_html($niche_parent->post_title) . '</a></li>';
      if ($niche_showcurrent == 1) echo '<li>'; echo  esc_attr(get_the_title()) ;echo '</li>';
    } elseif ( is_page() && !$post->post_parent ) {
      if ($niche_showcurrent == 1) echo '<li>';echo  esc_attr(get_the_title()) ;echo '</li>';
    } elseif ( is_page() && $post->post_parent ) {
      $niche_parent_id  = $post->post_parent;
      $niche_breadcrumbs = array();
      while ($niche_parent_id) {
        $niche_page = get_post($niche_parent_id);
        $niche_breadcrumbs[] = '<li><a href="' . esc_url(get_permalink($niche_page)) . '">' . esc_attr(get_the_title($niche_page)) . '</a></li>';
        $niche_parent_id  = $niche_page->post_parent;
      }
      $niche_breadcrumbs = array_reverse($niche_breadcrumbs);
      for ($niche_i = 0; $niche_i < count($niche_breadcrumbs); $niche_i++) {
        echo $niche_breadcrumbs[$niche_i];
        if ($niche_i != count($niche_breadcrumbs)-1) echo ' ';
      }
      if ($niche_showcurrent == 1) echo esc_attr(get_the_title()) ;
    } elseif ( is_tag() ) {
       echo '<li>';esc_html_e('Posts tagged','niche'); echo ' "'.  single_tag_title('', false) . '"';echo '</li>';
    } elseif ( is_author() ) {
       global $author;
      $niche_userdata = get_userdata($author);
       echo '<li>';esc_html_e('Articles posted by ','niche'); echo esc_attr($niche_userdata->display_name) ;echo '</li>';
    } elseif ( is_404() ) {
     echo '<li>'; esc_html_e('Error 404','niche'); echo '</li>';
    }
    if ( get_query_var('paged') ) {echo '<li>';
      if ( is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author() ) echo ' (';
      esc_html__('Page','niche') . ' ' . esc_html(get_query_var('paged'));
      if ( is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author() ) echo ')';
      echo '</li>';
    }
    echo '</ol>';
  }
} ?>