<%@page import="com.dao.OrderDetailsDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>
<html>
<head>
<style>
	h2{
		text-align: center;
	}
</style>
<meta charset="ISO-8859-1">
<title>Delete Customer Order Details</title>
<link href="admin_style.css" rel="stylesheet" type="text/css">
<link href="admin_process.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
  <a href="admin.jsp"  class="active" id="active">Administrator</a>
  <a href="distributor.jsp">Distributor</a>
   <a href="customer.jsp">Customer</a>
     <a href="contactus.jsp">Contact Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
	<div class="container-fluid">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-4">
                        <h2> <b>Delete Customer Order Details</b></h2>
                    </div>
                </div>
            </div>
            <br>
            <button id="red"><a href="ordersadmin.jsp" id="bac">Back</a></button>
            <div class="login">
            <div class="container">
                <div class="login-form-grids">
                    <form method="post" action="DeleteOrders_db.jsp">
                        <input type="text" placeholder="ID" name="orderid" required="" >
                        <input type="submit" value="Delete" >
                    </form>
                </div>


            </div>
        </div>
            
            </div>
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
</body>
</html>            