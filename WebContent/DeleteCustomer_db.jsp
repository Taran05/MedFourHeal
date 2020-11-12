<%@page import="com.dao.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleting Customer</title>
</head>
<body>
<%
			String email = request.getParameter("email");
            CustomerDAO obj = new CustomerDAO();
            boolean i = obj.deleteCustomer(email);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Deleted Successfully!");
                        </script>
                        <jsp:include page="customeradmin.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Not Deleted Successfully!!!!");
                        </script>
                        <jsp:include page="DeleteCustomer.jsp"/>
               <%
            }
        %>

</body>
</html>