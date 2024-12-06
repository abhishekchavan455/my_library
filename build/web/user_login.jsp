<%-- 
    Document   : user_login
    Created on : 19 Jan, 2024, 7:56:56 PM
    Author     : abhis
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
         String usernm=request.getParameter("n1");
         String pass=request.getParameter("n2");
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
         Statement stmt=con.createStatement();
         ResultSet rs=stmt.executeQuery("select * from student77 where USERNAME ='"+usernm+"' and PASSWORD='"+pass+"'");
         if(rs.next())
         {
         session.setAttribute("usernm",usernm);
         response.sendRedirect("user_main_page.html");
         }
         else
         {
         out.println("<h1>invalid username or password<a href='user_login.html'>back to login page</a></h1>");
         }
        %>
    </body>
</html>
