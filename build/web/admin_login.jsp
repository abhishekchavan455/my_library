
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin login - </title>
    </head>
    <body>
         <%
         String uname=request.getParameter("n1");
         String pass=request.getParameter("n2");
         if((uname.equals("admin"))&&(pass.equals("admin123")))
         {
         response.sendRedirect("admin_login.html");
         }
         else   
         {
         response.sendRedirect("admin_main_page.html");
         }
        %>
    </body>
</html>
