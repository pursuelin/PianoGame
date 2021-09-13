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
	
<c:if test="${!empty param.mu }">
	<sql:update>
		UPDATE mu SET f1 = ? WHERE s1 = ?
		<sql:param>${param.id }</sql:param>
		<sql:param>${param.s1 }</sql:param>
		<sql:param>${param.c1 }</sql:param>
	</sql:update>
	<c:redirect url="MusicHome.jsp"></c:redirect>
</c:if>	
	
<sql:query var="result">
	SELECT * FROM mu WHERE id = ?
	<sql:param>${param.editid }</sql:param>
</sql:query>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Edit</title>
</head>
<body>
Edit
<form action="MusicEd.jsp" >
	<input type="hidden" name="c1" value="${param.editid }" />
	推薦人ID: <input type="text" name="id" value="${result.rows[0].id }" ></input><br>
	歌曲: <input type="text" name="s1" value="${result.rows[0].s1 }" disabled></input><br>
	歌手: <input type="text" name="c1" value="${result.rows[0].s1 }" disabled></input><br>
	檔案:<input type="file" name="f1" value=" ${result.rows[0].f1}" accept="image/png, image/jpeg" size="1024"/><br>
	<input type="submit" value="Update" />
</form>

</body>
</html>