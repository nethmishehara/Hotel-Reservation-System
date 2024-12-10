<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "dayoutreadcss.css">
<link rel = "stylesheet" type = "text/css" href = "nav-bar.css">


   
<title>Day outing</title>
</head>
 <style>
    
    body{
    background-image: url("Images/day5.jpeg");
    background-repeat: no-repeat;
    overflow-x: hidden;
    background-attachment: fixed;
    background-size: cover;

     }
    </style>

<body>

        <header>

            <div class="name">
                <img src="Images/logo.png" class="logo-name">
            </div>
        </header>

	      <nav>
    
      <div class="navi-bar"><ul>
          <b><li class="btn"><a href="Home.jsp">Home</a></li></b>
          <b><li class="btn"><a href="wedding_reservation.jsp">Wedding Reservation</a></li></b>
          <b><li class="btn"><a href="dayouting.jsp">Day Out Packages</a></li></b>
          <b><li class="btn"><a href="reservation.jsp">Room Reservation</a></li></b>
          <b><li class="btn"><a href="feedback.jsp">Feedback</a></li></b>
          <b><li><a class="btnn" href="Offers.jsp">Offers</a></li></b>
          <b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b>
       	  <b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b>
      </ul>
      </div>

	      </nav><br>
	      <br><br><br><br><br><br>
	      
	     <div class="body">
	      <form action="read" method="post">
            <div class="show"><br>
            <input type="text" name="search" id="search" class="search" placeholder="Username"><br><br>
             <div class="btn">
                       <div class = "btn" id="btn">
                           <input type = "submit" class = "book" id="" name = "book" value = "Enter">
                       </div><br>
            </div>
         </div>
         </form>
         
         <%
        	String name = request.getParameter("name");
        	String address =request.getParameter("address");
        	String ContactNo =request.getParameter("ContactNo");
        	String date =request.getParameter("date");
        	String time =request.getParameter("time");
        	String Guest =request.getParameter("Guest");
        	String event =request.getParameter("event");
        	
        %>
        
        
         
         
            <form class="form" method="post" action="updateDayout"><br><br>
                           <div class="formtopic">
                               <h3>Fill  the  Details</h3></div>
                               <input type="text" name="name" value="<%= name %>"><br><br>
                               <input type="text" name ="address" value="<%= address %>"><br><br>
                               <input type="tel" name = "ContactNo" value="<%= ContactNo %>">
                           
                           <div class="formtopic"><h3>Reservation Details</h3></div>
                               <input type="date" name="date"  value="<%= date %>">
                               <input type="time"  name="time" value="<%= time %>"> <br><br>
                               <input type="number" name="Guest" value="<%= Guest %>">
                   
                           <div class="formtopic">
                             <h3>Event Type</h3>
                         </div>
                         <select name="event" id="event" value="<%= event %>">
                             <option value="opt1">Family Dayouting</option>
                             <option value="opt2">HighTea</option>
                             <option value="opt3">Adventures Dayouting</option>
                             <option value="opt4">Couple Dayouting</option>
                         </select>
                         <br><br>
                            <div class="bttn">
                               <input type="submit" id="button" class="button" name="button" value="Save">
                            </div><br><br>
                            
                          
                            
                            
                           </form>

        </div>
                           




   <footer>
   <table width="1512px" height="130px" class="footer-content">
     <tr>
       <td><img src="Images/logo.png" class="logo"></td>
       <td><b><p>&copy; 2024 AccomoNow. All right Reserved.</b><br>
         www.accomonow.com<br>
         032-4422421</p></td>
       <td>
         <ul>
           <li><p><img src="Images/facebook-icon.png" class="facebook" width="45px" height="45px">&nbsp;&nbsp;&nbsp;
               <img src="Images/whatsapp-icon.png" class="whatsapp" width="40px" height="40px">&nbsp;&nbsp;&nbsp;
               <img src="Images/instagram-icon.png" class="instagram" width="40px" height="40px">&nbsp;&nbsp;&nbsp;
               <img src="Images/twitter-icon.png" class="twitter" width="40px" height="40px">
           </p></li>
         </ul>
       </td>
     </tr>
   </table>
 </footer>
 

	

</body>
</html> 
	      
	      
	  

	

    