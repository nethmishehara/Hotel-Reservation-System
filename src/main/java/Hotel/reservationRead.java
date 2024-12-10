package Hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reservationRead")
public class reservationRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		try {
			List<Customer1> cusDetails = reservation.getCustomerDetails(email);
			request.setAttribute("cusDetails", cusDetails);
		
	}
		catch(Exception e) {
	        e.printStackTrace();
	    }
	    request.getRequestDispatcher("reservation2.jsp").forward(request, response);
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
