<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>rservation3</title>
<link rel="stylesheet" type="text/css" href="nav-bar.css">
<link rel="stylesheet" type="text/css" href="reservation.css">
</head>
<body>
<header>

        <div class="name">
            <img src="image/logo.png" class="logo-name">
        </div>
    </header>


	<nav>
    
      <div class="navi-bar"><ul>
          <b><li class="btn"><a href="Home.jsp">Home</a></li></b>
          <b><li class="btn"><a href="wedding_reservation.jsp">Wedding Reservation</a></li></b>
          <b><li class="btn"><a href="dayouting.jsp">Day Out Packages</a></li></b>
          <b><li class="btn"><a href="reservation.jsp">Room Reservation</a></li></b>
          <b><li class="btn"><a href="feedback.jsp">Feedback</a></li></b>
          <b><li><a class="btn" href="Offers.jsp">Offers</a></li></b>
          <b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b>
       	  <b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b>
      </ul>
      </div>

	</nav>
	
    
  
            <%
        	String email = request.getParameter("email");
        	String date =request.getParameter("date");
        	String date2 =request.getParameter("date2");
        	String rtype =request.getParameter("rtype");
        	String no =request.getParameter("no");
        	String spreq =request.getParameter("spreq");
        	String username =request.getParameter("username");
        	String password =request.getParameter("password");
        	
        %>
            
            
  

          	

        <form class ="form" action = "updateRoom"  method = "post">
         <h1> <u>ROOM RESERVATION FORM</u></h1>
            
             <div class ="input-box">
                <label for = "s_email"> Email : </label>
                <input type ="email" id = "s_email" name = "s_email" value="<%=email %>" readonly>
             </div>

             <div class ="input-box">
                <label for = "s_date"> Check-In Date : </label>
                <input type ="date" id = "s_date" name = "s_date" value="<%=date %>" >
             </div>

             <div class ="input-box">
                <label for = "s_date2"> Check-Out Date : </label>
                <input type ="date" id = "s_date2" name = "s_date2" value="<%=date2 %>" >
             </div>

             <div class ="input-box">
                <label for = "s_no"> No Of Guests : </label>
                <input type ="text" id = "s_no" name = "s_no"  value="<%=no %>" >
             </div>

             <div class ="input-box">
                <label for = "s_rtype"> Room Type : </label>
                <input type ="text" id = "s_rtype" name = "s_rtype" value="<%=rtype %>"  >
  
            </div>


            <div class ="input-box">
                <label for = "s_spreq"> Special Request : </label>
                <input type ="text" id = "s_spreq" name = "s_spreq" value="<%=spreq %>" >
             </div>
             <h3>User Detail Conformation </h3>
             
             <div class ="input-box">
                <label for = "susername"> Username : </label>
                <input type ="text" id = "s_username" name = "s_username"  value="<%=username %>" >
             </div>
             <div class ="input-box">
                <label for = "spassword"> Password : </label>
                <input type ="password" id = "s_password" name = "s_password" value="<%=password %>" >
             </div>
         

             <div class ="btn">
                <input type="submit" id="button" class="button" name="button"value="Save" >
             
            </div>
           
        
        
    </form>
        

    </div>
 
   



<br><br>
    <footer>
		<table width="1512px" height="130px" class="footer-content">
			<tr>
				<td><img src="image/logo.png" class="logo"></td>
				<td><b><p>&copy; 2024 AccomoNow. All right Reserved.</b><br>
					www.accomonow.com<br>
					032-4422421</p></td>
				<td>
					<ul>
						<li><p><img src="image/facebook-icon.png" class="facebook" width="45px" height="45px">&nbsp;&nbsp;&nbsp;
								<img src="image/whatsapp-icon.png" class="whatsapp" width="40px" height="40px">&nbsp;&nbsp;&nbsp;
								<img src="image/instagram-icon.png" class="instagram" width="40px" height="40px">&nbsp;&nbsp;&nbsp;
								<img src="image/twitter-icon.png" class="twitter" width="40px" height="40px">
						</p></li>
					</ul>
				</td>
			</tr>
		</table>
	</footer>

</body>
</html>