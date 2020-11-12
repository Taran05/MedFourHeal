<%@page import="com.dao.OrderDetailsDAO"%>
<%@page import="com.dto.OrderDetails"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers Order Details</title>
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
  <a href="distributor.jsp">Distributer</a>
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
                        <h2> <b>Customers Order Details</b></h2>
                    </div>
                </div>
            </div>
            <br> 
            <td><a href='DeleteOrders.jsp' id="extra">Delete</a></td>
            <td><a href='UpdateOrders.jsp' id="extra">Update</a></td>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Email</th>
                        <th>Medcode</th>
                        <th>Medicine Name</th>
                        <th>Quantity</th>
                        <th>Type</th>
                        <th>Order Queue</th>
                        <th>Net Cost (Rs)</th>
                        <th>Amount (Rs)</th>
                        <th>Paymode</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            OrderDetailsDAO dao = new OrderDetailsDAO();
                            ArrayList<OrderDetails> lst = dao.getAllCustOrderDetails();

                            for (OrderDetails ord : lst) {

                    %>

                    <tr>

                        <td><%=ord.getId()%></td>
                        <td><%=ord.getEmail()%></td>
                        <td><%=ord.getMedcode()%></td>
                        <td><%=ord.getMedicinename()%></td>
                        <td><%=ord.getMinquantity() %></td>
                        <td><%=ord.getType() %></td>
                        <td><%=ord.getOrderqueue() %></td>
                        <td><%=ord.getNetcost() %></td>
                        <td><%=ord.getAmount() %></td>
                        <td><%=ord.getPaymode() %></td>
                        <td><%=ord.getStatus() %></td>
                       
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