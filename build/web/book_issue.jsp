<%-- 
    Document   : book_issue
    Created on : 19 Jan, 2024, 9:23:49 PM
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
        String stdid=request.getParameter("n1");
        String stdname=request.getParameter("n2");
        String bookid=request.getParameter("n3");
        String bookname=request.getParameter("n4");
        String idate=request.getParameter("n5");
        String rdate=request.getParameter("n6");
        String bprice=request.getParameter("n7");
        String pub=request.getParameter("n8");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int result=stmt.executeUpdate("insert into transuction1 values(tid.nextval,"+stdid+",'"+stdname+"',"+bookid+",'"+bookname+"','"+idate+"','"+rdate+"',"+bprice+",'"+pub+"')");
         if(result>0)
         {
         out.println("book issue successfull");
         }
    %>
    </body>
</html>
