/* function teacherLogin(){
	//window.location = "RegistrationFaculty.html";
	window.location = "check?mode=fac"
}

function studentLogin(){
	window.location = "RegistrationStudent.html"
	
	
} */




function u_id()
{
	 $(document).ready(function() {
			$("#forFacOrStu").show();
		});
	var selectBox = document.getElementById("u_type");
	var sel_u_type = selectBox.options[selectBox.selectedIndex].value;
	if (sel_u_type=="fac") 
	{
		document.getElementById("facorstu").innerHTML = "Faculty ID";
		document.getElementById("InputID").placeholder = "Faculty ID";
	} 
	else if(sel_u_type=="stu")
	{
		document.getElementById("facorstu").innerHTML = "Student Roll No.";
		document.getElementById("InputID").placeholder = "Roll No";
	}
}

function secQuesn()
{
	 $(document).ready(function() {
		 
		 var selectBox = document.getElementById("secQues");
			var selQu = selectBox.options[selectBox.selectedIndex].value;
			if(selQu=="others")
				{
				$("#otherSec").show(); 
				}
			else
				{
				$("#otherSec").hide();
				}
				
		});
}




function formVerify()
{
	 var U_mail = document.forms["RegForm"]["userEmail"].value;
	 var U_Otr_Ques = document.forms["RegForm"]["otherSecQues"].value;
	 //alert(U_mail);
	 //alert(U_Otr_Ques);
	
	// return false;
}