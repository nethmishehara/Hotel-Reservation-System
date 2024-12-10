package feedcak;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedbackUservlet")
public class feedbackUservlet extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String additionalDetail = request.getParameter("additionalDetail");
		
		
		boolean isCorrect;
		
		isCorrect = Feedback.updateData(username, email, subject, additionalDetail);
		
		if (isCorrect == true) {
			RequestDispatcher dis = request.getRequestDispatcher("feedbackRead.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}


