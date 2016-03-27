package userData;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AccCreates")
public class AccCreates extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AccCreates() {
        super();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	String full_Name = request.getParameter("fullName");
	String user_Type = request.getParameter("userType");
	String user_Id = request.getParameter("userID");
	String user_Email = request.getParameter("userEmail");
	String answer = request.getParameter("secAnswer").replaceAll("\'", "");
	String sec_question = request.getParameter("Security");
		try{
		if(sec_question.equals("others"))
		{
			String othrSec = request.getParameter("otherSecQues").replaceAll("\'", "");
			if(othrSec.equals(""))
			{
				//response.wait(1);
				//new PrintWriter(response.getWriter()).print("<h3>All Fields are Mendatory...</h3>");
				response.sendRedirect("Registration.jsp");
			}
			else
			{
				sec_question = othrSec;
			}
		}
		/*
		System.out.println(full_Name);
		System.out.println(user_Type);
		System.out.println(user_Id);
		System.out.println(user_Email);
		System.out.println(sec_question);
		System.out.println(answer);*/
		}
		catch(NullPointerException nu)
		{
			new PrintWriter(response.getWriter()).print("<h3>All Fields are Mendatory.</h3>");
		}
		dataEntry(full_Name, user_Type, user_Id, user_Email, sec_question, answer);
		response.sendRedirect("regCnfm.jsp?mail="+user_Email);
	}
	void dataEntry(String full_Name,String user_Type,String user_Id, String user_Email, String sec_question, String answer)
	{
		int u_id = Integer.parseInt(user_Id);
		char IS_AUTHORIZ = 'N';
		char IS_VIEW = 'N';
		String PASSWORD = (new passGen().userPass(user_Email,full_Name));
		String U_PASS = (new passGen().userPass(PASSWORD, "password"));
		Connection com;
	    Statement st;
	    System.out.println("INSERT INTO USERS_ACCOUNTS VALUES ('"+full_Name+"','"+user_Type+"',"+u_id+",'"+user_Email+"','"+sec_question+"','"+answer+"',"+IS_AUTHORIZ+"','"+IS_VIEW+"','"+PASSWORD+"','"+U_PASS+"')");
	      try
	      {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
		    com=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:xe","Exam","sorry");
		    st=com.createStatement();
		    st.executeUpdate("INSERT INTO USERS_ACCOUNTS VALUES ('"+full_Name+"','"+user_Type+"',"+u_id+",'"+user_Email+"','"+sec_question+"','"+answer+"','"+IS_AUTHORIZ+"','"+IS_VIEW+"','"+PASSWORD+"','"+U_PASS+"')");
		    com.close();
		    
	      }catch(Exception p){
		  System.err.print(p);
		  }	
	     
	     
	      
	}
}
