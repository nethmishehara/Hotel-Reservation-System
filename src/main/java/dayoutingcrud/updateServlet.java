package dayoutingcrud;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateServlet
 */
@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String contact = request.getParameter("ContactNo");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String guest = request.getParameter("Guest");
		String event = request.getParameter("event");
		
		
		boolean isCorrect;
		
		isCorrect = dayouting_dbUtil.updateData(name,address , contact, date, time, guest, event);
		
		if (isCorrect == true) {
			RequestDispatcher dis = request.getRequestDispatcher("dayRead.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}






}


