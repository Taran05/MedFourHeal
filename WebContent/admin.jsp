<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administration Login</title>
<link href="admin_style.css" rel="stylesheet" type="text/css"> 
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
  <a href="admin.jsp"  class="active" id="active">Administrator</a>
  <a href="distributor.jsp">Distributer</a>
   <a href="customer.jsp">Customer</a>
     <a href="contactus.jsp">Contact Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<br> 
<br>

<div class="wrapper">
  <h2>Welcome To Administration Login</h2>
  <div id="error_message">   
  </div>
  <form action="adminprocess.jsp" id="myform" onsubmit = "return validate();">
    <div class="input_field">
        <input type="text" placeholder="Username" id="username">
    </div>
    <div class="input_field">
        <input type="password" placeholder="Password" id="password">
    </div>
    <div class="btn">
        <input type="submit" value="Submit">
    </div>
  </form>
</div>

<script>
function validate(){
	  var username = document.getElementById("username").value;
	  var password = document.getElementById("password").value;
	  var error_message = document.getElementById("error_message");
	  error_message.style.padding = "10px";
	  var text;
	  if(username == "" || password==""){
		    text = "Please fill out all fields";
		    error_message.innerHTML = text;
		    return false;
		  }
	  if(username !="admin"){
	    text = "Incorrect username!";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(password != "admin"){
	    text = "Incorrect password!";
	    error_message.innerHTML = text;
	    return false;
	  }
	  
	  return true;
	}
</script>





<footer class="footer">
	<div class="about">
        <h3>About</h3>
        <ul>
            <li> <a href="contactus.jsp" id="noline"> Contact Us</a></li>
            <li> <a href="about.jsp" id="noline"> About us</a></li>
            <li> <a href="careers.jsp" id="noline"> Carrers</a></li>
            <li> <a href="customer.jsp" id="noline"> Login Now</a></li>
        </ul>
    </div>
    <div class="helper">
          <h3>Help</h3>
          <ul>
            <li> <a href="editorial.jsp" id="noline"> Editorial</a></li>
           <li> <a href="shipping.jsp" id="noline"> Shipping</a></li>
            <li> <a href="Terms And Conditions.pdf" id="noline"> Terms & Conditions</a></li>
            <li> <a href="contactus.jsp" id="noline"> Report an issue</a></li>
          </ul>
        </div>
        <div class="policy">
          <h3>Policy</h3>
          <ul>
            <li> <a href="returnpolicy.jsp" id="noline"> Return Policy</a></li>
            <li> <a href="delivery.jsp" id="noline"> Delivery Policy</a></li>
            <li> <a href="cancellationpolicy.jsp" id="noline"> Cancellation Policy</a></li>
            <li> <a href="Privacy Policy.pdf" id="noline"> Privacy Policy</a></li>
          </ul>
        </div>
        <div class="mail">
          <h3>Mail Us</h3>
          <p>medfourheal@gmail.com<br>
       
          
        </div>
        <div class="office">
          <h3>Registered Office</h3>
          <p>Computer-Science Block,<br>
            Medi-Caps University<br>
            <br>
        
             A.B. Road, Pigdamber, Rau <br>

            Indore - 453331</p>

          
        </div>
</footer>
<br>
  </div>
</div>
</body>
</html>
