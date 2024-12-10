package wedding;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteData")
public class deleteData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("showNo");
		boolean isTrue;
		
		isTrue = wedding.deleteData(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("wedding_show_details.jsp");
			dispatcher.forward(request, response);
        }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher1.forward(request, response);
		}
	}

}
