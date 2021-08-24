<%-- 
    Document   : admin
    Created on : 18 Jan, 2021, 7:32:04 PM
    Author     : student
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
        th,tr{
             border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
        }
        .previous:hover,.next:hover {
  background-color: blueviolet;
  color: black;
}
.previous {
    float:left;
  color: white;
  background-color: blue;
   text-decoration: none;
  display: inline-block;
  padding: 20px 15px;
  margin-bottom: 5px;
   
}
    </style>
    <body>
        <a href="index.jsp" class="previous">&#x1F3E0; home</a>
        <h2 style="margin-left: auto;margin-right: auto; text-align: center">Customer Details</h2>
        <table style="margin-left: auto;margin-right: auto; text-align: center; border-color:  black; border:5px;">
            <tr>
                <th>Email ID</th>
                <th>Password</th>
                <th>Name</th>
                <th>Account</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>Pincode</th>
            </tr>
            <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/details","details", "details");
            String sql="select * from CUSTOMER";
           PreparedStatement ps=con.prepareStatement(sql);
           ResultSet rs=ps.executeQuery();
           
            while(rs.next())
           {
              String emailDB=rs.getString("EMAIL");
             String  passDB=rs.getString("PASSWORD");
              String nameDB=rs.getString("NAME");
              String accountDB=rs.getString("ACCOUNT");
              String addressDB=rs.getString("ADDRESS");
              String phoneDB=rs.getString("MOBILE");
              String pinDB=rs.getString("PINCODE");
              %>
              <tr>
                  <td> <%out.println(emailDB);%></td>
                  <td> <%out.println(passDB); %></td>
                  <td> <%out.println(nameDB); %></td>
                  <td> <%out.println(accountDB);%></td>
                  <td> <%out.println(addressDB);%> </td>
                  <td> <%out.println(phoneDB);%> </td>
                  <td><%out.println(pinDB);%> </td>
              </tr>
             
         <%  }

        %>
    </body>
</html>
