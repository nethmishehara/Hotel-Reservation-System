 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reservation2</title>

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
          <b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b>
       	  <b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b>
      </ul>
      </div>

	</nav>
	
    
    <form class ="form" action = "readRoom"  method = "post">
<div class ="input-box" placeholder ="enter your email">
                <label for = "email" > Email : </label>
                <input type ="email" id = "email" name = "email" required >
             </div>
             <div class ="btn">
                <input type="submit" id="button1" class="button" name="button1"value="Show Details">
             
            </div>
            </form>
            
            <c:forEach var="cus" items="${cusDetails}">
          
          	<c:set var="email" value="${cus.email}"/>
           	<c:set var="date" value="${cus.date}"/>
          	<c:set var="date2" value="${cus.date2}"/>
          	<c:set var="no" value="${cus.no}"/>
          	<c:set var="rtype" value="${cus.rtype}"/>
          	<c:set var="spreq" value="${cus.spreq}"/>
          	<c:set var="username" value="${cus.username}"/>
          	<c:set var="password" value="${cus.password}"/>
          	
  

          	

        <form class ="form" action = "deleteRoom"  method = "post">
         <h1> <u>ROOM RESERVATION FORM</u></h1>
            
             <div class ="input-box">
                <label for = "email"> Email : </label>
                <input type ="email" id = "email" name = "email" value="${cus.email}" readonly>
             </div>

             <div class ="input-box">
                <label for = "date"> Check-In Date : </label>
                <input type ="date" id = "date" name = "date" value="${cus.date}" readonly >
             </div>

             <div class ="input-box">
                <label for = "date2"> Check-Out Date : </label>
                <input type ="date" id = "date2" name = "date2" value="${cus.date2}"readonly >
             </div>

             <div class ="input-box">
                <label for = "no"> No Of Guests : </label>
                <input type ="text" id = "no" name = "no"  value="${cus.no}" readonly>
             </div>

             <div class ="input-box">
                <label for = "rtype"> Room Type : </label>
                <input type ="text" id = "rtype" name = "rtype" value="${cus.rtype}" readonly>
  
            </div>

            <div class ="input-box">
                <label for = "spreq"> Special Request : </label>
                <input type ="text" id = "spreq" name = "spreq" value="${cus.spreq}"readonly>
             </div>
             <h3>User Detail Conformation </h3>
             
             <div class ="input-box">
                <label for = "username"> Username : </label>
                <input type ="text" id = "username" name = "username"  value="${cus.username}"readonly>
             </div>
             <div class ="input-box">
                <label for = "password"> Password : </label>
                <input type ="password" id = "password" name = "password" value="${cus.password}"readonly>
             </div>
         

            <!--  <div class ="btn">
              <input type="submit" id="button" class="button" name="button"value="Update" >  -->
               
               
             <c:url value="reservation3.jsp" var="dataUpdate">
          					<c:param name="email" value = "${email}"></c:param>
          					<c:param name="date" value = "${date}"></c:param>
          					<c:param name="date2" value = "${date2}"></c:param>
          					<c:param name="rtype" value ="${rtype}"></c:param>
          					<c:param name="no" value ="${no}"></c:param>
          					<c:param name="spreq" value = "${spreq}"></c:param>
          					<c:param name="username" value = "${username}"></c:param>
          					<c:param name="password" value = "${password}"></c:param>
          					
          				</c:url>
                        <a href="${dataUpdate}"><input type="button" class ="button" id="update_submit" name="update" value="Update "></a>
                 		<br><br>
             
            </div>
             <div class ="btn">
                <input type="submit" id="button1" class="button" name="button1"value="delete" ">
             
            </div>
        </div>
        
    </form>
        

    </div>
  </c:forEach>
   



<br><br>
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