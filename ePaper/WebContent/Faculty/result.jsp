   <%@include file="../include/conn_open.jsp" %> 
        <!-- /. NAV SIDE  -->
                    <div id="page-inner">
                <div class="row">
                    <div class="col-md-12 ">
                     <h2>Result</h2>   
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
               <div class="row">
                <div class="col-md-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form Element
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <select class="form-control" name="selectBranch" id="Branches" onchange="selBr()" required>
  		 	<option value="" selected disabled="disabled">Select Branch</option>
  		<%	try{
		   rs=st.executeQuery("Select * from Branch");
		  while(rs.next())
			{%>
		<option value="<%= rs.getString("Br_code") %>">     
     	<%= rs.getString("Br_Name")%>
     	</option>
       	<% }
  		}
		catch(Exception e){
			
		}%>
  			</select>
  			<button class="btn btn-raised btn-success pull-right"> View Responses </button>
                              
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>
                <!-- /. ROW  -->
                
                <!-- /. ROW  -->
    </div>
             <!-- /. PAGE INNER  -->
           
         <!-- /. PAGE WRAPPER  -->
         
             <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
	<!-- the fileinput plugin initialization -->

    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
        
