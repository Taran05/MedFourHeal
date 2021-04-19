<%@page import="com.dao.DistributorDAO"%>
<jsp:useBean id="obj" class="com.dto.Distributor" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%
        
        DistributorDAO reg = new DistributorDAO();
        boolean b = reg.checkDistributorCredentials(obj);
        if (b) 
        { 
            session.setAttribute("distributor",obj.getEmail());

            
            RequestDispatcher rd = request.getRequestDispatcher("distributroProcess.jsp");
            rd.forward(request, response); 
            %>
            <script>
                swal("Welcome!", "Login Successfully!", "success");
            </script>
            <%
        } 
        else 
        {
        	%>
            <script>
                swal("Please login with correct id!", "error");
            </script>
            <%
             RequestDispatcher rd = request.getRequestDispatcher("distributor.jsp");
            rd.include(request, response);
        }
            
           
       
       
        
    %>
</body>
</html>