package Hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/reservationupdate")
public class reservationUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			
			
			String s_email=request.getParameter("s_email");
			 String s_date=request.getParameter("s_date");
			 String s_date2=request.getParameter("s_date2");
			 String s_no=request.getParameter("s_no");
			 String s_rtype=request.getParameter("s_rtype");
			 String s_spreq=request.getParameter("s_spreq");
			 String s_username=request.getParameter("s_username");
			 String s_password=request.getParameter("s_password");
			 
			
			boolean isCorrect;
			
			isCorrect = reservation.updateData(s_email,s_date, s_date2, s_no, s_rtype, s_spreq, s_username, s_password );
			
			if (isCorrect == true) {
				RequestDispatcher dis = request.getRequestDispatcher("reservation2.jsp");
				dis.forward(request, response);
			}
			
			else {
				RequestDispatcher dis = request.getRequestDispatcher("unsucessjsp.jsp");
				dis.forward(request, response);
				
			}
		}

	}
   
	


