<%-- 
    Document   : user_new_login
    Created on : 31 Jan, 2024, 8:43:35 PM
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
         String fname=request.getParameter("n1");
         String lname=request.getParameter("n2");
         String dob=request.getParameter("n3");
         String address=request.getParameter("n4");
         String caddress=request.getParameter("n5");
         String dnum=request.getParameter("n6");
         int deptno=Integer.parseInt(dnum);
         String branch=request.getParameter("n7");
         String y=request.getParameter("n8");
         int year=Integer.parseInt(y);
         String ay=request.getParameter("n9");
         int ayear=Integer.parseInt(ay);
         String mobile=request.getParameter("n10");
         int mobno=Integer.parseInt(mobile);
         String gender=request.getParameter("n11");
         String username=request.getParameter("n12");
         String password=request.getParameter("n13");
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("insert into student77 values(lbid.nextval,'"+fname+"','"+lname+"','"+dob+"','"+address+"','"+caddress+"',"+deptno+",'"+branch+"',"+year+","+ayear+","+mobno+",'"+gender+"','"+username+"','"+password+"')");
         if(result>0)
         {
         out.println("new registration succsessfull");
         }
        %>
    </body>
</html>
