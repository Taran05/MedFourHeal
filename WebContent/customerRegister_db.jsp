<%@page import="com.dao.CustomerDAO"%>
<jsp:useBean id="obj" class="com.dto.Customer" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
</head>
<body>
<%
            CustomerDAO reg = new CustomerDAO();
            boolean b = reg.registerCustomer(obj);
            if (b) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Registered Successfully!");
                        </script>
                        <jsp:include page="customer.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Not Registered Successfully!!!!");
                        </script>
                        <jsp:include page="customerRegister.jsp"/>
               <%
            }
        %>

</body>
</html>
