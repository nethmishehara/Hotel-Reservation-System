<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AccomoNow</title>
  <link rel="stylesheet" href="home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
  
  
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
    font-size: 20px;
}

nav a {
    color: white;
    text-decoration: none;
    padding: 32px;
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
          <b><li class="btn"><a href="Offers.jsp">Offers</a></li></b>
          <b><button type="button" class="signin" onclick="window.open('login.jsp');">SignIn</button></b>
       	  <b><button type="submit" class="signup" onclick="window.open('signup.jsp');">SignUp</button></b>
      </ul>
      </div>
  </nav>


  <script>
    var menulist = document.getElementById('menulist');
    menulist.style.maxHeight = "0px";

    function menutoggle() {
      if (menulist.style.maxHeight == "0px") {
        menulist.style.maxHeight = "100vh";
      } else {
        menulist.style.maxHeight = "0px";
      }
    }
  </script>


  <section class="home">
    <div class="content">
      <div class="owl-carousel owl-theme">
        <div class="item">
          <img src="Images/hf.jpg" alt="">
          <div class="text">
            <h1>Spend Your Holiday</h1>
            <p>We enjoy having you over.So, we make booking easier.
            </p>
            <div class="flex">
              <button class="primary-btn">READ MORE</button>
              <button class="secondary-btn">CONTACT US</button>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="Images/h2.webp" alt="">
          <div class="text">
            <h1>Spend Your Holiday</h1>
            <p>TWe enjoy having you over.So, we make booking easier.
            </p>
            <div class="flex">
              <button class="primary-btn">READ MORE</button>
              <button class="secondary-btn">CONTACT US</button>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="Images/h3.jpg" alt="">
          <div class="text">
            <h1>Spend Your Holiday</h1>
            <p>We enjoy having you over.So, we make booking easier.
            </p>
            <div class="flex">
              <button class="primary-btn">READ MORE</button>
              <button class="secondary-btn">CONTACT US</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script>
    $('.owl-carousel').owlCarousel({
      loop: true,
      margin: 0,
      nav: true,
      dots: false,
      navText: ["<i class = 'fa fa-chevron-left'></i>", "<i class = 'fa fa-chevron-right'></i>"],
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 1
        },
        1000: {
          items: 1
        }
      }
    })
  </script>








<section class="about top">
  <div class="container flex">
    <div class="left">
      <div class="heading">
        <h1>WELCOME</h1>
        <h2>AccomoNow</h2>
      </div>
      <p>Welcome to AccomoNow, where exhilarating activities and comfortable relaxation blend seamlessly. Enjoy exclusive access to Pasta Point surf break, stunning Over-water suites, couples' spa treatments, and romantic sunset cruises.<br><br>

        Indulge in thrilling water sports and explore marine life through diving and snorkelling. Unwind with massages, fishing trips, or dolphin watching. Delight in diverse dining options and all-you-can-eat buffets.
      </p>
         
      <button class="primary-btn">ABOUT US</button>
    </div>
    <div class="right">
      <img src="Images/g3.jpg" width="600px" height="500px">
    </div>
  </div>
</section>



<section class="gallery">
    <div class="container top">
      <div class="heading">
        <h1>PHOTOS</h1>
        <h2>Our Gallery</h2>
        <p>We are a lifestyle brand with the main focus on people, loved ones and friends being at the coolest places, enjoying life's best moments. We call it inspired living! Is there any other way to go?
      </div>
    </div>

    <div class="content mtop">
      <div class="owl-carousel owl-carousel1 owl-theme">
        <div class="items">
          <div class="img">
            <img src="Images/g1.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/g2.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/g3.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/g4.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/g3.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/h2.webp" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/h3.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/h2.webp" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/g1.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="Images/sunset-pool.jpg" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Photo Title Here.</h3>
          </div>
        </div>
      </div>
    </div>
  </section>


  <script>
    $('.owl-carousel1').owlCarousel({
      loop: true,
      margin: 0,
      nav: true,
      dots: false,
      autoplay: true,
      autoplayTimeout: 1000,
      autoplayHoverPause: true,
      navText: ["<i class = 'fa fa-chevron-left'></i>", "<i class = 'fa fa-chevron-right'></i>"],
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 4,
        },
        1000: {
          items: 6
        }
      }
    })
  </script>
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
                          <img src="Images/whatsapp-icon.png" class="whatsapp" width="40px" height="40px">&nbsp;&nbsp;&nbsp; <img
								src="Images/instagram-icon.png" class="instagram" width="40px"
								height="40px">&nbsp;&nbsp;&nbsp;
                          <img src="Images/twitter-icon.png" class="twitter" width="40px" height="40px">
                  </p></li>
              </ul>
          </td>
      </tr>
  </table>
</footer>
</html>

	


