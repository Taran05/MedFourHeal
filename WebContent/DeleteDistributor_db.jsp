<%@page import="com.dao.DistributorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Distributor</title>
</head>
<body>
<%
			String email = request.getParameter("email");
            DistributorDAO obj = new DistributorDAO();
            boolean i = obj.deleteDistributor(email);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Distributor Deleted Successfully!", "Success");
                        </script>
                        <jsp:include page="distributoradmin.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Distributor Not Deleted Successfully!!!!", "Fail");
                        </script>
                        <jsp:include page="DeleteDistributor.jsp"/>
               <%
            }
        %>

</body>
</html>