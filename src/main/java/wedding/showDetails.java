package wedding;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showDetails")
public class showDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("search");
		
		try {
			List<Customer> cusDetails = wedding.getCustomerDetails(username);
			request.setAttribute("cusDetails", cusDetails);
		
	}
		catch(Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("wedding_show_details.jsp").forward(request, response);
	}

}
