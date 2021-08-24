<%-- 
    Document   : logout
    Created on : 17 Jan, 2021, 1:23:15 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.invalidate();%>
        <jsp:forward page="index.jsp"/>
                
    </body>
</html>
