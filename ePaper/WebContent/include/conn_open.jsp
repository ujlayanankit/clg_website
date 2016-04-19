<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%! Connection com;
Statement st;
String cr;
PrintWriter pw;
ResultSet rs,rs2;
int sem;

%>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	com=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/examhai","mitexam","sorry@p");
	st=com.createStatement();
	pw=response.getWriter();
	
	
	
}catch(Exception p){
	//p.printStackTrace();
	//pw.println("Login Failed...!");
}

	%>