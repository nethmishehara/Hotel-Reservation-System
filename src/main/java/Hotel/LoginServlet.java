package Hotel;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String username = request.getParameter("username");
		String password= request.getParameter("password");
		 
		boolean isTrue;
		
		isTrue = reservation.login(username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("Home.jsp");
			dis1.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Invalid Username or Password');");
			out.println("location='login.jsp';");
			out.println("</script>");
		}
	}

}
