<%-- 
    Document   : user_edit_profile
    Created on : 30 Jan, 2024, 9:25:03 PM
    Author     : abhis
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .card {
  width: 350px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-shadow: 2px 2px 8px rgba(0,0,0,0.1);
  overflow: hidden;
  margin: 10px;
}

.card-header {
  background-color: #333;
  padding: 16px;
  text-align: center;
}

.card-header .text-header {
  margin: 0;
  font-size: 18px;
  color: rgb(255, 255, 255);
}

.card-body {
  padding: 16px;
}

.form-group {
  margin-bottom: 10px;
}

.form-group label {
  display: block;
  font-size: 14px;
  color: #333;
  font-weight: bold;
  margin-bottom: 1px;
}

.form-group input 
{
  width: 95%;
  padding: 8px;
  font-size: 14px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.btn {
  padding: 12px 24px;
  font-size: 16px;
  border: none;
  border-radius: 4px;
  background-color: #333;
  color: #fff;
  text-transform: uppercase;
  transition: background-color 0.2s ease-in-out;
  cursor: pointer
}

.btn:hover {
  background-color: #ccc;
  color: #333;
}
        </style>
    </head>
    <body>
       <% String us=(String)session.getAttribute("usernm");%>
       <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from student77 where USERNAME='"+us+"'");
        %>
        <%
        while(rs.next()) 
        {
        %>
       
                <div class="card">
  <div class="card-header">
    <div class="text-header">Edit Student Profile</div>
  </div>
  <div class="card-body">
    <form action="user_edit_profile_main_page.jsp">
      
      <div class="form-group">
        <label>first name</label>
        <input type="text" name="n1" value='<%=rs.getString(2)%>'>
      </div>

      <div class="form-group">
        <label>last name</label>
        <input type="text" name="n2" value='<%=rs.getString(3)%>'>
      </div>
        
      <div class="form-group">
        <label>current address </label>
        <input type="text" name="n3" value='<%=rs.getString(6)%>'>
      </div>
        
      <div class="form-group">
        <label>mobile number</label>
        <input type="text" name="n4" value='<%=rs.getInt(11)%>'>
      </div>
        
      <div class="form-group">
        <label>username</label>
        <input type="text" name="n5" value='<%=rs.getString(13)%>'>
      </div>
        
      <div class="form-group">
        <label>password</label>
        <input type="text" name="n6" value='<%=rs.getString(14)%>' >
      </div>
        
     <input type="submit" class="btn" value="submit">
    </form>
  </div>
</div>
        
        <%
         }   
        %>
    </body>
</html>