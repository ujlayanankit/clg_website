package userData;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mail.EmailSendingServlet;;

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
	String recaptcha = request.getParameter("g-recaptcha-response");
	//System.out.println("Rec:- --* "+ recaptcha + "  ***-- done");
	
	
	
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
		
		String pas = dataEntry(full_Name, user_Type, user_Id, user_Email, sec_question, answer);
		request.setAttribute("recipient", user_Email);
		
		request.setAttribute("content"," Your Password is: "+ pas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/EmailSendingServlet");
		dispatcher.forward(request, response);
		//response.sendRedirect("regCnfm.jsp?mail="+user_Email);
	}
	String dataEntry(String full_Name,String user_Type,String user_Id, String user_Email, String sec_question, String answer)
	{
		int u_id = Integer.parseInt(user_Id);
		char IS_AUTHORIZ = 'N';
		
		String PASSWORD = (new passGen().userPass(user_Email,sec_question,answer));
		String genP = (new passGen().userPass(PASSWORD));
		System.out.println("\n User pass:---  "+ genP +"\n\n");
	
		String U_PASS = (new passGen().userPass(PASSWORD, genP));
		Connection com;
	    Statement st;
	    System.out.println("INSERT INTO USERS_ACCOUNTS (`FULL_NAME`, `USER_TYPE`, `USER_ID`, `USER_EMAIL`, `SECURITY_QUES`, `IS_AUTHORIZ`, `PASSWORD`, `U_PASS`) VALUES ('"+full_Name+"','"+user_Type+"',"+u_id+",'"+user_Email+"','"+sec_question+"','"+IS_AUTHORIZ+"','"+PASSWORD+"','"+U_PASS+"')");
	      try
	      {
	    	  Class.forName("com.mysql.jdbc.Driver");
		    //	System.out.println("done1");
		    	com=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/examhai","mitexam","sorry@p");
	    	//Class.forName("oracle.jdbc.driver.OracleDriver");
		    //com=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:xe","Exam","sorry");
		    st=com.createStatement();
		    st.executeUpdate("INSERT INTO USERS_ACCOUNTS (`FULL_NAME`, `USER_TYPE`, `USER_ID`, `USER_EMAIL`, `SECURITY_QUES`, `IS_AUTHORIZ`, `PASSWORD`, `U_PASS`) VALUES ('"+full_Name+"','"+user_Type+"',"+u_id+",'"+user_Email+"','"+sec_question+"','"+IS_AUTHORIZ+"','"+PASSWORD+"','"+U_PASS+"')");
		    com.close();
		    
	      }catch(Exception p){
		  System.err.print(p);
		  }	
	     
	    return genP;
	      
	}
}
