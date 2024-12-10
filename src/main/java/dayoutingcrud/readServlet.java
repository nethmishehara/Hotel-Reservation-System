package dayoutingcrud;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/readServlet")
public class readServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("search");
		
		try {
			List<Customer>cusDetails = dayouting_dbUtil.getCustomerDetails(username);
			request.setAttribute("cusDetails", cusDetails);
		
	}
		catch(Exception e) {
	        e.printStackTrace();
	    }
	    request.getRequestDispatcher("dayRead.jsp").forward(request,response);
	}
		
	}


