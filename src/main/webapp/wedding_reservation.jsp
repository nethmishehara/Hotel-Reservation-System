<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wedding Reservation</title>
	<link rel="stylesheet" type="text/css" href="nav-bar.css">
        <link rel="stylesheet" type="text/css" href="wedding_reservation.css">
        <script src="wedding and function.js"></script>
        
        <style>
        	.yourName{
    			font-size: 13px;
       			width: 146px;
    			height: 24px;
    			margin-left: 20px;
    			background-color: rgb(158, 202, 234);
    			color: black;
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
          	<li><b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b></li>
          	<li><b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b></li>
      	</ul>
      	</div>
        
            </nav>
        
        <div class="content">
        <div class="topic"><br><br><br><br>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Book your dream event venue today<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ensuring every moment is magical</h1>
        </div><br><br>
        <div class="menu">
            <div class="reservation">
                <form action="weddingInsert" method="post" id="myForm">
                    <h1 class="main-topic"><u>Book your Event here</u></h1>
                    <div class="your_Name">
                            <h3>Username &nbsp;&nbsp;&nbsp; 
                                <input type="text" class="yourName" id="form_details" name="yourName" placeholder="Enter your answer" required>
                            </h3>
                        </div>
                    <div class="venueDate">
                        <div class="venue">
                            <h3>Select your Venue<br>
                            <select class="hotels" id="form_details" name="hotels" required>
                                <option class="opt1">Select One</option>
                                <option class="opt2">Galadari Hotel</option>
                                <option class="opt3">Kingsberry Hotel</option>
                                <option class="opt4">Galle face Hotel</option>
                            </select>
                            </h3>
                        </div>

                        <div class="date">
                            <h3>Choose your Date<br>
                            <input type="date" id="form_details" class="selectDate" name="selectDate" required>
                            </h3>
                        </div>
                    </div><br>
                    
                    	<div class="reserve_Name">
                            <h3>Reserver's Name &nbsp;&nbsp;
                                <input type="text" class="reserveName" id="form_details" name="reserveName" placeholder="Enter your answer" required>
                            </h3>
                        </div>

                    <div class="information">
                    
                        <div class="participant">
                            <h3>Participants &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <select class="parti" id="form_details" name="parti" required>
                                    <option class="opt1">Select one</option>
                                    <option class="opt2">below 100</option>
                                    <option class="opt3">100-250</option>
                                    <option class="opt4">above 250</option>
                                </select>
                            </h3>
                        </div>

                        <div class="type">
                            <h3>Event Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="text" class="eventType" id="form_details" name="eventType" placeholder="Enter your answer" required>
                            </h3>

                        </div>
                    </div><br>

                    <div class="startEnd">
                        <div class="start-time">
                            <h3>Starting Time</h3>
                            <input type="time" class="start" id="form_details" name="start" placeholder="time" required>
                        </div>

                        <div class="end-time">
                            <h3>Ending Time</h3>
                            <input type="time" class="end" id="form_details" name="end" placeholder="time" required>
                        </div>
                    </div><br><br>
					<div class="data">
                    	<b><input type="submit" class="submit" id="submit" onclick="data()"></b>
                    	<p class="nav-NextPage"><b>See your submitted reservation Details <br><a href="wedding_show_details.jsp">Click here</a></b></p>
                    </div>
                </form>
            </div>
        </div>
        </div>
        






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