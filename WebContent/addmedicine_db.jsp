<%@page import="com.dao.MedicineDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Add Medicine</title>
    </head>
    <body>
       <%
           String medicine_name=request.getParameter("medicine_name");
       	   String medcode =request.getParameter("medcode");
       	   session.setAttribute("Medcode",medcode);
       	   String disease=request.getParameter("disease");
       	   String net_cost =request.getParameter("netcost");
       	   int netcost=Integer.parseInt(net_cost);
       	   String in_stock =request.getParameter("instock");
       	   int instock=Integer.parseInt(in_stock);
       	   String med_desc=request.getParameter("med_desc");
       	   String email=request.getParameter("email");
           MedicineDAO obj=new MedicineDAO();
           boolean i= obj.addMedicine(medicine_name, medcode, disease, netcost, instock, med_desc, email);
       if(i){
     %>
        <script>
            swal("Welcome!", "Medicine Details Added Successfully!", "Success");
        </script>
        <jsp:include page="medicineimage.jsp"/>
        <%
            } else {
                %>
        <script>
            swal("Medicine Not Added !", "Error");
        </script>
        <jsp:include page="addmedicine.jsp"/>
        <%
       }
 %>
    </body>
</html>
