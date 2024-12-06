<%-- 
    Document   : book_renew
    Created on : 19 Jan, 2024, 9:25:35 PM
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
.form {
  max-width: 320px;
  width: 100%;
  background-color: #fff;
  padding: 40px;
  box-shadow: 0px 0px 0px 4px rgba(52, 52, 53, 0.185);
  display: flex;
  flex-direction: column;
  border-radius: 10px;
  margin-left: 950px;
  margin-top: 160px;
}

.title {
  text-align: center;
  font-size: 2rem;
  margin-bottom: 20px;
  color: #1a202c;
}

.label {
  color: rgb(0, 0, 0);
  margin-bottom: 4px;
}

.input {
  padding: 10px;
  margin-bottom: 20px;
  width: 100%;
  font-size: 1rem;
  color: #4a5568;
  outline: none;
  border: 1px solid transparent;
  border-radius: 4px;
  transition: all 0.2s ease-in-out;
}

.input:focus {
  background-color: #fff;
  box-shadow: 0 0 0 2px #cbd5e0;
}

.input:valid {
  border: 1px solid green;
}

.input:invalid {
  border: 1px solid rgba(14, 14, 14, 0.205);
}

body
{
background:url("");
background-repeat:no-repeat;
background-attachment:fixed;
background-size:cover;
}

.form-submit-btn {
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: inherit;
  color: #fff;
  background-color: #212121;
  border: none;
  width: 100%;
  padding: 12px 16px;
  font-size: inherit;
  gap: 8px;
  margin: 12px 0;
  cursor: pointer;
  border-radius: 6px;
  box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.084), 0px 2px 3px rgba(0, 0, 0, 0.168);
}
.form-submit-btn:hover {
  background-color: #313131;
}
    
   </style>
   
    </head>
    <body>
        <%
        String sid=request.getParameter("n1");
        int id=Integer.parseInt(sid);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from transuction1 where STDID="+id+"");
        %>
        <%
        while(rs.next())
        {
        %>
      <form class="form" action="book_renew_main.jsp">
    <span class="title"></span>
    
    <label class="label">Student Id </label>
    <input type="text" name="n1" value='<%=rs.getString(2)%>'>
    
    <label class="label">Book Id </label>
    <input type="text" name="n2" value='<%=rs.getString(4)%>'>
    
    <label class="label">Book Name</label>
    <input type="text" name="n4" value='<%=rs.getString(5)%>'>
    
    <label class="label">Book Issue Date</label>
    <input type="text" name="n5" value='<%=rs.getString(6)%>'>
    
    <label class="label">Book Return Date</label>
    <input type="text" name="n6" value='<%=rs.getString(7)%>'>
    
    <input type="submit" value="submit" class="form-submit-btn">
    <input type="reset" class="form-submit-btn">
  </form>   
            <%
             }
             %>
    </body>
</html>