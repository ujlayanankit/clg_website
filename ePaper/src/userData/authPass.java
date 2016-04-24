package userData;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class authPass
 */
@WebServlet("/authPass")
public class authPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public authPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String user_id = request.getParameter("eMail");
		String user_pass = request.getParameter("pASSWORD");
		System.out.println(user_id+ " "+ user_pass);
		String[] check = auth(user_id,user_pass);
		System.out.println("asds"+check[0]);
		if(check[0].equals("not"))
		{
			System.out.print("fail");
			response.sendRedirect("AuthFail.jsp");
		}
		else
		{
			System.out.println(" "+ check[0]+ " "+ check[1]+ " "+ check[2] + " "+ check[3]);
			//response.sendRedirect("AuthPassed.jsp");
			if(check[2].equals("fac"))
			{
				HttpSession session = request.getSession(false);
				session.setAttribute("name", check[1]);
				session.setAttribute("user_id", check[3]);
			response.sendRedirect("Faculty/index.jsp");
			}
		}
	}
	private String[] auth(String user_id, String user_pass ) {
		Connection com;
	    Statement st;
	    ResultSet rs1,rs2;
	    String pass ="";
	    String[] rtn ={"","","",""};
	     try
	      {
	    	//Class.forName("oracle.jdbc.driver.OracleDriver");
		    //com=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:xe","Exam","sorry");
	    	  Class.forName("com.mysql.jdbc.Driver");
			    //	System.out.println("done1");
			    	com=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/examhai","mitexam","sorry@p");
	    	 st=com.createStatement();
		    System.out.println("Select PASSWORD from USERS_ACCOUNTS where USER_EMAIL='"+user_id+"'");
		    rs1=st.executeQuery("Select PASSWORD from USERS_ACCOUNTS where USER_EMAIL='"+user_id+"'");
		    while(rs1.next())
		    	pass = rs1.getString("PASSWORD");
		    
		    String verify = (new passGen().userPass(pass, user_pass));
		    String uv = "not";
		    
		    rs2 = st.executeQuery("Select * from USERS_ACCOUNTS where USER_EMAIL='"+user_id+"'");
		    while(rs2.next())
		    {
		    	if(verify.equals(rs2.getString("U_PASS")))
		    	{
		    		//uv = "yes";
		    		rtn[0] = "yes";
			    	rtn[1] = rs2.getString("FULL_NAME");
			    	rtn[2] = rs2.getString("USER_TYPE");
			    	rtn[3] = Integer.toString(rs2.getInt("USER_ID"));
		    	}
		    	else
		    	{
		    		rtn[0] = "not";
		    		rtn[1] = "";
		    		rtn[2] = "";
		    		rtn[3] = "";
		    	}
		    }
		
		    com.close();
		    
	      }catch(Exception p){
		  System.err.print(p);
		}
			
		return rtn;
	}

}
