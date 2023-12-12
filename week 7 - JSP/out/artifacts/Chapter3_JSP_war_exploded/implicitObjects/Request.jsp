<%-- 
    Document   : Request.jsp
    Created on : Mar 6, 2023, 6:28:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("username");
            
            // out.print("welcome " + name);
            
            response.sendRedirect("http://www.google.com/search?q="+name);
        %>
    </body>
</html>
