package feedcak;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/feedbackDservlet")
public class feedbackDservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		boolean isTrue;
		
		isTrue = Feedback.deleteFeedback(email);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
        }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher1.forward(request, response);
		}
		doGet(request, response);
	}

}
