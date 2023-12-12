<%--
  Created by IntelliJ IDEA.
  User: Trhquan
  Date: 11/6/2023
  Time: 12:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="person" class="com.example.Person" scope="page" />
<jsp:setProperty name="person" property="name" value="John Doe" />
<jsp:setProperty name="person" property="age" value="321" />

<p>Name: <jsp:getProperty name="person" property="name" /></p>
<p>Age: <jsp:getProperty name="person" property="age" /></p>

</body>
</html>
