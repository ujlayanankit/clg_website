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
 * Servlet implementation class visitor
 */
@WebServlet("/visitor")
public class visitor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public visitor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Subject = (request.getParameter("subject")).replaceAll("\'", "^");
		String Msg = request.getParameter("message").replaceAll("\'", "^");
		System.out.println("INSERT INTO USERS_ACCOUNTS VALUES ('"+Name+"','"+Email+"','"+Subject+"','"+Msg+"')");
		Connection com;
	    Statement st;
		try
	      {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
		    com=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:xe","Exam","sorry");
		    st=com.createStatement();
		    st.executeUpdate("INSERT INTO VISITOR_FEEDBACK VALUES ('"+Name+"','"+Email+"','"+Subject+"','"+Msg+"')");
		    com.close();
		  }catch(Exception p){
		  }
		response.sendRedirect("Visitor.html");
	}

}
