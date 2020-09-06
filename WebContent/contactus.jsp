<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta charset="utf-8">
<title>Contact Us</title>
<link href="style2.css" rel="stylesheet" type="text/css"> 
</head>

<body>
<header class="header">
    <marquee id="mar" style="color:purple;background-color:skyblue">Save Upto 30% On Your First Order. Use Promo code : "MYFIRST"</marquee>
	<div class="second">
		<img src="images/log1.png" id="logo">
	</div>
	</header>
	<div class="topnav" id="myTopnav">
  <a href="index.jsp">Home</a>
  <a href="about.jsp">About Us</a>
  <a href="admin.jsp">Administrator</a>
  <a href="distributerlogin.jsp">Distributer</a>
   <a href="customer.jsp">Customer</a>
     <a href="contactus.jsp"  class="active" id="active">Contact Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div class="wrapper">
  <h2>Contact us</h2>
  <div id="error_message">   
  </div>
  <form action="welcome.html" id="myform" onsubmit = "return validate();">
    <div class="input_field">
        <input type="text" placeholder="Name" id="name">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Issue" id="issue">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Mobile No." id="mobile">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Email" id="email">
    </div>
    <div class="input_field">
        <textarea placeholder="Message" id="message"></textarea>
    </div>
    <div class="btn">
        <input type="submit">
    </div>
  </form>
</div>
<script>
function validate(){
	  var name = document.getElementById("name").value;
	  var subject = document.getElementById("issue").value;
	  var mobile = document.getElementById("mobile").value;
	  var email = document.getElementById("email").value;
	  var message = document.getElementById("message").value;
	  var error_message = document.getElementById("error_message");
	  
	  error_message.style.padding = "10px";
	  
	  var text;
	  if(name.length < 5){
	    text = "Name should be atleast 5 characters long";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(subject.length < 8){
	    text = "Subject should be atleast 8 characters long";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(isNaN(mobile) || mobile.length != 10){
	    text = "Please Enter valid 10-digit phone number";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(email.indexOf("@") == -1 || email.length < 6){
	    text = "Please Enter valid Email";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(message.length <= 50){
	    text = "Please Enter More Than 50 Characters";
	    error_message.innerHTML = text;
	    return false;
	  }
	  alert("Form Submitted Successfully!");
	  return true;
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
