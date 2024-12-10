package feedcak;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbackInsert
 */
@WebServlet("/feedbackInsert")
public class feedbackInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username  = request.getParameter("Username");
		String Email = request.getParameter("Email");
		String Subject = request.getParameter("Subject");
		String AdditionalDetail = request.getParameter("AdditionalDetail");
		
		
		boolean isTrue;
		
		isTrue = Feedback.addData(username, Email, Subject, AdditionalDetail);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("feedbackRead.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
