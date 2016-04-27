 <%@include file="../include/conn_open.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Forgot Password?</title>

       <link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/logincss.css">
		<script type="text/javascript" src="js/captch.js"></script>
    
		
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    
 	<script type="text/javascript">
 		function secq(){
 		var eid = document.getElementById("InputEmailRset").value;
 		<% String eid2 = "id"; 
 			String eid3;
 		%>
 		<%= eid2 %> = eid;

		var n = eid.indexOf("@");
		<% String qs = "ques"; %>
		if(n>1){ 	
 		alert(<%= eid2 %>);
 		
 		<%
 		 try{ 
 		
 		rs = st.executeQuery("SELECT SECURITY_QUES FROM USERS_ACCOUNTS WHERE USER_EMAIL LIKE '"+eid2+"%'");
 			while(rs.next())
 			qs = rs.getString("SECURITY_QUES");
 			}catch(Exception e){}
 		 %>
 		 alert(<%= qs %>);
 		}
 		}
 		
 	</script>
    
    
  </head>
  <body class="main">
   
   
   
   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">		
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><img src="img/slider/mietLogo.jpeg" class="img-thumbnail img-responsive" alt="MIET Group" width="108" height="auto" STYLE="position:absolute; TOP:12px; LEFT:50px; WIDTH:100px; HEIGHT:70px; opacity: 0.7;
    filter: alpha(opacity=70);" ></a></div>
	
	</div>
	</nav>
      
		<div class="Container-fluid loginback">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-md-push-3 col-sm-push-3 well" style="opacity: 0.85;">
				<form onsubmit="return formVerify()" action="/forgetP" method="post">
					<div class="form-group">
						<h2 class="text-center">Forgot Password ?</h2>
  					</div>
  					<div class="form-group">
    				 <label for="InputEmail">Enter your e-mail address below to reset your password.</label>
   					 <input type="email" class="form-control" id="InputEmailRset" placeholder="Email" name="UEmail" autocomplete="off" required oninput="secq()">
  					</div>
  					<div class="form-group">
  						
  						<label for="InputSecurity"> your Security Question.</label>
  					<input type="text" class="form-control" id="InputSecurityQues" placeholder="Question" name="secQuestion" autocomplete="off" disabled>
  					<!--	<select class="form-control" name="Security" id="secQues">
  							<option value="" selected disabled="disabled">Select Your security Question </option>
  							<option value="What time of the day were you born? (hh:mm)">
  								What time of the day were you born? (hh:mm)
  							</option>
  							<option value="What are the last 5 digits of your dring license number?">
  								What are the last 5 digits of your driving license number?
  							</option>
  							<option value="Where were you when you had your first alcoholic drink (or cigarette)?">
  								Where were you when you had your first alcoholic drink (or cigarette)?
  							</option>
  							<option value="What was the house number and street name you lived in as a child?">
  								What was the house number and street name you lived in as a child?
  							</option>
  							
  						</select> -->
  					</div>
  					<div class="form-group">	
  						
  						<label for="InputSecurityAns">Answer For Security Question.</label>
   						<input type="text" class="form-control" id="InputSecurityAns" placeholder="Answer" name="answer" autocomplete="off" required>
  					
  						
  					</div>
  					<div class="form-group">
  						<div id="html_element"></div>
  					</div>
  				
   					<div class="form-group">
   					
  					<button type="submit" class="btn btn-info pull-right">Submit</button>
  										 				
  				</div>
  				<div class="form-group">
  				<a href="SignIn.html"><input type="button" class="btn btn-info pull-left" value="Back" /></a>
  				</div>
  				
  				</form>
  				
  			</div>
		</div>
	</div>
	<footer id="footer">
			<div class="container">
				<div class="row text-center">
					<div class="footer-content">
						<p style="color: white; font-size: 1.3em;">Copyright &copy; 2015-2016 <a href="http://www.mitmeerut.ac.in"> <h4> Mit, Meerut </h4></a> </p> 
					</div>
				</div>
			</div>
		</footer>

      <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
    
    <script type="text/javascript">
     $(document).ready(function() {
     document.body.style.backgroundImage = "url('img/slider/banner.jpg')";
    
   });
     
     </script>
  </body>
</html>