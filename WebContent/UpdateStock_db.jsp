<%@page import="com.dao.MedicineDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Medicine/Stock</title>
</head>
<body>
<%
			String med_id = request.getParameter("id");
			int id=Integer.parseInt(med_id);
			String medicine_name = request.getParameter("medicine_name");
			String medcode= request.getParameter("medcode");
			String disease= request.getParameter("disease");
			String net_cost = request.getParameter("netcost");
			int netcost=Integer.parseInt(net_cost);
			String in_stock = request.getParameter("instock");
			int instock=Integer.parseInt(in_stock);
			String med_desc= request.getParameter("med_desc");
            MedicineDAO obj = new MedicineDAO();
            boolean i = obj.updateMedicineStock(id, medicine_name, medcode, disease, netcost, instock, med_desc);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Medicine Details/Stock Updated Successfully!", "Success");
                        </script>
                        <jsp:include page="viewstock.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Medicine Details/Stock Not Updated Successfully!!!!", "Fail");
                        </script>
                        <jsp:include page="UpdateStock.jsp"/>
               <%
            }
        %>

</body>
</html>