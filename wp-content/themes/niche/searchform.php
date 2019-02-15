<?php
/**
 * The template for displaying search form
 * @package Niche Pro
 */
?>
<form method="get" class="navbar-form" role="search" action="<?php echo esc_url( home_url( '/' ) ); ?>">
	<div class="input-group add-on">
		<input type="text" id="srch-term" name="s" placeholder="<?php esc_attr_e('Search','niche'); ?>" class="form-control" required="">
		<div class="input-group-btn">
			<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
		</div>
	</div>
</form>
