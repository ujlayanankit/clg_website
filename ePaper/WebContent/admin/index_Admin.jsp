<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/conn_open.jsp" %>
<!DOCTYPE html>
<html>
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="../css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
   <link rel="stylesheet" href="assets/css/logincss.css">
        <!-- CUSTOM STYLES-->
    <link href="../css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href="../css/gfont.css" rel='stylesheet' type='text/css' />
  <style type="text/css">
    .image{
    width:120px;
    height:120px
      }
      
  </style>
  <style type="text/css"> 
#wrapper {
    
    overflow: hidden;
}
</style>
 </head>
<body onload="Dashboard();">
    
    <div id="wrapper">
        <nav class="navbar navbar-inverse navbar-fixed-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
				    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
                <a class="navbar-brand" href="index_Admin.jsp"> 
				<img src="../img/mietLogo.jpeg" class="img-thumbnail img-responsive" alt="MIET Group" width="auto" height="auto" style="position:absolute; TOP:0px; LEFT:20px; WIDTH:200px; HEIGHT:62px; opacity: 0.9s; filter: alpha(opacity=70);"></a> 
				
            </div>
		<!--	<div style="color: white;
			padding: 15px 50px 5px 50px;
			float: left;
			font-size: 16px;">	-->	
			<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                       <% for(int i=0; i<2; i++){ %>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Approve Pending Requests</strong>
                                    <span class="pull-right text-muted">
                                        <em>Apr 23,2016</em>
                                    </span>
                                </div>
                                
                            </a>
                        </li>
                        <li class="divider"></li>
                       <% } %>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
               
                
				<li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="index_Admin.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        
                        <li><a href="SignIn.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul></nav> 
			
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                <br><br>
				<li class="text-center"> 
				
                   <img src="assets/img/find_user.png" class="user-image img-responsive"/> 
					</li>
				
					
                    <li>
  <button class="btn btn-default  btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="Dashboard()"><i class="fa fa-dashboard fa-3x"></i> Dashboard</button>
                    </li>
                    
                     <li>              
						   <li>
  <button class="btn btn-default  btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="eventsched()">
     <i class="fa fa-bar-chart-o fa-3x"></i> Event Schedule </button>
                    </li>	
                      <li  >
   <button class="btn btn-default btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="UserMg()">  
          <i class="fa fa-edit fa-3x"></i> Manage Users  </button>
                          </li>
                   <!--   <li  >
   <button class="btn btn-default btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="result()"> 
       <i class="fa fa-table fa-3x"> </i> Requests </button>
                       </li> -->					   
					 <li>
<button  id="logout" class="btn btn-default btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="SignIn.jsp">
<i class="fa fa-bolt fa-3x" ></i> Logout </button>


<!--
 <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
-->

                    </li>	
                </ul>
            </div>
        </nav>
		
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
             
                <hr />                
               
                 <!-- /. ROW  -->
                <div class="row"> 
                  <div class="col-md-12" id="loadEventSched" style="display: none;"></div>
                   <div class="col-md-12" id="loadExamForm" style="display: none;"></div>
                <div class="col-md-12" id="loadresult" style="display: none;"></div>
                  <div class="col-md-12" id="loadUserMg" style="display: none;"></div>
                  <div class="col-md-12" id="testid">                 
                  </div>
                </div>
                 <!-- /. ROW  -->
                
                </div>
                          
    		</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
       
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
	<!-- the fileinput plugin initialization -->

    <script src="../js/jquery.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="../js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     
      <!-- CUSTOM SCRIPTS -->
    <script src="../js/custom.js"></script>
    <script type="text/javascript">
    $(function(){
    $('#profile_image').change( function(e) {
        
        var img = URL.createObjectURL(e.target.files[0]);
        $('.image').attr('src', img);
    });
});
  </script>
  <script>
	function eventsched(){
	
     $("#loadEventSched").load("EventSchedule.jsp");
      $("#loadEventSched").show();
      $("#loadExamForm").hide();
      $("#testid").hide();
      $("#loadresult").hide();
      $("#loadUserMg").hide();
	}
	</script>
		<script>
	function examform(){
		
      //$("#assignload").html('<object data="assign.jsp">');
      $("#loadExamForm").load("examForm.jsp");
      $("#loadExamForm").show();
      $("#loadExamPrep").hide();
      $("#testid").hide();
      $("#loadresult").hide();
      $("#loadassign").hide();

	}
	</script>
	 <script>
	function result(){
		
      $("#loadresult").load("Student_Result_View.jsp");
      $("#loadresult").show();
      $("#testid").hide();
      $("#loadExamPrep").hide();
      $("#loadExamForm").hide();
      $("#loadassign").hide();
	}
	</script>
	 <script>
	function UserMg(){
		
      //$("#assignload").html('<object data="assign.jsp">');
      $("#loadUserMg").load("UserMgmt.jsp");
      $("#loadUserMg").show();
      $("#testid").hide();
      $("#loadEventSched").hide();
      $("#loadExamForm").hide();
      $("#loadresult").hide();
	}
	</script>
	 <script>
	function Dashboard(){
		
      //$("#assignload").html('<object data="assign.jsp">');
      $("#testid").load("Dashboard.jsp");
      $("#testid").show();
      $("#loadEventSched").hide();
      $("#loadExamForm").hide();
      $("#loadresult").hide();
      $("#loadUserMg").hide();
     
      
	}
	</script>
	
	<!--
	 <script>
	function dashboard(){
      //$("#assignload").html('<object data="assign.jsp">');
      $("#testid").load("Dashboard.jsp");
      $("#testid").show();
      $("#loadExamPrep").hide();
      $("#loadExamForm").hide();
      $("#loadresult").hide();
      $("#loadassign").hide(); 
	}
	</script>
	-->
   <script type="text/javascript">
    document.getElementById("logout").onclick = function () {`  
    location.href = "SignIn.jsp";
    };
</script>
</body>
</html>
