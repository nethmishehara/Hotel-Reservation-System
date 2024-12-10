<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="nav-bar.css">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="nav-bar.css">
    
    <script src="reservation.js"></script>
<meta charset="ISO-8859-1">
<title> loginpage </title>
</head>
<body>
<header>

        <div class="name">
            <img src="image/logo.png" class="logo-name">
        </div>
    </header>


	<nav>
    
    <div class="navi-bar"><ul>
        <b><li><a href="#home">Home</a></li></b>
        <b><li><a href="#wedding">Wedding Reservation</a></li></b>
        <b><li><a href="#dayout">Day Out Packages</a></li></b>
        <b><li><a href="#room">Room Reservation</a></li></b>
        <b><li><a href="#contact">Feedback</a></li></b>
        <b><li><a class="btn" href="#offers">Offers</a></li></b>
        <b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b>
       	<b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b>
    </ul>
    </div>

	</nav>
    <div class="content">
        
        <h1>Welcome to <span>AccomoNow</span> <br>- Your Ultimate Online Reservation Hub ! </h1>
        <p class="par">At AccomoNow , we are dedicated to simplifying your booking experience.<br>Whether you're 
            planning your next big adventure,arranging cozy dinner,or <br>securing a spot at an exclusive event,
            our platform is designed to make <br>your reservation process seamless and hassle-free
        </p>
        <button class="btn"><a href ="####################">JOIN US</a></button>
    </div>
    <div class="form">
        <h2>Login Here</h2>
        <form action = "login"   method = "post">

         <label for = "email"></label>   
        <input type="name" name ="username" id="name"  placeholder="Username" required >
        
        <label for = "password"></label> 
        <input type="password" name ="password" id="password" placeholder="Enter password Here " required>
        <button class ="btnn" onclick ="login()">Login</button>
        
            
        </form>
    </div>


	<br><br><br><br><br><br>
        
	<br>
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