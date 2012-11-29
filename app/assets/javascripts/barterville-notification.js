$(function() {
	$('.btn').click(alertMessage);
	$('div.closed').hide();
	$('#show-closed').click(showClosed)

	function alertMessage () {
		alertify.success("You clicked on a button.");
	}

	function showClosed () {
		$('.closed').show();
	}
});