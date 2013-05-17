(function($){  
  $(function(){
    $(document).foundationMediaQueryViewer();

    $(document).foundationAlerts();
    $(document).foundationAccordion();
    $(document).tooltips();
    $('input, textarea').placeholder();

    $(document).foundationButtons();

    $(document).foundationNavigation();

    $(document).foundationCustomForms();

		$(document).foundationTabs({callback:$.foundation.customForms.appendCustomMarkup});
    
    $("#featured").orbit();

    // UNCOMMENT THE LINE YOU WANT BELOW IF YOU WANT IE8 SUPPORT AND ARE USING .block-grids
    // $('.block-grid.two-up>li:nth-child(2n+1)').css({clear: 'left'});
    // $('.block-grid.three-up>li:nth-child(3n+1)').css({clear: 'left'});
    // $('.block-grid.four-up>li:nth-child(4n+1)').css({clear: 'left'});
    // $('.block-grid.five-up>li:nth-child(5n+1)').css({clear: 'left'});

		/* Custom JS */
		
		// TODO: Refactor the clear-form functions
		$(".clear-form.md5").click(function(){$("#md5_encryption_message").val("");$("#md5_encrypted_message").val("");$("#md5_encryption_message").focus();});
    $(".clear-form.sha1").click(function(){$("#sha1_encryption_message").val("");$("#sha1_encrypted_message").val("");$("#sha1_encryption_message").focus();});
    $(".clear-form.sha256").click(function(){$("#sha256_encryption_message").val("");$("#sha256_encrypted_message").val("");$("#sha256_encryption_message").focus();});
    $(".clear-form.sha384").click(function(){$("#sha384_encryption_message").val("");$("#sha384_encrypted_message").val("");$("#sha384_encryption_message").focus();});
    $(".clear-form.sha512").click(function(){$("#sha512_encryption_message").val("");$("#sha512_encrypted_message").val("");$("#sha512_encryption_message").focus();});
    $(".clear-form.base64").click(function(){$("#base64_encryption_message").val("");$("#base64_encrypted_message").val("");$("#base64_encryption_message").focus();});
  });
})(jQuery);