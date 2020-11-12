<%@page import="com.dao.DistributorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Distributor Details</title>
</head>
<body>
<%
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String mobile_no = request.getParameter("mobile_no");
			String pharmacist_no = request.getParameter("pharmacist_no");
			String form20_drug_license_no = request.getParameter("form20_drug_license_no");
			String form21_drug_license_no = request.getParameter("form21_drug_license_no");
			String shop_address = request.getParameter("shop_address");
			String residential_address = request.getParameter("residential_address");
			String d_o_b  = request.getParameter("d_o_b");
            DistributorDAO obj = new DistributorDAO();
            boolean i = obj.updateDistributorDetails(email, password, first_name, last_name, mobile_no, 
            		pharmacist_no, form20_drug_license_no, form21_drug_license_no, shop_address, residential_address, d_o_b);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Distributor Details Updated Successfully!", "Success");
                        </script>
                        <jsp:include page="distributoradmin.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Distributor Details Not Updated Successfully!!!!", "Fail");
                        </script>
                        <jsp:include page="UpdateDistributorDetails.jsp"/>
               <%
            }
        %>

</body>
</html>