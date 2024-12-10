package Hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/reservationinsert")
public class resevationInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String date2 = request.getParameter("date2");
		String no  = request.getParameter("no");
		String rtype  = request.getParameter("rtype");
	    String spreq = request.getParameter("spreq");
		String username = request.getParameter("username");
		String password= request.getParameter("password");
		 
		boolean isTrue;
		
		isTrue = reservation.insertData(email, date , date2, no, rtype, spreq ,username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("reservation2.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucessjsp.jsp");
			dis2.forward(request, response);
		}
	}

}
