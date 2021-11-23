<%@page import="com.dao.CustomerDAO"%>
<jsp:useBean id="obj" class="com.dto.Customer" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
</head>
<body>

    <%
        
        CustomerDAO reg = new CustomerDAO();
        boolean b = reg.checkCustomerCredentials(obj);
        if (b) 
        { 
            session.setAttribute("customer",obj.getEmail());
            RequestDispatcher rd = request.getRequestDispatcher("customerProcess.jsp");
            rd.forward(request, response); 
            %>
            <script>
                swal("Welcome!", "Login Successfully !", "Success");
            </script>
            <%
        } 
        else 
        {
        	%>
            <script>
                swal("Please login with correct id !", "Error");
            </script>
            <%
             RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");
            rd.include(request, response);
        }
            
           
       
       
        
    %>
</body>
</html>