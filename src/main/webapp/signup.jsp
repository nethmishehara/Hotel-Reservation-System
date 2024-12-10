<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SignUp Page</title>
        <link rel="stylesheet" type="text/css" href="register.css">
        <link rel="stylesheet" type="text/css" href="nav-bar.css">
        <script src="signup.js"></script>
        
        
        <Style>
        	body{
        		    background-image: url('Images/register.jpg');
    				background-size: cover;
    				backdrop-filter: 0.5;
    				background-repeat: no-repeat;
    				overflow-x: hidden;
    				background-attachment: fixed;
        	}
        	
        	.text{
    				position: relative;
    				margin-right: 1040px;
    				margin-left: 78px;
    				text-align:left;
    				width: 350px;
    				height: 25px;   
    				font-size: 15px;
   					color: white;
    				background-color: rgb(25, 21, 21);
    
			}
			
			.click_login{
				position: relative;
				margin-right: 970px;
			}
			
			
			.click{
				color: rgb(30, 0, 49);
			}
			
        </Style>
    </head>

    <body>
        <!--<script src="background.js"></script>-->
        <header>

            <div class="name">
                <img src="Images/logo.png" class="logo-name">
            </div>
        </header>
        <nav>
    
            <div class="navi-bar">
                <ul>
                    <li><b><a href="#home">Home</a></b></li>
                    <b><li class="btn"><a href="#wedding">Wedding Reservation</a></li></b>
                    <b><li class="btn"><a href="#dayout">Day Out Packages</a></li></b>
                    <b><li class="btn"><a href="#room">Room Reservation</a></li></b>
                    <b><li class="btn"><a href="#contact">Contact Us</a></li></b>
                    <b><li><a class="btn" href="#offers">Offers</a></li></b>
        			<b><button type="submit" class="signinBtn" onclick="window.open('login.jsp');">SignIn</button></b>
       				<b><button type="submit" class="signupBtn" onclick="window.open('signup.jsp');">SignUp</button></b>
                </ul>
            </div>
        
            </nav>

        <form action="insert" method="post" id="signup" >
                        <div class="content"><br><br>
                            <div class="img">
                                
                            </div>
                            <h1>Sign Up</h1>
                            <div class="name">
                                <h3>EnterYour Name</h3>
                                <input type="text" class="text" name="name" placeholder="Your Name" required><br>
                            </div>
                
                            <div class="address">
                                <h3>Enter Your Address</h3>
                                <input type="text" class="text" name="address" placeholder="Your Address" required><br>
                            </div>
                
                            <div class="email">
                                <h3>Enter E-mail</h3>
                                <input type="email" class="text" name="email" placeholder="Your E-mail" required><br>
                            </div>
                				
                			<div class="contact">
                                    <h3>Contact No</h3>
                                    <input type="text" class="text" name="contact" placeholder="contact No" required><br>
                                </div>
                                <div class="username">
                                    <h3>Username</h3>
                                    <input type="name" class="text" name="username" placeholder="username" required><br>
                                </div>
                            
                                <div class="pwd">
                                    <h3>Enter Your Password</h3>
                                    <input type="password" class="text" name="pwd" id="pwd" placeholder="Your password" required><br>
                                </div>
                
                                <div class="cfm-pwd">
                                    <h3>Confirm your password</h3>
                                    <input type="password" class="text" name="cfm_pwd" id="cfm_pwd" placeholder="Confirm Password" required><br><br>
                   
                                </div>
                
                                <br>
                                    <input type="submit" class="submit" name="submit" onclick="validatePassword(event)"><br>
                                    
                                    <p class="click_login">If you are already resgisterd <a href="login.jsp" class="click">login here</a></p>
                             </div>
        </form><br><br><br><br><br><br><br>       

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