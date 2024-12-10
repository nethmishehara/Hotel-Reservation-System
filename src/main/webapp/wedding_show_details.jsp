<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<title>Hotel Reservation</title>
        <link rel="stylesheet" type="text/css" href="nav-bar.css">
        <link rel="stylesheet" type="text/css" href="wedding_show_details.css">
        <script src="wedding.js"></script>
        
        
        <style>
        .details{
    		width: 450px;
    		border-radius: 10px;
    		border-width: 4px;
    		border-style:groove;
    		border-color: rgb(132, 196, 251);
    		height: 700px;
    		background-color: rgba(1, 1, 1, 0.8);
    		margin-top: 10px;
    		color:aliceblue;
    		margin-left: 550px;

		}
		
		.reserveNo{
			margin-left: 100px;
		}

		.getNo{
			margin-left:100px;
			width: 60px;
			text-align: center;
			background: none;
			color: white;
			border-color: white;
		}
		
		.username{
			margin-left: 115px;
		}
		
		// background border color eka textbox eke  #BBE1FC
		
		.getUsername{
			margin-left:32px;
			text-align: center;
			background: none;
			color: white;
			border-color: white;
		}
		
		.content{
			margin-left: 29px;
		}
		
		.getData{
    		margin-left: 84px;
    		width: 220px;
    		height:24px;
    		background: none;
    		color: white;
    		border-color: white;
		}
		
		.getUser{
			
			text-align: center;
			margin-left: 35px;
    		width: 150px;
    		height:24px;
    		background: none;
    		color: white;
    		border-color: white;
		
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
        <form action="show" method="post">
            <div class="show-details"><br>
                <input type = "text" name="search" id="search" class="search" placeholder="Your Username" >
                <div class="show-button" id="show_button">
                    <input type="submit" class="show" id="show" name="show" value="Show details">
                </div>
          </form>
          
          <c:forEach var="cus" items="${cusDetails}">
          
          	<c:set var="id" value="${cus.id}"/>
          	<c:set var="username" value="${cus.username}"/>
          	<c:set var="reserveName" value="${cus.reserveName}"/>
          	<c:set var="venue" value="${cus.venue}"/>
          	<c:set var="date" value="${cus.date}"/>
          	<c:set var="participants" value="${cus.participants}"/>
          	<c:set var="event" value="${cus.event}"/>
          	<c:set var="start" value="${cus.start}"/>
          	<c:set var="end" value="${cus.end}"/>
          	
          		
  
          
          	<form action="delete" method="post">
                <div class="details" id="details"><br><br>	
                	<div class="reserveNo">
                	<label>Reservation No<br>
                        <input type="text" class="getNo" id="show_no" name="showNo" value="${cus.id}" readonly>&nbsp;&nbsp;
                    </label><br><br>
                    </div>
					
					<div class="username">
                    <label>Username<br>
                        <input type="text" class="getUser" id="show_username" name="show_username" value="${cus.username}" readonly>&nbsp;&nbsp;
                    </label><br><br>
                    </div>
                    
                    <div class="content">

                    <label>Reserver's Name<br>
                            <input type="text" class="getData" id="show-name" name="show_name" value="${cus.reserveName}" readonly>&nbsp;&nbsp;
                    </label><br><br>

                    <label>Venue<br>
                            <input type="text" class="getData" id="show-venue" name="show_venue" value="${cus.venue}" readonly>&nbsp;&nbsp;
                    </label><br><br>

                    <label>Date<br>
                            <input type="date" class="getData" id="show-date" name="show_date" value="${cus.date}" readonly>&nbsp;&nbsp;

                    </label><br><br>

                    <label>Participants<br>
                            <input type="text" class="getData" id="show-participant" name="show_participant" value="${cus.participants}" readonly>&nbsp;&nbsp;
                    </label><br><br>

                    <label>Event Type<br>
                            <input type="text" class="getData" id="show-event" name="show_event" value="${cus.event}" readonly>&nbsp;&nbsp;
                    </label><br><br>

                    <label>Starting time<br>
                            <input type="time" class="getData" id="show-start" name="show_start" value="${cus.start}" readonly>&nbsp;&nbsp;
                    </label><br><br>

                    <label>Ending-time<br>
                            <input type="time" class="getData" id="show-end" name="show_end" value="${cus.end}" readonly>&nbsp;&nbsp;
                    </label><br><br>
                    </div>
                    
          				<c:url value="wedding_update_details.jsp" var="dataUpdate">
          					<c:param name="id" value = "${id}"></c:param>
          					<c:param name="username" value = "${username}"></c:param>
          					<c:param name="reserveName" value = "${reserveName}"></c:param>
          					<c:param name="venue" value = "${venue}"></c:param>
          					<c:param name="date" value = "${date}"></c:param>
          					<c:param name="participants" value = "${participants}"></c:param>
          					<c:param name="event" value = "${event}"></c:param>
          					<c:param name="start" value = "${start}"></c:param>
          					<c:param name="end" value = "${end}"></c:param>
          					
          				</c:url>
                        <a href="${dataUpdate}"><input type="button" class="update_submit" id="update_submit" name="update" value="Update your details"></a>
                 		<br><br>
                    
                    <input type="submit" class="delete" id="delete" name="delete" value="Cancel Your Reservation">
                    
                 </div>
                 
                </form>
                </c:forEach>
                <br><br><br><br><br><br><br>










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