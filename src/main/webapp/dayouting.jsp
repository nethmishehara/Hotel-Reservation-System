<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <script src = "dayouting.js"></script>
     <link rel = "stylesheet" type = "text/css" href = "dayouting.css">
     <link rel = "stylesheet" href = "nav-bar.css">
   
    <style>
    	.submit{
   		width: 0%8;
    	padding: 10px;
    	background-color: #1c1f1e;
    	color:white;
    	border: none;
    	border-radius: 1px;
    	font-family:fantasy;
    	}
    </style>
</head>
<body height="1200px">
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

	      </nav>
         <title>Dayouting Reservations</title>
   

<div class ="top">
    <br><Center><b> Day Outing Packages</b></Center>
</div><br><br>

<div class="body">
    <div class="topArea">
        <div class="details_side">
        <div class ="drop1">
            <label for="Loc">Location</label>
            <select id="Loc" name="Loc">
            <option value="col">Colombo</option>
            <option value="Aviss">Avissawella</option>
            <option value="Galle">Galle</option>
            <option value="Hikka">Hikkaduwa</option>
            <option value="Miri">Mirissa</option>
            <option value="Kan">Kandy</option>
            </select>
        </div>

        <div class ="drop2">
            <label for="Vac">Vacation Type</label>
        <select id="Vac" name="Vac">
            <option value="Coup">Couple Dayout</option>
            <option value="">Family Package</option>
            <option value="Galle">Dayout for groups</option>
       
            </select>
        </div>

    </div>

    <br><br>
    <div class="maincontent1">
    <div class="container1">
            <img src="Images/day1.jpeg" alt="" class="img1">

           
        <div class="content1">
           
                <h2><b> Araliya Beach Resort</b></h2>
            <ul>
                <li >Place: Unavatuna,Galle ,Sri Lanka</li>
                <li >View: Sea</li>
                <li >Wifi: free</li>
                <li >Pool: Yes</li>
                <li >Lunch: Buffet</li>
                
            </ul>
            <h3 class = "pri1" id="pri1"> <b> Rs.7,200 </b></h3>
            
        </div>

        </div>
        
        <div class="container2">
            <div class="img2">
                <img src="Images/day2.jpeg" alt="" class="img2"><br>
            </div>
               
            <div class="content2">
               
                <h2><b> Seethawaka Regency</b></h2>
                <ul>
                    <li >Place: Seethawaka,Colombo ,Sri Lanka</li>
                    <li >View: Garden</li>
                    <li >Pool: Yes</li>
                    <li >Lunch: Buffet or Set</li>
                    
                </ul>
                <h3 class = "pri2" id="pri2"> <b> Rs.3,600 </b></h3>
                
            </div>
    
            </div>

            </div>
            <div class="maincontent2">
            <div class="container3">
                <div class="img3">
                    <img src="Images/day3.jpeg" alt="" class="img3"><br>
                   
                <div class="content3">
                   
                    <h2><b> Sea Gates Hotel Kalutara</b></h2>
                    <ul>
                        <li >Place: Kalutara ,Sri Lanka</li>
                        <li >View: Sea</li>
                        <li >Wifi: free</li>
                        <li >Pool: Yes</li>
                        <li >Lunch: Buffet or Set</li>
                        
                    </ul>
                    <h3 class = "pri3" id="pri3"> <b> Rs.2,300 </b></h3>
                    
                </div>
        
                </div>
                </div>
            
                <div class="container4">
                    <div class="img4">
                        <img src="Images/day4.jpeg" alt="" class="img4"><br>
                       
                    <div class="content4">
                       
                        <h2><b> Femstar Funlaaza</b></h2>
                        <ul>
                            <li >Place:Ja-Ela,Gampaha,Sri Lanka</li>
                            <li >View: City</li>
                            <li >Pool: Yes</li>
                            <li >Lunch: Set</li>
                            
                        </ul>
                        <h3 class = "pri4" id="pri4"> <b> Rs.3,000 </b></h3>
                        
                    </div>
                    </div>
            
                    </div>
                    </div>
                    </div>
                    


                    <div class="btn_form">
                        <div class = "button" id="button">
                            <input type = "button" class = "book" id="book" name = "book" value = "BOOK NOW" onclick = "showDetails()">
                        </div><br>
                        
                        <form class="form" id = "form" method="post" action="insertDayout"><br><br>
                            <div class="formtopic">
                                <h3>Fill  the Details</h3></div>
                                <input type="text" name="name" placeholder="Name" id="name" required><br><br>
                                <input type="text" name ="Add" placeholder="Address" id="address" required><br><br>
                                <input type="tel" name = "ContactNo" placeholder="Contact Number" id="contact" required>
                            
                            <div class="formtopic"><h3>Reservation Details</h3></div>
                                <input type="date" name="date" placeholder="Date" id="date" required>
                                <input type="time"  name="time" placeholder="Time" id="time" required> <br><br>
                                <input type="number" name="Guest" placeholder="NoOfGuests" id="no" required>
                    
                            <div class="formtopic">
                              <h3>Event Type</h3>
                          </div>
                          <select name="event" id="event">
                              <option value="opt1">Family Dayouting</option>
                              <option value="opt2">HighTea</option>
                              <option value="opt3">Adventures Dayouting</option>
                              <option value="opt4">Couple Dayouting</option>
                          </select>
                          <br><br>
                            <input type="submit" class="submit" onclick="validation()">
                    
                        
                        </form> 
                        </div>
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
  