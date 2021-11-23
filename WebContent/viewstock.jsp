<%@page import="com.dao.MedicineDAO"%>
<%@page import="com.dto.Medicine"%>
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
<title>View Stock</title>
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
  <a href="distributor.jsp" class="active" id="active">Distributor</a>
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
                        <h2> <b>Stock Details</b></h2>
                        <%String email=(String)session.getAttribute("distributor");%>
                        <input type="email" placeholder="Username" name="email" value="<%=session.getAttribute("distributor")%>" readonly="" required="">
                    </div>
                </div>
            </div>
            <br> 
            <td><a href='distributroProcess.jsp' id="extra">Back</a></td>
            <td><a href='DeleteStock.jsp' id="extra">Delete</a></td>
            <td><a href='UpdateStock.jsp' id="extra">Update</a></td>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Medicine Name</th>
                        <th>image</th>
                        <th>Medcode</th>
                        <th>Disease</th>
                        <th>Net Cost</th>
                        <th>In Stock</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            MedicineDAO dao = new MedicineDAO();
                            String filePath="";
                            filePath = application.getInitParameter("UPLOAD");
                            ArrayList<Medicine> lst = dao.getAllStockDetails(email);
                            for (Medicine med : lst) {
                    %>

                    <tr>

                        <td><%=med.getId()%></td>
                        <td><%=med.getMedicine_name()%></td>
                        <td><img src=<%=filePath+=med.getMed_image()%> style="width:60px;height:60px;"/> </td>
                        <td><%=med.getMedcode()%></td>
                        <td><%=med.getDisease() %></td>
                        <td><%=med.getNetcost()%></td>
                        <td><%=med.getInstock() %></td>
                        <td><%=med.getMed_desc()%></td>
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
