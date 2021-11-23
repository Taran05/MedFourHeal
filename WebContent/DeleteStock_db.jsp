<%@page import="com.dao.MedicineDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Medicine</title>
</head>
<body>
<%
			String med_id = request.getParameter("id");
			int id=Integer.parseInt(med_id);
           	MedicineDAO obj = new MedicineDAO();
            boolean i = obj.deleteMedicine(id);
            if (i) {
               %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Medicine Deleted Successfully!", "Success");
                        </script>
                        <jsp:include page="viewstock.jsp"/>
               <%
            } else {
                 %>
                  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                                swal("Medicine Not Deleted Successfully!!!!", "Fail");
                        </script>
                        <jsp:include page="DeleteStock.jsp"/>
               <%
            }
        %>

</body>
</html>