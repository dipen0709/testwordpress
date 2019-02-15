<?php 
/**
 * The right sidebar template file
**/

?>
<div class="main-sidebar col-md-4 col-sm-12">
        <?php
        if (is_active_sidebar('sidebar-1')) {
            dynamic_sidebar('sidebar-1');
        }
        ?>
</div>
