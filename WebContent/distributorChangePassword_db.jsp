<%@page import="com.dto.Distributor"%>
<%@page import="com.dao.DistributorDAO"%>
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
            String email = (String) session.getAttribute("distributor");

            String pass = request.getParameter("oldpassword");

            String newpass = request.getParameter("newpassword");

            DistributorDAO obj = new DistributorDAO();
            boolean i = obj.changePassword(email, pass, newpass);
            if (i) {
                %>
            
           <script>
            swal("Welcome!", "Password Changed Successfully!", "Success");
        </script>
        <jsp:include page="distributroProcess.jsp"/>
        <%
            } else {
                %>
        <script>
            swal( "Password Not Changed !", "Error");
        </script>
        <jsp:include page="distributorchangepassword.jsp"/>
        <%
}
        %>
    </body>
</html>