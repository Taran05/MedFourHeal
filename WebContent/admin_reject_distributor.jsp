<%@page import="com.dao.DistributorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<title>Admin Reject Distributor</title>
      
    </head>
    <body>
      
      <% 
          
        String email=request.getParameter("email");
        DistributorDAO dao=new DistributorDAO();
             boolean i= dao.rejectDistributor(email);
             if(i){
             %>
        <script>
             swal("Distributor Rejected Successfully!", "Success");
        </script>
        <jsp:include page="distributoradmin.jsp"/>
        <%  
             
             }
        %>
     
    </body>
</html>
