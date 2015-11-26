function teacherLogin(){
//	$("loginButtons").css("visibility", "hidden");
	var url1 = "SignIn.jsp";
	 
    $.ajax({
        url: url1,
        context: document.body,
        success: function(html){                         
            $("#showLogin").html(html)
           // alert(showLogin);
        }
    });
}

function studentLogin(){
//	$("loginButtons").css("visibility", "hidden");
	var url1 = "SignIn.jsp";
	 
    $.ajax({
        url: url1,
        context: document.body,
        success: function(html){                         
            $("#showLogin").html(html)
            //alert(showLogin);
        }
    });
}