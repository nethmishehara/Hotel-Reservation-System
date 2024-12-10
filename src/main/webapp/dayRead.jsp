<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
    background-image: url("Images/DAY.jpg");
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
	      <form action="readDayout" method="post">
            <div class="show"><br>
            <input type="text" name="search" id="search" class="search" placeholder="Username"><br><br>
             <div class="btn">
                       <div class = "btn" id="btn">
                           <input type = "submit" class = "book" id="" name = "book" value = "Enter">
                       </div><br>
            </div>
         </div>
         </form>
         
          <c:forEach var="cus" items="${cusDetails}">
          
          	<c:set var="name" value="${cus.name}"/>
          	<c:set var="address" value="${cus.address}"/>
          	<c:set var= "contact" value="${cus.contact}"/>
          	<c:set var="date" value="${cus.date}"/>
          	<c:set var="time" value="${cus.time}"/>
          	<c:set var="guest" value="${cus.guest}"/>
          	<c:set var="event" value="${cus.event}"/>
         
          	
          		
         
         
         
            <form class="form" method="post" action="deleteDayout"><br><br>
                           <div class="formtopic">
                               <h3>Fill  the  Details</h3></div>
                               <input type="text" name="name" value="${cus.name}" readonly><br><br>
                               <input type="text" name ="address" value="${cus.address}" readonly><br><br>
                               <input type="text" name ="ContactNo" value="${cus.contact}" readonly>
                           
                           <div class="formtopic"><h3>Reservation Details</h3></div>
                               <input type="date" name="date"  value="${cus.date}" readonly>
                               <input type="time"  name="time" value="${cus.time}" readonly> <br><br>
                               <input type="number" name="Guest" value="${cus.guest}" readonly>
                   
                           <div class="formtopic">
                             <h3>Event Type</h3>
                         </div>address
                         <select name="event" id="event" value="${cus.event}">
                             <option value="opt1">Family Dayouting</option>
                             <option value="opt2">HighTea</option>
                             <option value="opt3">Adventures Dayouting</option>
                             <option value="opt4">Couple Dayouting</option>
                         </select>
                         <br><br>
                         
                         <c:url value="dayUpdate.jsp" var="dataUpdate">
          					<c:param name="name" value = "${name}"></c:param>
          					<c:param name="address" value = "${address}"></c:param>
          					<c:param name="ContactNo" value = "${contact}"></c:param>
          					<c:param name="date" value = "${date}"></c:param>
          					<c:param name="time" value = "${time}"></c:param>
          					<c:param name="Guest" value = "${guest}"></c:param>
          					<c:param name="event" value = "${event}"></c:param>
          					
          					
          				</c:url>
                        <a href="${dataUpdate}"><input type="button" class="button" id="update_submit" name="update" value="Update the reservation"></a>
                 		<br><br>



                         
                            <!--  <div class="bttn">
                                <input type="submit" id="button" class="button" name="button" value="Update the Reservation">
                            </div><br><br> -->
                            
                            <div class="bttn">
                               <input type="submit" id="button1" class="button1" name="button1" value="Delete the Reservation">
                            </div>
                            
                            
                           </form>
                           
                         </c:forEach>


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
	      
	      
	  

	

