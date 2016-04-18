package userData;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * Servlet implementation class forgetP
 */
@WebServlet(description = "Its for setting the User Password", urlPatterns = { "/forgetP" })
public class forgetP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgetP() {
        super();
      
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_Email = request.getParameter("UEmail");
		String answer = request.getParameter("answer").replaceAll("\'", "");
		String sec_question = request.getParameter("Security");
		String PASSWORD = (new passGen().userPass(user_Email,sec_question,answer));
		String genP = (new passGen().userPass(PASSWORD));
		System.out.println("\n User pass:---  "+ genP +"\n\n");
		
		String U_PASS = (new passGen().userPass(PASSWORD, genP));
		
		Connection com;
	    Statement st;
	    String sub = "Your new Password";
	    String msg = "<h2>Dear user,</h2><br>"
	    		+ "<p>We understand your password is very important to you. We have genrated a new password for you and you can change it through your profile </p><br><br>"
	    		+ "<em>Your new password is</em>:- "+ genP;
	  //  System.out.println("INSERT INTO USERS_ACCOUNTS VALUES ('"+full_Name+"','"+user_Type+"',"+u_id+",'"+user_Email+"','"+sec_question+"','"+answer+"',"+IS_AUTHORIZ+"','"+IS_VIEW+"','"+PASSWORD+"','"+U_PASS+"')");
	      try
	      {
	    	  Class.forName("com.mysql.jdbc.Driver");
		    //	System.out.println("done1");
		    	com=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/examhai","mitexam","sorry@p");
	    	//Class.forName("oracle.jdbc.driver.OracleDriver");
		    //com=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:xe","Exam","sorry");
		    	
		    st=com.createStatement();
		   // st.executeUpdate("INSERT INTO USERS_ACCOUNTS VALUES ('"+full_Name+"','"+user_Type+"',"+u_id+",'"+user_Email+"','"+sec_question+"','"+answer+"','"+IS_AUTHORIZ+"','"+IS_VIEW+"','"+PASSWORD+"','"+U_PASS+"')");
		    com.close();
		    
	      }catch(Exception p){
		  System.err.print(p);
		  }	
	}
	
	
}
