<%@page import="com.dto.Distributor"%>
<%@page import="com.dao.DistributorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <title>Distributor Forget Password</title>
    </head>
    <body>
        <%

            DistributorDAO obj = new DistributorDAO();
            String email = request.getParameter("email");
            Distributor ad = new Distributor();
            ad.setEmail(email);
            boolean i = obj.forgotPassword(ad);
            if (i) {
              %>
        <script>
            swal("Welcome!", "Password Forgetted Successfully!", "Success");
        </script>
        <jsp:include page="distributor.jsp"/>
        <%
            } else {
                %>
        <script>
            swal("password Not Forgetten !", "Error");
        </script>
        <jsp:include page="distributorforgetpassword.jsp"/>
        <%
            }

        %>
    </body>
</html>
