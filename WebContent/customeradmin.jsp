<%@page import="com.dao.CustomerDAO"%>
<%@page import="com.dto.Customer"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Customer Details</title>
<link href="admin_process.css" rel="stylesheet" type="text/css">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<link href="img.css" rel="stylesheet" type="text/css">  

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
  <a href="distributerlogin.jsp">Distributer</a>
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
                        <h2> <b>Registered Customers Details</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Mobile No.</th>
                        <th>Date Of Birth</th>

                    </tr>
                </thead>
                <tbody>
                    <% try {
                            CustomerDAO dao = new CustomerDAO();
                            ArrayList<Customer> lst = dao.getAllCustomerDetails();

                            for (Customer cust : lst) {

                    %>

                    <tr>

                        <td><%=cust.getEmail()%></td>
                        <td><%=cust.getFirst_name()%></td>
                        <td><%=cust.getLast_name()%></td>
                        <td><%=cust.getAddress() %></td>
                        <td><%=cust.getMobile_no() %></td>
                        <td><%=cust.getD_o_b() %></td>
                       
                <%
                        }
                    } catch (Exception ex)
                    {
						ex.printStackTrace();
                    }
                %>




                </tbody>
            </table>
        </div>
    </div>
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
</body>
</html>