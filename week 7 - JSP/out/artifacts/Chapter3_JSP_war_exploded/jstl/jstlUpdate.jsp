<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>&lt;sql:update&gt; Demo</title>
  </head>
  <body>
    <h1>&lt;sql:update&gt; Demo</h1>
    <form name="updateCitizenForm"
        action="${pageContext.request.contextPath}/jstl/jstlUpdate.jsp"
        method="POST">
        "${pageContext.request.contextPath}" ;
        <table border="0">
            <tr>
                <td>* Enter SSN:</td>
                <td><input type="text" name="id" />
            </tr>           
            <tr>
                <td>* Enter New Address:</td>
                <td><textarea rows="10" cols="20" name="name"></textarea>
            </tr>
            <tr>
                <td>* Enter New Tel:</td>
                <td><input type="text" name="address" />
            </tr>
            <tr>
                <td><input type="submit" value="Submit"/></td>
            </tr>
        </table>
         
    </form>
    <br/><br/>
    <sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/test" user="root" password="root" />
         
    <c:choose>
    <c:when test="${not empty param.id
               && not empty param.name
               && not empty param.address}">       
        <sql:update dataSource="${myDS}" var="student">
            Insert Into Student (id, name, address) values(?,?,?)
            <sql:param value="${param.id}" />
            <sql:param value="${param.name}" />
            <sql:param value="${param.address}" />
        </sql:update>
    </c:when>
    <c:otherwise>
        <font color="#cc0000">Please enter mandatory information.</font>
    </c:otherwise>
    </c:choose>
     
    <br/><br/>
    <sql:query dataSource="${myDS}" var="student">
        SELECT * from student;
    </sql:query>
    <table border="1">
        <c:forEach var="row" items="${student.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.name}" /></td>
                <td><c:out value="${row.name}" /></td>
                <td><c:out value="${row.address}" /></td>
                <td><c:out value="${row.address}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>