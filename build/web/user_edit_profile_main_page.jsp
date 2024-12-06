<%-- 
    Document   : user_edit_profile_main_page
    Created on : 30 Jan, 2024, 9:25:27 PM
    Author     : abhis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% String sid=(String)session.getAttribute("usernm");%>
       <%
         String fname=request.getParameter("n1");
         String lname=request.getParameter("n2");
        
         String cadress=request.getParameter("n3");
        
         String mobno=request.getParameter("n4");
        
         String username=request.getParameter("n6");
         String password=request.getParameter("n7");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement stmt = con.prepareStatement("UPDATE student77 SET FNAME = ?, LNAME = ?, CADDRESS = ?,MOBNO = ?,USERNAME = ?,PASSWORD = ? WHERE USERNAME='"+sid+"'"); 
    stmt.setString(1, fname);
    stmt.setString(2, lname);
    stmt.setString(3,cadress);
    stmt.setString(4,mobno); 
    stmt.setString(5, username);
    stmt.setString(6, password);
    int r =stmt.executeUpdate();
    if(r>0)
    {
    out.println("value update succsessfully");
    }
    %>
    </body>
</html>
