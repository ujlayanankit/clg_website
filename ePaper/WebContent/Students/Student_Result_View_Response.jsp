<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Student Result</title>

       <link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/logincss.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="main">
  <!--
     <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">		
		<div class="navbar-header">
			
			<a class="navbar-brand" href="index.html"><img src="img/slider/mietLogo.jpeg" class="img-thumbnail img-responsive" alt="MIET Group" width="108" height="auto" STYLE="position:absolute; TOP:12px; LEFT:50px; WIDTH:100px; HEIGHT:70px; opacity: 0.7;
    filter: alpha(opacity=70);" ></a></div>
		</div>
	</nav>
  -->
    <div class="Container-fluid loginback">
		<div class="row">
			<div class="col-md-12 col-sm-10 well">
				<form action="authPass" method="post">
		
					<div class="form-group">
						<h2 class="text-center">Student Result</h2>
  					</div>

					<div class="form-group">
						<h2 class="text-center">%Subject Name%</h2>
  					</div>
					
					<!--
					 <select class="form-control">
					<option selected disabled>Branch</option>
					<option>IT</option>
					<option>CSE</option>
					<option>ME</option>
					<option>ECE</option>
					</select>
					<br>
					<select class="form-control">
					<option selected disabled>Subject</option>
					<option>Mobile Computing</option>
					<option>Distributed System</option>
					</select>
					<br>
					<select class="form-control">
					<option selected disabled>Semester</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					</select>
					<br>
					<select class="form-control">
					<option selected disabled>Student Roll Number</option>
					<option>Stu_Name</option>
					<option>Fac_Name</option>
					</select>
					
					<br>
					<div class="form-inline">	
					 <button type="button" class="btn btn-primary btn-block">View Result</button>
					 </div>
					<br>
					<br>
					-->
					
					
  					<div class="form-group">
    				 <label for="InputNotification">Question No. $%$</label>
   					 <input disabled type="question" class="form-control" id="Inputnotification" placeholder="question" name="notification">
  					</div>

					
					
				<br>

  					<div class="form-group">
   					 <label for="InputMessage">Answer Given</label>
   					 
					 <div class="form-group">
							<textarea disabled type="answer"  class="form-control" rows="5" id="answer" placeholder=" This is Answer. " name="message"></textarea>
						</div>
  					</div>

				
					

					
					<div class="form-group">
  				<a href="index.jsp"> <input type="button" class="btn btn-default pull-left" value="Go Back" /></a>
  				</div>
				<!--
  				<div class="form-group">	
  					<div class="form-inline">	
      					<button type="button" class="btn btn-primary btn-block">Go Back</button>
    					
    				</div>	
   					-->
  				</div>
  				</form>
  				
  			</div>
		</div>
	</div>
 
	
     <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
     $(document).ready(function() {
     document.body.style.backgroundImage = "url('img/slider/banner.jpg')";
    
   });
     
     </script>
  </body>
</html>