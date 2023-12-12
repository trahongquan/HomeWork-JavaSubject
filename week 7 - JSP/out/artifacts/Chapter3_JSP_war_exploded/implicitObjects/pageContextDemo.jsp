<%-- 
    Document   : pageContextDemo
    Created on : Mar 6, 2023, 6:45:32 PM
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
            String name = request.getParameter("uname");

            pageContext.setAttribute("user", name, PageContext.SESSION_SCOPE);

            String nameStr = (String) pageContext.getAttribute("user", PageContext.SESSION_SCOPE);
            out.print("Hello " + nameStr);

            pageContext.removeAttribute("user", PageContext.SESSION_SCOPE);

            String nameStr2 = (String) pageContext.getAttribute("user", PageContext.SESSION_SCOPE);
            out.print("Hello " + nameStr2);
        %> 
    </body>
</html>
