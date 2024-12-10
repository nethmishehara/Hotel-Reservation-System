package wedding;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/weddingReservation")
public class weddingReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("yourName");
		String name = request.getParameter("reserveName");
		String venue = request.getParameter("hotels");
		String date = request.getParameter("selectDate");
		String participants = request.getParameter("parti");
		String event = request.getParameter("eventType");
		String start_time = request.getParameter("start");
		String end_time = request.getParameter("end");
		
		boolean isTrue;
		isTrue = wedding.addData(username, name,  venue, date, participants, event, start_time, end_time);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("wedding_reservation.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
