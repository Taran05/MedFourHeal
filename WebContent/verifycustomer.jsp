<%@page import="com.dao.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Customer</title>
    </head>
    <body>
         <% 
                String email=request.getParameter("email");
                       CustomerDAO reg=new CustomerDAO();
                     
            boolean b = reg.verifyCustomer(email);
              if(b)
              {
 		%>
 			<h3>Verified Successfully. Please click here to login.</h3><a href="customer.jsp">LogIn</a>
 		<%          
              }
              else
              {
         %>
          <h3>Verification failed..</h3><a href="customer.jsp">LogIn</a>
         <%
        
              }
       %>
       
    
    </body>
</html>
