<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div align="center">
		<div><h1>회원 가입</h1></div>
		<div>
			<form id="frm" name="frm" action="memberInsert.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">ID</th>
							<td width="400"><input type="text" id="id" name="id" placeholder="아이디 입력" required="required"></td>
						</tr>
						<tr>
							<th>Password</th>
							<td><input type="password" id="password" name="password" placeholder="패스워드 입력" required="required"></td>
						</tr>
						<tr>
							<th>Password 확인</th>
							<td><input type="password" id="passcheck" name="passcheck" placeholder="패스워드 입력" required="required"></td>
						</tr>
						<tr>
							<th>이	름</th>
							<td><input type="text" id="name" name="name" placeholder="이름 입력" required="required"></td>
						</tr>
						<tr>
							<th>나	이</th>
							<td><input type="text" id="age" name="age" placeholder="나이 입력" required="required"></td>
						</tr>
						<tr>
							<th>취	미</th>
							<td>
								<input type="checkbox" id="hobbys" name="hobbys" value="등산">등산
								<input type="checkbox" id="hobbys" name="hobbys" value="낚시">낚시								
								<input type="checkbox" id="hobbys" name="hobbys" value="운동">운동							
								<input type="checkbox" id="hobbys" name="hobbys" value="독서">독서						
								<input type="checkbox" id="hobbys" name="hobbys" value="영화감상">영화감상								
							</td>
						</tr>
					</table>
				</div><br />
				<div>
					<input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="가입취소">
				</div>
			</form>
		</div>
	</div>
</body>
</html>