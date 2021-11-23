<%@page import="com.dao.OrderDetailsDAO"%>
<%@page import="com.dao.MedicineDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Buy Medicine</title>
    </head>
    <body>
       <%
           String email=request.getParameter("email");
           String medcode =request.getParameter("medcode");
           String medicine_name=request.getParameter("medicine_name");
       	   String min_quantity=request.getParameter("minquantity");
       	   int minquantity=Integer.parseInt(min_quantity);
       	   String type=request.getParameter("type");
       	   String net_cost =request.getParameter("netcost");
       	   int netcost=Integer.parseInt(net_cost);
       	   String paymode =request.getParameter("paymode");
       	   String sellerEmail=request.getParameter("sellerEmail");
           OrderDetailsDAO obj=new OrderDetailsDAO();
           session.setAttribute("Amount", netcost);
           boolean i= obj.addOrder(email, medcode, medicine_name, minquantity, type, netcost, paymode);
       	   if(i)
       	   {
       		   MedicineDAO med=new MedicineDAO();
       		   boolean update= med.updateStockAfterBuying(medcode, sellerEmail);
       		   if(update)
       		   {
       			   if(paymode.equals("Cash On Delivery"))
       			   {
     					%>
     					<script>
            				swal("Medicine Ordered Successfully !", "Success");
        				</script>
        				<jsp:include page="ordermedicine.jsp"/>
        				<%
       			   }
       			   else
       			   {
       				   %>
        				<script>
         				swal("Medicine Ordered Placed And Redirecting for Payment !", "Success");
        				</script>
        				<jsp:include page="payment.jsp"/>
        				<%
       			   }
       			   } else {
                %>
        <script>
            swal("Medicine Not Ordered Successfully !", "Error");
        </script>
        <jsp:include page="ordermedicine.jsp"/>
        <%
       }
       }
 %>
    </body>
</html>
