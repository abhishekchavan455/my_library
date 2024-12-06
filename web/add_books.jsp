<%-- 
    Document   : add_books
    Created on : 19 Jan, 2024, 7:28:30 PM
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
        String bprice=request.getParameter("n2");
        int price=Integer.parseInt(bprice);
        String bqty=request.getParameter("n3");
        int qty=Integer.parseInt(bqty);
        String publisher=request.getParameter("n4");
        String sname=request.getParameter("n5");
        String scont=request.getParameter("n6");
        int sc=Integer.parseInt(scont);
        String address=request.getParameter("n7");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int result=stmt.executeUpdate("insert into addbooks values(bookuid.nextval,'"+bname+"',"+price+","+qty+",'"+publisher+"','"+sname+"',"+sc+",'"+address+"')");
        if(result>0)
        {
        out.println("Book Added");
        }
        %>
    </body>
</html>
