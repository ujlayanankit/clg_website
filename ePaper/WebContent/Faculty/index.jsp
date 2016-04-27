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
   <link rel="stylesheet" href="../css/logincss.css">
        <!-- CUSTOM STYLES-->
    <link href="../css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='../css/gfont.css' rel='stylesheet' type='text/css' />
  <style type="text/css">
    .image{
    width:120px;
    height:120px
  }
  </style>
  
</head>
<body onload="dashboard();">
	<%
    String Names = (String) session.getAttribute("name");
    //session.removeAttribute("name");
    String Email = (String) session.getAttribute("email");
    //session.removeAttribute("email");
    String User_Id = (String) session.getAttribute("user_id");
    //session.removeAttribute("user_id");
    String dsgntn="";
    String brName = "";
    int brCrd=0,phone=0;
    Date date= null;
    try{
    rs = st.executeQuery("SELECT * FROM `FACULTY` WHERE `FAC_ID` ='"+User_Id+"'");
    while(rs.next()){
    brCrd = rs.getInt("Branch_CODE");
    date = rs.getDate("JOIN_DATE");
    phone = rs.getInt("PHONE");
    dsgntn = rs.getString("Design");
    }
    rs = st.executeQuery("SELECT `Br_Name` FROM `Branch` WHERE `Br_code` = '"+brCrd+"'");
    
    while(rs.next()){
    brName = rs.getString("Br_Name");
    }
    Names = Names.replace(" ", "%20");
    brName = brName.replace(" ", "%20");
    dsgntn = dsgntn.replace(" ", "%20");
    }catch(Exception e){}
     %>
     
    <%	
    System.out.print(Names+" "+Email+" "+User_Id+" "+brName+" "+date+" "+phone+" "+dsgntn); 
    if(Names== null){
    	//response.sendRedirect("../AuthFail.jsp");
    } %>
    <div id="wrapper">
        <nav class="navbar navbar navbar-inverse navbar-fixed-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
				    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">
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
                       <% for(int i=0; i<3; i++){ %>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Artificial Intelligence Assignment</strong>
                                    <span class="pull-right text-muted">
                                        <em>Submission Apr 23,2016</em>
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
                        <li><a onclick="ldProfile()"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        
                        <li><a href="../SignIn.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
				
                <!--    <img src="facimg/find_user.png" class="user-image img-responsive"/> -->
					</li>
				
					<br><br>
                    <li>
  <button class="btn btn-default  btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="dashboard()"><i class="fa fa-dashboard fa-3x"></i> Dashboard</button>
                    </li>
                    
                     <li>              
						   <li>
  <button class="btn btn-default  btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="examprep()">
     <i class="fa fa-bar-chart-o fa-3x"></i> Prepare Exam </button>
                    </li>	
                      <li  >
   <button class="btn btn-default btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="assign()">  
          <i class="fa fa-edit fa-3x"></i> Assignments  </button>
                          </li>
                    <li  >
   <button class="btn btn-default btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="result()"> 
       <i class="fa fa-table fa-3x"> </i> Result </button>
                       </li>				
					 <li  >
<button id="logout" class="btn btn-default btn-lg text-left" style="width:100%; background:#202020; color:#fff;" onclick="SignIn.html"><i class="fa fa-bolt fa-3x"></i> Logout </button>
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
                  <div class="col-md-12" id="loadExamPrep" style="display: none;"></div>
                   <div class="col-md-12" id="loadExamForm" style="display: none;"></div>
                <div class="col-md-12" id="loadresult" style="display: none;"></div>
                 <div class="col-md-12" id="loadProfile" style="display: none;"></div>
                  <div class="col-md-12" id="loadassign" style="display: none;"></div>
                  <div class="col-md-12" id="testid"></div>
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
	function examprep(){
	
     $("#loadExamPrep").load("ExamPaperBuilder.jsp");
      $("#loadExamPrep").show();
      $("#loadExamForm").hide();
      $("#testid").hide();
      $("#loadresult").hide();
      $("#loadassign").hide();
       $("#loadProfile").hide();
      
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
		 $("#loadProfile").hide();
	}
	</script>
	 <script>
	function result(){
		
      $("#loadresult").load("Fac_result.jsp");
      $("#loadresult").show();
      $("#testid").hide();
      $("#loadExamPrep").hide();
      $("#loadExamForm").hide();
      $("#loadassign").hide();
       $("#loadProfile").hide();
	}
	</script>
	 <script>
	function assign(){
		
      //$("#assignload").html('<object data="assign.jsp">');
      $("#loadassign").load("assign.jsp");
      $("#loadassign").show();
      $("#testid").hide();
      $("#loadExamPrep").hide();
      $("#loadExamForm").hide();
      $("#loadresult").hide();
       $("#loadProfile").hide();
	}
	</script>
	 <script>
	function dashboard(){
		
      //$("#assignload").html('<object data="assign.jsp">');
     
      $("#testid").load("Dashboard.jsp?name="+'<%= Names %>');
      $("#testid").show();
      $("#loadExamPrep").hide();
      $("#loadExamForm").hide();
      $("#loadresult").hide();
      $("#loadassign").hide();
     $("#loadProfile").hide();
      
	}
	</script>
	<script type="text/javascript">
	function ldProfile(){
		
      $("#loadProfile").load("FacProfile.jsp?name="+'<%= Names %>'+"&email="+'<%= Email%>'+"&uID="+'<%= User_Id %>'+"&brname="+'<%= brName%>'+"&date="+'<%= date%>'+"&phone="+'<%= phone %>'+"&dsntn="+'<%= dsgntn%>');
      $("#loadProfile").show();
      $("#loadExamPrep").hide();
      $("#loadExamForm").hide();
      $("#loadresult").hide();
      $("#loadassign").hide();
      $("#testid").hide();
     
      
	}
	</script>
   <script type="text/javascript">
    document.getElementById("logout").onclick = function () {
        location.href = "../SignIn.html";
    };
    
</script>

</body>
</html>
