<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reservation</title>
<link rel="stylesheet" type="text/css" href="nav-bar.css">
<link rel="stylesheet" type="text/css" href="reservation.css">
<script src="reservation.js"></script>
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
          <li><b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b></li>
       	  <li><b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b></li>
      </ul>
      </div>

	</nav>
    <div class = "form">

        <form action = "insertRoom"  method = "POST">
         <h1> <u>ROOM RESERVATION FORM</u></h1>
            
             <div class ="input-box">
                <label for = "email"> Email : </label>
                <input type ="email" id = "email" name = "email" placeholder="enter your email" required >
             </div>

             <div class ="input-box">
                <label for = "date"> Check-In Date : </label>
                <input type ="date" id = "date" name = "date" required>
             </div>

             <div class ="input-box">
                <label for = "date2"> Check-Out Date : </td></label>
                <input type ="date" id = "date2" name = "date2" required >
             </div>

             <div class ="input-box">
                <label for = "no"> No Of Guests : </label>
                <input type ="text" id = "no" name = "no" required >
             </div>

             <div class ="input-box">
                <label for = "rtype"> Room Type : </label>
                <input type ="radio" id = "rtype" name = "rtype" value ="Singleroom">Single Room 
                <input type="button" id="details" name="show" onclick="showDetails()"  value="view prices">
               <h4 class="r1" id="r1"> <br>Rs:8000/= per person  <br>
                amenties : WIFI,Breakfast,Gym Access,pool Access</h4>

                <input type ="radio" id = "rtype" name = "rtype" value ="doubleroom">double Room
                <input type ="button" id="details1" name="show" onclick="showDetails1()" value="view prices"><br> 
                <h4 class="r2" id="r2" >Rs:18000/= <br>
                amenties : WIFI,Breakfast,Gym Access,pool Access</h4>

                <input type ="radio" id = "rtype" name = "rtype" value ="familyroom">family Room
                <input type ="button" id="details2" name="show" onclick="showDetails2()" value="view prices"><br> 
                <h4 class="r3" id="r3" >Rs:30000/= max people:4<br>
                    amenties : WIFI,Breakfast,Gym Access,pool Access</h4>

                <input type ="radio" id = "rtype" name = "rtype" value ="connectedroom">connected Room
                <input type ="button" id="details3" name="show" onclick="showDetails3()" value="view prices"><br>
                <br><h4 class="r4" id="r4" >Rs:60000/= max people 8</h4>
                
                
                
            </div>

            <div class ="input-box">
                <label for = "spreq"> Special Request : </label>
                <input type ="text" id = "spreq" name = "spreq" >

                <h3>User Detail Conformation </h3>
             </div>
             <div class ="input-box">
                <label for = "username"> Username : </label>
                <input type ="text" id = "username" name = "username" required >
             </div>
             <div class ="input-box">
                <label for = "password"> Password : </label>
                <input type ="password" id = "password" name = "password" required >
             </div>

             <div class ="btn">
                <input type="submit" id="button" class="button" name="button"value="Proceed">
             
            </div>
        </div>
        </body>
        
    </table>
            


            
        


            
        </form>

    </div>
   

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