// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require fancybox
//= require jquery_nested_form

$(document).ready(function() {

	//  $('#menu li ul').hide();
	$('#menu li').hover(function() {
		//show its submenu
		$('ul', this).stop().slideDown(100);

	}, function() {
		//hide its submenu
		$('ul', this).stop().slideUp(100);
	});
	
	$("a.product_gallery").fancybox();

	// Function to limit the number of photos that can be added to each product
	$(function() {
		var fieldsCount, maxFieldsCount = 2, $addLink = $('a.add_nested_fields');

		function toggleAddLink() {
			$addLink.toggle(fieldsCount <= maxFieldsCount)
		}


		$(document).on('nested:fieldAdded', function() {
			fieldsCount += 1;
			toggleAddLink();
		});

		$(document).on('nested:fieldRemoved', function() {
			fieldsCount -= 1;
			toggleAddLink();
		});

		// count existing nested fields after page was loaded
		fieldsCount = $('form .fields').length;
		toggleAddLink();
	})
	/* This is basic - uses default settings */

	/*$("a#product_image").fancybox();*/
	/*$("a#product_image").fancybox( {
	 'transitionIn' : 'elastic',
	 'transitionOut' : 'elastic',
	 'easingIn' : 'easeInOutBack',
	 'easingOut' : 'easeOutBack',
	 'speedIn' : 300,
	 'speedOut' : 300
	 //cyclic : true,
	 //titlePosition : 'over',
	 //title : $(this).attr('rel')
	 });*/
	/* Using custom settings */

	/*
	 $("a#inline").fancybox({
	 'hideOnContentClick': true
	 });*/

	/* Apply fancybox to multiple items */

	
	 /*$("a#product_primary_photo").fancybox({
	 'transitionIn'	:	'elastic',
	 'transitionOut'	:	'elastic',
	 'speedIn'		:	600,
	 'speedOut'		:	200,
	 'overlayShow'	:	true,
	 'opacity'      :   true
	 });*/
	 
});
