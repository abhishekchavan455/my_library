<%-- 
    Document   : book_renew_main
    Created on : 19 Jan, 2024, 9:25:53 PM
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
        <title>book renew</title>
    </head>
    <body>
        <%
        String studentid=request.getParameter("n1");
        int stdid=Integer.parseInt(studentid);
        String rdate=request.getParameter("n6");
  
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int result=stmt.executeUpdate("update transuction1 set rdate='"+rdate+"' where stdid="+stdid+"");
        if(result>0)
        {
        out.println("one record updated");
        }
        %>
       
    </body>
</html>
