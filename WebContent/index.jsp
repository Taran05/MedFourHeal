<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to MedFourHeal</title>
<link href="style1.css" rel="stylesheet" type="text/css"> 
</head>

<body>
<header class="header">
    <marquee id="mar" style="color:purple;background-color:skyblue">Save Upto 30% On Your First Order. Use Promo code : "MYFIRST"</marquee>
	<div class="second">
		<img src="images/log1.png" id="logo">
	</div>
	</header>
	<div class="topnav" id="myTopnav">
  <a href="index.jsp" class="active" id="active">Home</a>
  <a href="about.jsp">About Us</a>
  <a href="admin.jsp">Administrator</a>
  <a href="distributerlogin.jsp">Distributer</a>
   <a href="customer.jsp">Customer</a>
     <a href="contactus.jsp">Contact Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<br> 
<br>
<div class="slideshow-container">

<div class="mySlides">
  <img src="images/p1.png" style="width:100%" id="ad"> 
</div>

<div class="mySlides fade">
  <img src="images/p2.jpg" style="width:100%" id="ad">
</div>

<div class="mySlides fade">
  <img src="images/pharmacy.jpg" style="width:100%" id="ad">
</div>

<div class="mySlides fade">
  <img src="images/phar.jpg" style="width:100%" id="ad">
</div>

<div class="mySlides fade">
  <img src="images/p3.jpg" style="width:100%" id="ad">
</div>

</div>
<br><br>
<div style="text-align:center">
  <span class="dot" id="dot"></span> 
  <span class="dot" id="dot"></span> 
  <span class="dot" id="dot"></span> 
  <span class="dot" id="dot"></span> 
  <span class="dot" id="dot"></span> 
</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>


<footer class="footer">
	<div class="about">
        <h3>About</h3>
        <ul>
            <li> <a href="contactus.jsp"> Contact Us</a></li>
            <li> <a href="about.jsp"> About us</a></li>
            <li> <a href="cons.html"> Carrers</a></li>
            <li> <a href="cons.html"> Press</a></li>
        </ul>
    </div>
    <div class="helper">
          <h3>Help</h3>
          <ul>
            <li> <a href="cons.html"> Payments</a></li>
            <li> <a href="cons.html"> Shipping</a></li>
            <li> <a href="cons.html"> Cancellation and Returns</a></li>
            <li> <a href="cons.html"> Report an issue</a></li>
          </ul>
        </div>
        <div class="policy">
          <h3>Policy</h3>
          <ul>
            <li> <a href="cons.html"> Return Policy</a></li>
            <li> <a href="cons.html"> Time Of Use</a></li>
            <li> <a href="cons.html"> Carrers</a></li>
            <li> <a href="cons.html"> Privacy</a></li>
          </ul>
        </div>
        <div class="mail">
          <h3>Mail Us</h3>
          <p>supermarket@tarantino.com<br>
          jeevan50@tarantino.com</p><br>
          
        </div>
        <div class="office">
          <h3>Registered Office</h3>
          <p>ROJAY Online Shopping<br>
            6/21 R.J Complex<br>
            <br>
        
             Fort Road,<br>

            Delhi 458706</p>

          
        </div>
</footer>
<br>
  </div>
</div>
</body>
</html>
