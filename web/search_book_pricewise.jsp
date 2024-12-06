<%-- 
    Document   : search_book_pricewise
    Created on : 19 Jan, 2024, 9:03:18 PM
    Author     : abhis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        String price1=request.getParameter("n1");
        int p1=Integer.parseInt(price1);
        String price2=request.getParameter("n2");
        int p2=Integer.parseInt(price2);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from book1 where PRICE >="+p1+" and PRICE <="+p2+"");
        %>
    <center><h1>Price Wise Search</h1></center>
        <table border=2>
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
        <tr>
        <td><%=rs.getInt(1)%></td>
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
        
        </table>
    </body>
</html>
