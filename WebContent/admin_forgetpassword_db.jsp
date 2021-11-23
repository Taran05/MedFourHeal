<%@page import="com.dto.Admin"%>
<%@page import="com.dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <title>Admin Forget Password</title>
    </head>
    <body>
        <%

            AdminDAO obj = new AdminDAO();
            String email = request.getParameter("email");
            Admin ad = new Admin();
            ad.setEmail(email);
            boolean i = obj.forgotPassword(ad);
            if (i) {
              %>
        <script>
            swal("Password Forgetted Successfully!", "Success");
        </script>
        <jsp:include page="admin.jsp"/>
        <%
            } else {
                %>
        <script>
            swal("Password Not Forgetten !", "Error");
        </script>
        <jsp:include page="admin_forgetpassword.jsp"/>
        <%
            }

        %>
    </body>
</html>
