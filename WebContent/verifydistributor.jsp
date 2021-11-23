<%@page import="com.dao.DistributorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Distributor</title>
    </head>
    <body>
         <% 
                String email=request.getParameter("email");
                       DistributorDAO reg=new DistributorDAO();
                     
            boolean b = reg.verifyDistributor(email);
              if(b)
              {
 		%>
 			<h3>Verified Successfully. Please click here to login.</h3><a href="distributor.jsp">LogIn</a>
 		<%          
              }
              else
              {
         %>
          <h3>Verification failed..</h3><a href="distributor.jsp">LogIn</a>
         <%
        
              }
       %>
       
    
    </body>
</html>
