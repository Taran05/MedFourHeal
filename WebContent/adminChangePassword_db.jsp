<%@page import="com.dto.Admin"%>
<%@page import="com.dao.AdminDAO"%>
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
            String email = (String) session.getAttribute("admin");

            String pass = request.getParameter("oldpassword");

            String newpass = request.getParameter("newpassword");

            AdminDAO obj = new AdminDAO();
            boolean i = obj.changePassword(email, pass, newpass);
            if (i) {
                %>
            
           <script>
            swal("Password changed Successfully!", "Success");
        </script>
        <jsp:include page="adminprocess.jsp"/>
        <%
            } else {
                %>
        <script>
            swal( "Password Not Changed !", "Error");
        </script>
        <jsp:include page="adminchangepassword.jsp"/>
        <%
}
        %>
    </body>
</html>