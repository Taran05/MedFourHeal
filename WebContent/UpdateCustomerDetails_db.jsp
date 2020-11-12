<%@page import="com.dao.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer Details</title>
</head>
<body>
<%
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String address = request.getParameter("address");
			String mobile_no = request.getParameter("mobile_no");
			String d_o_b  = request.getParameter("d_o_b");
            CustomerDAO obj = new CustomerDAO();
            boolean i = obj.updateCustomerDetails(email, password, first_name, last_name, address, mobile_no, d_o_b);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Details Updated Successfully!", "success");
                        </script>
                        <jsp:include page="customeradmin.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Details Not Updated Successfully!!!!", "Fail");
                        </script>
                        <jsp:include page="UpdateCustomerDetails.jsp"/>
               <%
            }
        %>

</body>
</html>