<%@page import="com.javatpoint.UserDao"%>
<jsp:useBean id="u" class="com.javatpoint.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    UserDao.delete(u);
    response.sendRedirect("viewusers.jsp");
%>