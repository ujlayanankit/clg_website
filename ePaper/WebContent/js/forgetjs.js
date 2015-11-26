function forgotPassw(){
//	$("loginButtons").css("visibility", "hidden");
	var url1 = "forgetPass.html";
	 
    $.ajax({
        url: url1,
        context: document.body,
        success: function(html){                         
            $("#forgotPassShow").html(html)
           // alert(showLogin);
        }
    });
}
