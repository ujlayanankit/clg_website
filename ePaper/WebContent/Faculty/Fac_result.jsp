
  

    
			<div class="col-md-12 col-sm-10 well">
			
		
					<div class="form-group">
						<h2 class="text-center"> Faculty Result </h2>
  					</div>

					
					
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
					 <!-- <button type="button" class="btn btn-primary btn-block" onclick= "href= '/Student_Result_View_Response.html' " >View Result</button> -->
					 
					<button class="btn btn-default center-block"  onclick="Stu_response()">View Responses
					</button></div>
					
					 </div>
					<br>
					<br>
					
					<div id="loadStuResponse">
					
					</div>
					
	<script>
	function Stu_response(){
		
	      $("#loadStuResponse").load("StuResponse.jsp");
	     
	     return true;
		}
	</script>

   <script type="text/javascript">
    document.getElementById("logout").onclick = function () {
        location.href = "login.html";
    };
</script>
					
	
    