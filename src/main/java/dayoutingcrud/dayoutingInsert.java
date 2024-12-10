package dayoutingcrud;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dayoutingInsert")
public class dayoutingInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String add = request.getParameter("Add");
		String No = request.getParameter("ContactNo");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String NoOfGuests = request.getParameter("Guest");
		String event = request.getParameter("event");
		
		boolean isTrue;
		
		isTrue = dayouting_dbUtil.insertData(name, add, No, date, time, NoOfGuests, event);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("dayRead.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
		
		
		
	}

}
