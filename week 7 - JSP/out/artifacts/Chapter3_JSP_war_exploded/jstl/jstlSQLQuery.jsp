<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>   
<html>   
<body>   
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/test"  
     user="root"  password="root"/>    
<sql:query dataSource="${db}" var="rs">  
SELECT * from Student;  
</sql:query>   
<table border="2" width="100%">  
<tr>  
<th>Student ID</th>  
<th>  Name</th>  
<th>  Address</th>  
<th> Mark</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.id}"/></td>  
<td><c:out value="${table.name}"/></td>  
<td><c:out value="${table.address}"/></td>  
<td><c:out value="${table.mark}"/></td>  
</tr>  
</c:forEach>  
</table>    
</body>  
</html>  