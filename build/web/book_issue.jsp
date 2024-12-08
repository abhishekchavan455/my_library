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
        <title>book issue</title>
    </head>
    <body>
        <%     
        String stdname=request.getParameter("sname");    
        String stdid=request.getParameter("stdid");
        int sid=Integer.parseInt(stdid);
        String bookid=request.getParameter("bookid");
        int bid=Integer.parseInt(bookid);
        String bookname=request.getParameter("bname");
        String idate=request.getParameter("idate");
        String rdate=request.getParameter("rdate");
        String price=request.getParameter("bprice");
        int bprice=Integer.parseInt(price);
        String pub=request.getParameter("bpub");
  
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int result=stmt.executeUpdate("insert into transuction1 values(tid.nextval,"+sid+",'"+stdname+"',"+bid+",'"+bookname+"','"+idate+"','"+rdate+"',"+bprice+",'"+pub+"')");
         if(result>0)
         {
         out.println("book issue successfull");
         }
    %>
    </body>
</html>
