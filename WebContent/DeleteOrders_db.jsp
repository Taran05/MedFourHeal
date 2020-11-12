<%@page import="com.dao.OrderDetailsDAO"%>
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
			int id = Integer.parseInt(request.getParameter("orderid"));
			OrderDetailsDAO obj = new OrderDetailsDAO();
            boolean i = obj.deleteOrder(id);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Order Deleted Successfully!");
                        </script>
                        <jsp:include page="ordersadmin.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Customer Order Not Deleted Successfully!!!!");
                        </script>
                        <jsp:include page="DeleteOrders.jsp"/>
               <%
            }
        %>

</body>
</html>