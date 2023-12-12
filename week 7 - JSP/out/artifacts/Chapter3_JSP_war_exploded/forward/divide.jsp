<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <--
    https://www.codejava.net/java-ee/jsp/jsp-forward-standard-action-examples
    
    http://localhost:8080/Chapter3_JSP/forward/divide.jsp?X=1000&Y=50
    -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Divide X by Y</title>
</head>
<body>
    <c:if test="${param.Y == 0}">
        <jsp:forward page="error.jsp" />
    </c:if>
     
    <h2 align="center">
        Result of ${param.X} / ${param.Y} is ${param.X / param.Y}
    </h2>
</body>
</html>