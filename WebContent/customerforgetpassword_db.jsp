<%@page import="com.dto.Customer"%>
<%@page import="com.dao.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <title>Customer Forget Password</title>
    </head>
    <body>
        <%

            CustomerDAO obj = new CustomerDAO();
            String email = request.getParameter("email");
            Customer cust = new Customer();
            cust.setEmail(email);
            boolean i = obj.forgotPassword(cust);
            if (i) {
              %>
        <script>
            swal("Welcome!", "Password Forgetted Successfully !", "Success");
        </script>
        <jsp:include page="customer.jsp"/>
        <%
            } else {
                %>
        <script>
            swal("Password Not Forgetten !", "Error");
        </script>
        <jsp:include page="customerforgetpassword.jsp"/>
        <%
            }

        %>
    </body>
</html>
