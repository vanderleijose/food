<?php echo $this->extend('Admin/Home/layout/default'); ?>

<!-- TITLE PAGE -->
<?php echo $this->section('title'); ?>
<?php echo $title; ?>
<?php echo $this->endSection(); ?>

<!-- STYLES -->
<?php echo $this->section('styles'); ?>

<?php echo $this->endSection(); ?>

<!-- CONTENT -->
<?php echo $this->section('content'); ?>
<?php echo $title; ?>
<?php echo $this->endSection(); ?>

<!-- SCRIPTS -->
<?php echo $this->section('scripts'); ?>

<?php echo $this->endSection(); ?>