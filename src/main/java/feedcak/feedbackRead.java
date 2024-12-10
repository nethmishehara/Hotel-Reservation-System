package feedcak;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbackRead
 */
@WebServlet("/feedbackRead")
public class feedbackRead extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String email = request.getParameter("email");
		
		try {
			List<customer4> cusDetails = Feedback.getCustomerDetails(email);
			request.setAttribute("cusDetails", cusDetails);
		
	}
		catch(Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("feedbackRead.jsp").forward(request, response);
	}
	

}
