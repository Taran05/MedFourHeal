<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta charset="utf-8">
<title>Add Medicine</title>
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
  <a href="distributor.jsp" class="active" id="active">Distributer</a>
   <a href="customer.jsp">Customer</a>
     <a href="contactus.jsp">Contact Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div class="wrapper">
  <h2>Add Medicine</h2>
  <div id="error_message">   
  </div>
  <form action="distributroProcess.jsp" id="myform" onsubmit = "return validate();">
    <div class="input_field">
        <input type="text" placeholder="Medicine Name" id="medname">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Medcode" id="medcode">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Type" id="medtype">
    </div>
    <div class="input_field">
        <input type="text" placeholder="Netcost" id="medcost">
    </div>
    <div class="input_field">
        <textarea placeholder="Short-Description" id="meddesc"></textarea>
    </div>
    <div class="btn">
        <input type="submit">
    </div>
  </form>
</div>
<script>
function validate(){
	  var medname = document.getElementById("medname").value;
	  var medcode = document.getElementById("medcode").value;
	  var medtype = document.getElementById("medtype").value;
	  var medcost = document.getElementById("medcost").value;
	  var meddesc = document.getElementById("meddesc").value;
	  var error_message = document.getElementById("error_message");
	  
	  error_message.style.padding = "10px";
	  
	  var text;
	  if(medname.length < 5){
	    text = "Medicine-Name should be atleast 5 characters long";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(medcode.length < 4){
	    text = "Medcode should be atleast 4 characters long";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(medtype==""){
	    text = "Please Enter valid Medicine-Type";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(medcost==""){
	    text = "Please Enter valid Cost";
	    error_message.innerHTML = text;
	    return false;
	  }
	  if(meddesc.length <= 20){
	    text = "Please Enter More Than 20 Characters";
	    error_message.innerHTML = text;
	    return false;
	  }
	  alert("Medicine Added Successfully!");
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
