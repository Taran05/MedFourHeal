<%@page import="com.dao.DistributorDAO"%>
<%@page import="com.dto.Distributor"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Distributors Details</title>
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
                        <h2> <b>Registered Distributors Details</b></h2>
                    </div>
                </div>
            </div>
            <br> 
            <td><a href='DeleteDistributor.jsp' id="extra">Delete</a></td>
            <td><a href='UpdateDistributorDetails.jsp' id="extra">Update</a></td>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Mobile No.</th>
                        <th>Pharmacist No.</th>
                        <th>Form 20 Drug License No.</th>
                        <th>Form 21 Drug License No.</th>
                        <th>Shop Address</th>
                        <th>Residential Address</th>
                        <th>Date Of Birth</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            DistributorDAO dao = new DistributorDAO();
                            ArrayList<Distributor> lst = dao.getAllDistributorDetails();
                            for (Distributor dist : lst) {
                    %>

                    <tr>

                        <td><%=dist.getEmail()%></td>
                        <td><%=dist.getFirst_name()%></td>
                        <td><%=dist.getLast_name()%></td>
                        <td><%=dist.getMobile_no() %></td>
                        <td><%=dist.getPharmacist_no()%></td>
                        <td><%=dist.getForm20_drug_license_no() %></td>
                        <td><%=dist.getForm21_drug_license_no() %></td>
                        <td><%=dist.getShop_address() %></td>
                        <td><%=dist.getResidential_address() %></td>
                        <td><%=dist.getD_o_b() %></td>
                       
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