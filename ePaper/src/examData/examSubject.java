package examData;

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

/**
 * Servlet implementation class examSubject
 */
@WebServlet("/examSubject")
public class examSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public examSubject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		//String fac = request.getParameter("facID");
		System.out.print("test");
		PrintWriter pr = new PrintWriter(response.getWriter());
		Connection com;
	    Statement st;
	    ResultSet rs;
		 try
	      {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
		    com=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:xe","Exam","sorry");
		    st=com.createStatement();
		 //   st.executeUpdate("INSERT INTO USERS_ACCOUNTS VALUES ('"+full_Name+"','"+user_Type+"',"+u_id+",'"+user_Email+"','"+sec_question+"','"+answer+"','"+IS_AUTHORIZ+"','"+IS_VIEW+"','"+PASSWORD+"','"+U_PASS+"')");
		    rs=st.executeQuery("Select * from BTECHSUBJECTS");
		    while(rs.next())
		    {
		    	pr.print(" <option value="+ rs.getString("SUB_NAME") + ">" +rs.getString("SUB_NAME")+"</option>");
		    }
		    com.close();
		    
	      }catch(Exception p){
		  System.err.print(p);
		  }	
	}

}
