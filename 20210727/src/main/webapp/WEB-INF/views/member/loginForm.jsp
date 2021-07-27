<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../home/header.jsp"/>
<body>
	<div align="center">
		<div><h1>로 그 인</h1></div>
	</div>
	<div >
		<form action="login.do" method="post">
			<div align="center">
				<table border="1">
					<tr>
						<th width="150">아 이 디</th>
						<td width="200">
							<input type="text" id="id" name="id" placeholder="아이디 입력" required="required">
						</td>
					</tr>
					<tr>
						<th width="150">패스워드</th>
						<td width="200">
							<input type="password" id="password" name="password" placeholder="패스워드 입력" required="required">
						</td>
					</tr>
				</table>
			</div><br/>
			<div align="center">
				<input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취 소">
			</div>
		</form>
	</div>
</body>
</html>