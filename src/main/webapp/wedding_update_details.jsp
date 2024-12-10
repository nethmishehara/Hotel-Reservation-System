<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Reservation</title>
        <link rel="stylesheet" type="text/css" href="nav-bar.css">
        <link rel="stylesheet" type="text/css" href="wedding_update_details.css">
        <script src="wedding.js"></script>
        
        <style>
        	.getNo{
        		background-color: black;
        		color: white;
				margin-left:100px;
				width: 60px;
				text-align: center;
			}
			
			.getUsername{
			    background-color: black;
        		color: white;
				margin-left:32px;
				text-align: center;
			}
			
			.getData{
				background-color: black;
        		color: white;
    			margin-left: 84px;
    			width: 220px;
			}
        </style>
</head>
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
          	<b><li><a class="btn" href="Offers.jsp">Offers</a></li></b>
          	<b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b>
          	<b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b>
      	</ul>
      	</div>
        
        </nav><br>
        <br><br><br><br><br><br>
        
        
        <%
        	String id = request.getParameter("id");
        	String username =request.getParameter("username");
        	String reserveName =request.getParameter("reserveName");
        	String venue =request.getParameter("venue");
        	String date =request.getParameter("date");
        	String participants =request.getParameter("participants");
        	String event =request.getParameter("event");
        	String start =request.getParameter("start");
        	String end =request.getParameter("end");
        %>
        
        

	<form action="update" method="post">
                <div class="details" id="details"><br><br>
                	<div class="reserveNo">
                	<label>Reservation No<br>
                        <input type="text" class="getNo" id="show_no" name="showNo" value="<%= id %>" readonly>&nbsp;&nbsp;
                    </label><br><br>
                    </div>
					
					<div class="username">
                    <label>Username<br>
                        <input type="text" class="getUsername" id="show_username" name="show_username" value="<%= username %>" readonly>&nbsp;&nbsp;
                    </label><br><br>
                    </div>

                    <label>Reserver's Name<br>
                            <input type="text" class="getData" id="show-name" name="show_name" value="<%= reserveName %>" readonly>&nbsp;&nbsp;
                            <input type="button" class="edit" id="edit2" name="edit2" onclick="editbtn2()" value="edit">
                            
                    </label><br><br>

                    <label>Venue<br>
                            <input type="text" class="getData" id="show-venue" name="show_venue" value="<%= venue %>" readonly>&nbsp;&nbsp;
                            <input type="button" class="edit" id="edit3" name="edit3" onclick="editbtn3()" value="edit">
                    </label><br><br>

                    <label>Date<br>
                            <input type="date" class="getData" id="show-date" name="show_date" value="<%= date %>" readonly>&nbsp;&nbsp;
                            <input type="button" class="edit" id="edit4" name="edit4" onclick="editbtn4()" value="edit">
                    </label><br><br>

                    <label>Participants<br>
                            <input type="text" class="getData" id="show-participant" name="show_participant" value="<%= participants %>" readonly>&nbsp;&nbsp;
                            <input type="button" class="edit" id="edit5" name="edit5" onclick="editbtn5()" value="edit">
                    </label><br><br>

                    <label>Event Type<br>
                            <input type="text" class="getData" id="show-event" name="show_event" value="<%= event %>" readonly>&nbsp;&nbsp;
                            <input type="button" class="edit" id="edit5" name="edit6" onclick="editbtn6()" value="edit">
                    </label><br><br>

                    <label>Starting time<br>
                            <input type="time" class="getData" id="show-start" name="show_start" value="<%= start %>" readonly>&nbsp;&nbsp;
                            <input type="button" class="edit" id="edit7" name="edit7" onclick="editbtn7()" value="edit">
                    </label><br><br>

                    <label>Ending-time<br>
                            <input type="time" class="getData" id="show-end" name="show_end" value="<%= end %>" readonly>&nbsp;&nbsp;
                            <input type="button" class="edit" id="edit8" name="edit8" onclick="editbtn8()" value="edit">
                    </label><br><br><br>
                        <input type="submit" class="update_submit" id="update_submit" name="update" onclick = "updateData()" value="Submit your updates">
                </div>
           </form><br>
           
           
           <footer>
				<table width="1512px" height="130px" class="footer-content">
    			<tr>
        			<td><img src="Images/logo.png" class="logo"></td>
        			<td><b><p>&copy; 2024 AccomoNow.&nbsp;All right Reserved.</b><br>
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