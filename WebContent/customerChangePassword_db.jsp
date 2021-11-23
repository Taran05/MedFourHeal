<%@page import="com.dto.Customer"%>
<%@page import="com.dao.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Change Password</title>

    </head>
    <body>
        <%
            String email = (String) session.getAttribute("customer");

            String pass = request.getParameter("oldpassword");

            String newpass = request.getParameter("newpassword");

            CustomerDAO obj = new CustomerDAO();
            boolean i = obj.changePassword(email, pass, newpass);
            if (i) {
                %>
            
           <script>
            swal("Welcome!", "Password changed Successfully !", "Success");
        </script>
        <jsp:include page="customerProcess.jsp"/>
        <%
            } else {
                %>
        <script>
            swal( "Password Not Changed !", "Error");
        </script>
        <jsp:include page="customerchangepassword.jsp"/>
        <%
}
        %>
    </body>
</html>