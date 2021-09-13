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


<button id="back" onclick="location.href='MusicAdd.jsp'" >我要推薦歌曲</button>
<button id="play" onclick="location.href='PianoPlay.jsp'" >回到遊戲頁</button>
<hr />
<table border="1" width="100%">
	<tr>
	    <th>推薦人</th>
		<th>歌曲</th>
		<th>作曲者</th>
	
		
	</tr>

	<c:forEach items="${result.rows }" var="row">
		<tr>
		<td>${row.id}</td>
			<td>${row.s1}</td>
			<td>${row.c1 }</td>

			
		</tr>
	</c:forEach>
</table>

</body>
</html>