<%@page import="com.dao.OrderDetailsDAO"%>
<%@page import="com.dto.OrderDetails"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta charset="utf-8">
<title>View Orders</title>
<link href="admin_process.css" rel="stylesheet" type="text/css">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<link href="img.css" rel="stylesheet" type="text/css">  
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
  <a href="distributor.jsp">Distributor</a>
   <a href="customer.jsp" class="active" id="active">Customer</a>
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
                        <h2> <b>Your Orders</b></h2>
                        <%String email=(String)session.getAttribute("customer");%>
                        <input type="email" placeholder="Username" name="email" value="<%=session.getAttribute("customer")%>" readonly="" required="">
                    </div>
                </div>
            </div>
            <br> 
            <td><a href='customerProcess.jsp' id="extra">Back</a></td> <br><br>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Medcode</th>
                        <th>Medicine Name</th>
                        <th>Min Quantity</th>
                        <th>Type</th>
                        <th>Net Cost</th>
                        <th>Amount</th>
                        <th>Paymode</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            OrderDetailsDAO dao = new OrderDetailsDAO();
                            ArrayList<OrderDetails> lst = dao.getSpeCustOrderDetails(email);
                            for (OrderDetails od : lst) {
                    %>

                    <tr>

                        <td><%=od.getId()%></td>
                        <td><%=od.getMedcode()%></td>
                        <td><%=od.getMedicinename()%></td>
                        <td><%=od.getMinquantity()%></td>
                        <td><%=od.getType()%></td>
                        <td><%=od.getNetcost()%></td>
                        <td><%=od.getAmount()%></td>
                        <td><%=od.getPaymode()%></td>
                        <td><%=od.getStatus()%></td>
                      </tr>  
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
            <li> <a href="careers.jsp" id="noline">Careers</a></li>
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
