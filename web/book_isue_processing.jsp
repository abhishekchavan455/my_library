<%-- 
    Document   : book_isue_processing
    Created on : 8 Dec, 2024, 1:05:51 PM
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
        <title>book issue processing</title>
            <style>
 .form {
  max-width: 550px;
  width: 100%;
  background-color: #fff;
  padding: 30px;
  box-shadow: 0px 0px 0px 4px rgba(52, 52, 53, 0.185);
  display: flex;
  flex-direction: column;
  border-radius: 10px;
  margin-left: 100px;
  
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
background:url("form1.jpg");
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
        <%
        String studid=request.getParameter("n1");
        int stdid=Integer.parseInt(studid);            
        String bookid=request.getParameter("n2");
        int bid=Integer.parseInt(bookid);  
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        Statement stmt1=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from student77 where LBID="+stdid+"");                
        ResultSet rs1=stmt1.executeQuery("select * from addbooks where BOOKUID="+bid+"");
        %>
        <%
        while(rs.next()&& rs1.next())
        {
        %>
    <body>
        <form class="form" action="book_issue.jsp">
    <span class="title">Book issue here</span>
    
    <label class="label">Student Id</label>
    <input type="text"  name="stdid" value='<%=rs.getInt(1)%>' required class="input">

    <label class="label">Student Name</label>
    <input type="text"  name="sname" value='<%=rs.getString(2)%>' required class="input">
    
    <label class="label">Book Id</label>
    <input type="text"  name="bookid" value='<%=rs1.getInt(1)%>'  required class="input">
    
    <label class="label">book name</label>
    <input type="text"  name="bname" value='<%=rs1.getString(2)%>' required class="input">
    
    <label class="label">issue date</label>
    <input type="date" class="input"  name="idate" required>
   
    <label class="label">renew date</label>
    <input type="date" class="input" name="rdate" required>
    
    <label class="label">book price</label>
    <input type="text"  name="bprice" value='<%=rs1.getInt(3)%>' required class="input">    

    <label class="label">book publication</label>
    <input type="text"  name="bpub" value='<%=rs1.getString(5)%>' required class="input"> 
    
    <input type="submit" value="submit" class="form-submit-btn">
    <input type="reset" class="form-submit-btn">
  </form>      
        
        <%
         }
         %>
    </body>
</html>

