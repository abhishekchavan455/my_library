<%-- 
    Document   : book_submit
    Created on : 30 Jan, 2024, 9:05:04 PM
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
         String sid=request.getParameter("n1");
         int id=Integer.parseInt(sid);
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("delete from transuction1 where STDID="+id+"");
         if(result>0)
         {
         out.println("book submited.");
         }
        %>
    </body>
</html>
