<%@page import="com.dao.DistributorDAO"%>
<jsp:useBean id="obj" class="com.dto.Distributor" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Distributer Registration</title>
</head>
<body>
<%
            DistributorDAO reg = new DistributorDAO();
            boolean b = reg.registerDistributor(obj);
            if (b) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Verification link has been sent on your email!");
                        </script>
                        <jsp:include page="distributor.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Your email is incorrect please chack email!");
                        </script>
                        <jsp:include page="distributorRegister.jsp"/>
               <%
            }
        %>

</body>
</html>
