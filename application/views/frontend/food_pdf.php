<style>
	.hole_pdf {
	    padding: 83px 0 0 0;
		width: 100%;
		height: auto;
		overflow: hidden;
	}
	.hole_pdf .pdf {
		width: 100%;
		height: 650px;
	}
</style>
<div class="row">
	<div class="hole_pdf">
    <?php 
    $header = read('header');
    if($header && file_exists($header[0]->food_menu)){?>
		<embed class="pdf" src="<?php echo site_url($header[0]->food_menu); ?>" alt="Show PDF !">
    <?php } ?>
	</div>
</div>