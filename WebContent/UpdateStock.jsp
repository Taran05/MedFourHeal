<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update Medicine/Stock</title>
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
  <a href="admin.jsp" >Administrator</a>
  <a href="distributor.jsp" class="active" id="active">Distributor</a>
   <a href="customer.jsp">Customer</a>
     <a href="contactus.jsp">Contact Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<br> 
<br>
<button id="red"><a href="viewstock.jsp" id="bac">Back</a></button>
<div class="wrapper">
  <h2>Update Medicine Information/Stock</h2>
  <div>   
  </div>
  <form method="post" action="UpdateStock_db.jsp">
 	<div class="input_field">
        <input type="text" placeholder="Medicine ID" name="id" required="">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Medicine Name" name="medicine_name" required="">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Medcode" name="medcode" required="">
    </div>
    <div class="input_field">
        <input type="text" placeholder="For Which Disease" name="disease" required="">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Netcost" name="netcost" required="">
    </div>
    <div class="input_field">
        <input type="text" placeholder="InStock" name="instock" required="">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Short-Description" name="med_desc" required="">
    </div>
    <div class="btn">
        <input type="submit" value="Submit" style="margin-top:30px">
    </div>
  </form>
</div>





<footer class="footer">
	<div class="about">
        <h3>About</h3>
        <ul>
            <li> <a href="contactus.jsp" id="noline"> Contact Us</a></li>
            <li> <a href="about.jsp" id="noline"> About us</a></li>
            <li> <a href="careers.jsp" id="noline"> Careers</a></li>
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
          <p>med4heal@gmail.com<br>
       
          
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