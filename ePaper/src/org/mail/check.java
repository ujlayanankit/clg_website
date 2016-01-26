package org.mail;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 Connection com;
     Statement st;
     
    public check() {
        super();
        // TODO Auto-generated constructor stub
       
    }

   	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String mode = request.getParameter("mode");
		out.println("<h2>Hello:- </h2>"+ mode);	
		
		out.println("<!DOCTYPE html PUBLIC>"
				+"<html>"
				+"<head>"
				+"<title>Sign Up</title>"

			      +" <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">"
				+"</head>"
				+"<body>"
				+"<form>"
					+"<div class=\"form-group\">"
					+"	<h2 class=\"text-center\">Register for a new account</h2>"
  					+"</div>"
  					+"<div class=\"form-group\"><label for=\"InputNameRS\">Full Name</label>"
   					 +"<input type=\"text\" class=\"form-control\" id=\"InputNameRS\" placeholder=\"Name\" name=\"fulName\"></div>"
  					
  					+"<div class=\"form-group\">"
  					+"<button type=\"submit\" class=\"btn btn-default pull-right\">SignUp</button>"
  					+"</div>"
  				+"</form>"

  			+"</body>"
  			+"</html>");
	
		if(mode.equals("fac"))
		{
			//String entry = "INSERT INTO USER_ACCOUNT VALUES()";
		}
	}

}
