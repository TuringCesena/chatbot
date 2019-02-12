+function ($) { "use strict";

	/*
	 * MOD Librasoft - 01/2018
	 */
	$('.myvem-login').on('click', '.login-toggle', function(e) {
        $('.myvem-login').toggleClass('open');
        return false;
    });

	$('.lang-switcher').on('click', '.dropdown-toggle', function(e) {
        $('.lang-switcher').toggleClass('open');
        return false;
    });

}(jQuery);

// override theme
function vc_check() {
    j$('li').next('br').remove();
    j$('ul').next('br').remove();
    j$('ul').prev('br').remove();

    j$("p:empty").css('margin-bottom', '0');

    j$(".wpb_row:empty").remove();
    j$(".wpb_column:empty").remove();
    j$(".wpb_wrapper:empty").remove();


    j$('.vertical').each(function () {

        var ul_height = j$(this).find('.tabs').height();

        j$(this).find('.tab_content').css('min-height', ul_height);

    })
}
function set_tiptip() {
}

jQuery(window).load(function() {

/* MOD Kalimera */
	(function ( sfx ) {
		var $presenza = jQuery('select.presenza'+sfx);
		if ($presenza.length) {
			var $frm = $presenza.closest('form');
			var $deps = $frm.find('.input-group').filter('[class$="'+sfx+'"]').not($presenza.closest('.input-group'));
			$presenza.on('change', function (e) {
				if (jQuery(this).val().toLowerCase() !== 'no') {
					$deps.show();
				} else {
					$deps.hide();
				}
			}).trigger('change');
		}
	})('_accompagnatore');

});

jQuery(function($){
	var qry = document.location.search.replace(/^\?/,'').split(/&/).reduce(function(acc, parm){
			var p = parm.split('=').map(function(val){ return decodeURIComponent(val.replace(/\+/g, ' ')); });
			acc[p[0]] = p[1];
			return acc;
		}, {});
	if ( !qry.risposta )
		return;
	var $login = $('.myvem-login'),
		$msg = $('<p class="message" />');
	$msg.text(qry.risposta).css({display:'none'});
	$msg = $msg.insertBefore($login.find('[name="utente"]'))
		.slideUp(0);
	$login.addClass('open');
	$msg.delay(100).slideDown(800);
});