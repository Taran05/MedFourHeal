<%@page import="com.dao.DistributorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Admin Approve Distributor</title>
    </head>
    <body>
        <%
          
          String email = request.getParameter("email");
          
          DistributorDAO sd = new DistributorDAO();
          
          boolean b = sd.approveDistributor(email);
          if(b){
                 %>
        <script>
            swal("Distributor Approved Successfully!", "Success");
            
           
        </script>
        <jsp:include page="distributoradmin.jsp"/>
        <%
          }else
          {
        	  %>
        	  <script>
            swal("Distributor Not Approved !", "Error");
            
           
        </script>
        <%
          }
        %>    
    </body>
</html>
