package wedding;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






@WebServlet("/signupData")
public class signupData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String contactNo = request.getParameter("contact");
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		String cfm_password = request.getParameter("cfm_pwd");
		
		boolean isTrue;
		
		isTrue = signup.insertData(name,  address, email, contactNo, username, password, cfm_password);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("login.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}
	}

