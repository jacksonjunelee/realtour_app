// main js page

var RealTourAPI = ( function () {

	var submitBtn = $(".signup-form__submit"),
			__Main_Url__ = "localhost:3000/",
			__User_Endpoint__ = "users";

	function apiRequest ( data ) {
		console.log( 'this is data:', data );
	}
	
	$.ajax({
		url: __Main_Url__ + __User_Endpoint__,
		dataType: "json",
		method: "POST",
		success: apiRequest
	});



})();