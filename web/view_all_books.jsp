<%-- 
    Document   : view_all_books
    Created on : 19 Jan, 2024, 8:53:45 PM
    Author     : abhis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

    </style>
    </head>
    <body>
        <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from addbooks");
        %>
        <table border=2>
        <center>
            <h1>View All Book</h1>
        <tr>
        <th>book id</th>
        <th>book name</th>
        <th>price</th>
        <th>quantity</th>
        <th>publisher</th>
        <th>supply name</th>
        <th>supplyer contect</th>
        <th>supplyer address</th>
        </tr>   
        <%
        while(rs.next())
        {
        %>
        </tr>
        <tr>
        <td><%=rs.getInt(1)%>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getInt(3)%></td>
        <td><%=rs.getInt(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getInt(7)%></td>
        <td><%=rs.getString(8)%></td>
        </tr>
        <%
            }
        %>
        </center>
        </table>
    </body>
</html>
