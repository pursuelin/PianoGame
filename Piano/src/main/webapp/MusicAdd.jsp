<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<c:if test="${! empty param.s1 }">
	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/piano"
		user="root"
		password="root"
		/>
	<sql:update>
		INSERT INTO mu (id,s1,c1,f1) VALUES (?,?,?,?)
		<sql:param>${param.id }</sql:param>
		<sql:param>${param.s1 }</sql:param>
		<sql:param>${param.c1}</sql:param>
		<sql:param>${param.f1 }</sql:param>
		
	</sql:update>
	<c:redirect url="MusicHome.jsp"></c:redirect>	
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicAdd</title>
</head>
<body style="background-image: url(MB.jpeg)">
<button id="back" onclick="location.href='MusicHome.jsp'" >回到首頁</button>
<form action="MusicAdd.jsp" >
  <div style="transform: translate(200%, 100%);border: 2px solid; width: 300px;height:160px;font-size:18px;">
  <a style="text-solid:10px">新增推薦曲目</a><br>
推薦人:<input type="text" name="id" /><br>
	推薦曲目:<input type="text" name="s1" /><br>
	作者:<input type="text" name="c1" /><br>
	樂譜:<input type="file" name="f1" size="2048" /><br>
	<input type="submit" value="新增" >
	
	</div>
	
</form>

</body>
</html>