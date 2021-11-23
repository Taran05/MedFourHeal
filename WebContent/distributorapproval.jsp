<%@page import="com.dao.DistributorDAO"%>
<%@page import="com.dto.Distributor"%>
<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve/Reject Distributors</title>
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
                        <h2> <b>Approve/Reject Distributors</b></h2>
                    </div>
                </div>
            </div>
            <br> 
            <td><a href='distributoradmin.jsp' id="extra">Back</a></td> 
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
                        <th>Approve</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            DistributorDAO dao = new DistributorDAO();
                            ArrayList<Distributor> lst = dao.getAllNotApprovedDistributorDetails();
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
                        
                        <td><%  if (!dist.isApproved()){%>
                            <a href="admin_approve_distributor.jsp?email=<%=dist.getEmail()%>" name="btnApprove" class="edit" data-toggle="modal" onclick="myclick1()"><img title="Approve" style="height: 20px; width: 30px; padding-right: 10px;"  src="images/22.png"></a>
                            <a href="admin_reject_distributor.jsp?email=<%=dist.getEmail()%>" class="delete" name="btnApprove"  data-toggle="modal" onclick="myclick()"><img title="Reject"style="height: 30px; width: 30px;"  src="images/33.png"></a>
                        </td>
                       <%}%>
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
</body>
</html>