
    <div class="Container-fluid loginback">
		<div class="row" id="subc">
			<div class="col-md-6 col-sm-6 col-md-push-3 col-sm-push-3 well">
						
					<div class="form-group">
						<h2 class="text-center">Student Result View</h2>
  					</div>

					
				
					<select class="form-control">
					<option selected disabled>Subject</option>
					<option>Mobile Computing</option>
					<option>Distributed System</option>
					<br>
					
					</select>
				
					<br>
					<div class="form-inline">	
					 <!-- <button type="button" class="btn btn-primary btn-block" onclick= "href= '/Student_Result_View_Response.html' " >View Result</button> -->
					 
					 <button type="button" class="btn btn-default center-block" onclick="prosr()" >View Result</button>
					
					 </div>
					<br>
					<br>
				</div>
				</div>
				<div class="row" id="resc">
				</div>	
<script type="text/javascript">
	function prosr(){
	$("#resc").load("Student_Result_View_Response.jsp");
    //  $("#assig").show();
      $("#subc").hide();	
}
</script>