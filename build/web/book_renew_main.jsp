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
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String bookid=request.getParameter("n1");
        int bid=Integer.parseInt(bookid);
        String bprice=request.getParameter("n2");
        int price=Integer.parseInt(bprice);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int result=stmt.executeUpdate("update book1 set PRICE="+price+" where BID="+bid+"");
        if(result>0)
        {
        out.println("one record updated");
        }
        %>
       
    </body>
</html>
