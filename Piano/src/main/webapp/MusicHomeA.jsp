<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/piano"
	user="root"
	password="root"
	/>    

<c:if test="${! empty param.delid }">
	<sql:update>
		DELETE FROM mu WHERE id = ?
		<sql:param>${param.delid }</sql:param>
	</sql:update>
</c:if>
<sql:query var="result">
	SELECT * FROM mu ORDER BY id ASC
</sql:query>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Database</title>
</head>
<body style="background-image: url(MB.jpeg)">
<h1>管理者頁面</h1>
<a href="MusicAdd.jsp">我要推薦歌曲</a>
<hr />
<table border="1" width="100%">
	<tr>
	    <th>推薦玩家</th>
		<th>歌曲</th>
		<th>作曲者</th>
		<th>Del</th>
		<th>Edit</th>
		
	</tr>
	<script>
		function delConfirm(account){
			var isDel = confirm("Delete " + account + "?");
			return isDel;
		}</script>
	<c:forEach items="${result.rows }" var="row">
		<tr>
		<td>${row.id}</td>
			<td>${row.id}</td>
			<td>${row.s1 }</td>
			<td>${row.c1 }</td>
			<td>${row.f1 }</td>
			
			<td><a href="?delid=${row.id }" onclick="return delConfirm('${row.id }');">Del</a></td>
			<td><a href="brad61.jsp?editid=${row.id }">Edit</a></td>
			
		</tr>
	</c:forEach>
</table>

</body>
</html>