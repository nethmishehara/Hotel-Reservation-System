package Hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/reservationDelete")
public class reservationDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		boolean isTrue;
		
		isTrue = reservation.reservationDelete(email);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("reservation2.jsp");
			dispatcher.forward(request, response);
       }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("unsucessjsp.jsp");
            dispatcher1.forward(request, response);
            
		}
	}

}
