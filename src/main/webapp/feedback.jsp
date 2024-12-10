<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>feedback</title>
    <link rel = "stylesheet" href = "feedback.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
    
    
    <style>
  
  		  
nav {
	background-color: black;
    overflow: hidden;
    height: 60px;
    position: relative;
    opacity: 0.8;
}   


nav li {
	list-style-type: none;
    display: inline;
    padding: 0px;
    margin-right: 0px;
    margin-left: 0px;
    vertical-align: center;
    padding-top: 10px;
    font-size: 21px;
}

nav a {
    color: white;
    text-decoration: none;
    padding: 35px;
    margin-right: 0px;
    margin-left: 2px;
    height: 65px;
    width: 500px;
            
}
        
        
nav a:hover{
    background-color: #A5A8AB;
    color: black;
    transition: background-color 0.3s;
    font: bold;
}

.signin{
	height: 25px;
	width: 70px;
	margin-left: 20px;
	font-size: 15px;
	cursor: pointer;
}

.signin{
	background-color: #BDDDF7;
}

.signup{
  background-color: #BDDDF7;
	height: 25px;
	width: 70px;
	margin-left: 20px;
	font-size: 15px;
	cursor: pointer;
	
}

.signup:hover{
	background-color: #BDDDF7;
}

.signin{
	height: 25px;
	width: 70px;
	margin-left: 20px;
	font-size: 15px;
	cursor: pointer;   
}

.signin:hover{
	background-color: #BDDDF7;
}
  		
  </style>
    

</head>
<body>
<header>
      <div class="name">
        <img src="Images/logo.png"  class="logo-name">
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

      <div class = "continer">
        <div class = "form-box">
            <form action ="addFeedback" method = "post" name ="Formfill" onsubmit = "return validation()">
            
                
                <h2>Feedback</h2><br>
                <div class="details">
                <p>What our guests say</p>
            </div>
                <p id = "result"></p>
                <div class="input-box">
                    <input type = "text" name = "Username" placeholder = "Full Name">
                </div>
                <div class="input-box">
                    <input type = "email" name = "Email" placeholder = "Email">
                </div>
                <div class="input-box">
                    <input type = "text" name = "Subject" placeholder = "Subject">
                </div>
            
                <div class="input-box">
                    <input type = "text" name="AdditionalDetail"  placeholder = "Additional Details" ></textarea>
                </div>
                <div class = "button">
                    <input type = "submit" name ="submit" class ="submit" value = "submit">
                    <a href=""><button type="button" class ="submit" onclick="clear()">Clear</button></a>
                    <a href="contactread.php"><button type="button" class ="submit" >feedbacks</button></a>
                </div>
                
                </form>
              
        </div>
       
    </div>
    
    <script src = "feedback.js"></script>


</body>
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


</html>