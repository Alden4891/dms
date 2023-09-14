<?php $ctlr_name = $this->router->fetch_class();?>
<?php if ($ctlr_name=="document") { ?>
	<script src="<?=site_url('assets/dist/js/listing.js')?>"></script>
	<script src="<?=site_url('assets/dist/js/routing_modal.js')?>"></script>
	<link rel="stylesheet" href="<?=site_url('assets/dist/css/main.css')?>"/>
<?php } ?>

<?php if ($ctlr_name=="routing") { ?>
	<script src="<?=site_url('assets/dist/js/routing.js')?>"></script>

<?php } ?>

<?php if ($ctlr_name=="archive") { ?>
	<script src="<?=site_url('assets/dist/js/archive.js')?>"></script>

<?php } ?>


