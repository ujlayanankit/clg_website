<%@ page import="java.sql.*" %>
 <%@ page import="java.io.*" %> 
     
     <% System.out.println("test 1"); %>
     <%! Connection com;
Statement st;
ResultSet rs;

%>
<%
	 try
	      {
	      	
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
	    	System.out.println("test");
		    com=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:xe","Exam","sorry");
		    st=com.createStatement();
		    
		     rs=st.executeQuery("Select * from BTECHSUBJECTS");
		      %>
		   
		 <option value="" selected disabled="disabled">Select  </option>
		    <%  while(rs.next())
		{
		%>
		   
		   <option value="<%= rs.getString("SUB_NAME") %>">
		   <%= rs.getString("SUB_NAME")%>  </option>
	      <%
	      }
	      }catch(Exception e){}
	       %>
     
 