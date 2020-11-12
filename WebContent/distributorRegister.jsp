<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	h2{
		text-align: center;
	}
</style>
<meta charset="ISO-8859-1">
<title>Distributer Registration</title>
<link href="admin_process.css" rel="stylesheet" type="text/css">   
<link href="img.css" rel="stylesheet" type="text/css">  
<link href="form.css" rel="stylesheet" type="text/css">  
</head>
<body>
<header class="header">
    <marquee id="mar" style="color:purple;background-color:skyblue">Save Upto 30% On Your First Order. Use Promo code : "MYFIRST"</marquee>
	<img src="images/log1.png" id="logo" class="center">
	</header>
	<div class="topnav" id="myTopnav">
  <a href="index.jsp">Home</a>
  <a href="about.jsp">About Us</a>
  <a href="admin.jsp">Administrator</a>
  <a href="distributor.jsp" class="active" id="active">Distributer</a>
   <a href="customer.jsp">Customer</a>
     <a href="contactus.jsp">Contact Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
  </div>
</head>
<body>
	<div class="register">
   	 <div class="container">
        <h2>Distributer Registration</h2>
        <div class="login-form-grids">
            <h5>Login information</h5>
            <form action="distributorRegister_db.jsp" method="post">
                <input type="email" placeholder="Email" name="email" required=" " >
                <input type="password" placeholder="Password" name="password" required=" " >
                <br><br>
                <h5>profile information</h5>
                <input type="text" placeholder="First Name" name="first_name" required=" " >
                <input type="text" placeholder="Last Name" name="last_name" required=" " >
                <input type="text" placeholder="Mobile Number" name="mobile_no" required=" " >
                <input type="text" placeholder="Pharmacist Number" name="pharmacist_no" required=" " >
                <input type="text" placeholder="Form 20 Drug License Number" name="form20_drug_license_no" required=" " >
                <input type="text" placeholder="Form 21 Drug License Number" name="form21_drug_license_no" required=" " >
                <input type="text" placeholder="Shop Address" name="shop_address" required=" " >
                <input type="text" placeholder="Residential Address" name="residential_address" required=" " >
                <input type="text" placeholder="Date of Birth" name="d_o_b" required=" " >
                <input type="submit" value="Register">
                <input type="reset" value="Reset">
            </form>
        </div>
    </div>
</div>
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
</body>
</html>