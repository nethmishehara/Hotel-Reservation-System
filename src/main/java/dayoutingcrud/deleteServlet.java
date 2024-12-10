package dayoutingcrud;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		boolean isTrue;
		
		isTrue = dayouting_dbUtil.deleteData(name);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("dayRead.jsp");
			dispatcher.forward(request, response);
        }
		
		else {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher1.forward(request, response);
		}
	}


	}


