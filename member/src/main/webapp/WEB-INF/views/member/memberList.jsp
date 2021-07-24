<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>MemberList</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="100">아이디</th>
					<th width="150">패스워드</th>
					<th width="150">이 름</th>
					<th width="100">나 이</th>
					<th width="200">취 미</th>
				</tr>

				<c:forEach var="member" items="${list}">
					<tr>
						<td align="center">${member.id }</td>
						<td align="center">${member.password }</td>
						<td align="center">${member.name }</td>
						<td align="center">${member.age }</td>
						<td align="center">${member.hobby }</td>
					</tr>
				</c:forEach>
			</table>
		</div><br/>
		<div>
			<button type="button" onclick="location.href='main.do'">홈	가기</button>
		</div>
	</div>
</body>
</html>