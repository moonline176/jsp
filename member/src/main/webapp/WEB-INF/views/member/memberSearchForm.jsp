<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원조회</title>
</head>
<body>
<div align="center">
	<div><h1>회원조회</h1></div>
	<div>
		<form id="frm" name="frm" action="memberSearch.do" method="post"> <!-- 보다 안전하게 전달하기 위해 post이용 -->
			<table border="1">
				<tr>
					<th width="250">조회할 회원 아이디</th>
					<td width="150">
						<input type="text" id="id" name="id">
					</td>
					<td width="100">
						<input type="submit" value="검 색">
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
</body>
</html>