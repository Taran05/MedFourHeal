<%@page import="com.dao.OrderDetailsDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Order Details</title>
</head>
<body>
<%
			int id =Integer.parseInt(request.getParameter("id"));
			String email = request.getParameter("email");
			String medcode = request.getParameter("medcode");
			String medicinename = request.getParameter("medicinename");
			int minquantity = Integer.parseInt(request.getParameter("minquantity"));
			String type = request.getParameter("type");
			int orderqueue = Integer.parseInt(request.getParameter("orderqueue"));
			int netcost = Integer.parseInt(request.getParameter("netcost"));
			int amount = Integer.parseInt(request.getParameter("amount"));
			String paymode = request.getParameter("paymode");
			String status  = request.getParameter("status");
            OrderDetailsDAO obj = new OrderDetailsDAO();
            boolean i = obj.updateOrderDetails(id, email, medcode, medicinename, minquantity, type, orderqueue, netcost, amount, paymode, status);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Order Details Updated Successfully!", "Success");
                        </script>
                        <jsp:include page="ordersadmin.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Order Details Not Updated Successfully!!!!", "Fail");
                        </script>
                        <jsp:include page="UpdateOrders.jsp"/>
               <%
            }
        %>

</body>
</html>