
      <%@include file="../include/conn_open.jsp" %>
  
  
    <script type="text/javascript" src="../js/examPaperBuilder.js"></script> 
         <div class="col-md-12 col-sm-10">
			<div class="form-group">
       	<h2 class="pull-left">Prepare Examination Paper</h2> 
       	</div>
       	<hr />
       	<div class="row">
    	<div class="col-md-12">
    	<div class="panel panel-default">
    	<div class="panel-body">
          <div class="row">
           <div class="col-md-12">
   		<form method="get" action="examForm.jsp">
   		<div class="form-group">
			<label for="selectSubject">Branch</label>
			<select class="form-control" name="selectBranch" id="Branches" onchange="selBr()" required>
  		 	<option value="" selected disabled="disabled">Select  </option>
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
  		
  			</div>
			<div class="form-group">
			<label for="selectSubject">Subject</label>
			<select class="form-control" name="selectSubject" id="examSubjects" onchange="selSub()" required>
  		 	<option value="" selected disabled="disabled">Select  </option>
  		<%	try{
		   rs=st.executeQuery("Select * from Subject");
		  while(rs.next())
			{%>
		<option value="<%= rs.getString("Sub_Code") %>">     
     	<%= rs.getString("Sub_Name")%>
     	</option>
       	<% }
  		}
		catch(Exception e){
			
		}%>
  			</select>
  			</div>
  			<!-- 	<div class="form-group">
			<label for="selectSem">Subject</label>
			<select class="form-control" name="selectSem" id="Sem" onchange="selSem()" required>
  		 	<option value="" selected disabled="disabled">Select  </option>
  		<%	try{
		   rs=st.executeQuery("Select * from Sem");
		  while(rs.next())
			{%>
		<option value="<%= rs.getString("Sem_code") %>">     
     	<%= rs.getString("Sem_Name")%>
     	</option>
       	<% }
  		}
		catch(Exception e){
			
		}%>
  			</select>
  			</div> -->
  			<div class="form-group">
  			<label for="maxMark">Maximum Marks</label>
			<input type="number" class="form-control" id="InpMaxMarks" placeholder="0" name="maxMark" onkeyup="markMax()" required>
  			</div>
  			<div class="form-group">
			<label for="totalSection">Total Section</label>
			<select class="form-control" name="totalSection" id="InpTotalSection" onchange="addRow()" required>
  			<option value="" selected disabled="disabled">Select  </option>
  			<option value="1" > 1. </option>
  			<option value="2" > 2. </option>
  			<option value="3" > 3. </option>
  			<option value="4" > 4. </option>
  			<option value="5" > 5. </option>
  			</select>
  			</div>
  			<div class="form-group table-responsive">
			<table class="table table-bordered" id="myTableData">
    		<div>
			<thead> 
      		<tr>
        	<th>Section</th>
        	<th>Max. Ques.</th>
        	<th>Max. Attempt</th>
        	<th>Marks</th>
      		</tr>
    		</thead>
			</div>
			<div id="myDynamicTable">
			</div>
	 		</table>
			</div>
			<div class="form-field">
     	<button class="btn btn-default btn-lg pull-right" style="background:#202020; color:#fff;" onclick="examform()">  Done </button>
     	</div>
  	</form>
  	</div>
    </div>
     </div>
     </div>
    </div>
    </div>
    </div>
  


