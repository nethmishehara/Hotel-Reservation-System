package wedding;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateDetails")
public class updateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String showNo = request.getParameter("showNo");
		String username = request.getParameter("show_username");
		String name = request.getParameter("show_name");
		String venue = request.getParameter("show_venue");
		String date = request.getParameter("show_date");
		String participants = request.getParameter("show_participant");
		String event = request.getParameter("show_event");
		String start_time = request.getParameter("show_start");
		String end_time = request.getParameter("show_end");
		
		boolean isCorrect;
		
		isCorrect = wedding.updateData(showNo,username, name, venue, date, participants, event, start_time, end_time);
		
		if (isCorrect == true) {
			RequestDispatcher dis = request.getRequestDispatcher("wedding_show_details.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
