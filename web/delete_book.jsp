<%-- 
    Document   : delete_book
    Created on : 19 Jan, 2024, 8:45:14 PM
    Author     : abhis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String bname=request.getParameter("n1");
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("delete from addbooks where BNAME='"+bname+"'");
         if(result>0)
         {
         out.println("one book deleted");
         }
        %>
        <a href="admin_main_page.html" style="text-decoration: none;">
        <button style="background-color: blue; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">
            Back to Home
        </button>
        </a>
    </body>
</html>
