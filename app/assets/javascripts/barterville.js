$(function(){
	$('ul.nav li').hover(addActiveState);

	function addActiveState () {
		$(this).toggleClass('active');
	}
});