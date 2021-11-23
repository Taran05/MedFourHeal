<%@page import="com.dao.AdminDAO"%>
<jsp:useBean id="obj" class="com.dto.Admin" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Sawarabi+Gothic&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>LogIn</title>
</head>
<body>

    <%
        
        AdminDAO reg = new AdminDAO();
        boolean b = reg.checkAdminCredentials(obj);
        if (b) 
        { 
            session.setAttribute("admin",obj.getEmail());
		%>
            <script>
                swal("Welcome!", "Login Successfully!", "Success");
            </script>
            <%
            RequestDispatcher rd = request.getRequestDispatcher("adminprocess.jsp");
            rd.forward(request, response); 
        } 
        else 
        {
        	%>
            <script>
                swal("Please login with correct id !", "Error");
            </script>
            <%
             RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
            rd.include(request, response);
        }
            
           
       
       
        
    %>
</body>
</html>