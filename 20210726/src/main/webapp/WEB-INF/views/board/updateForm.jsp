<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지글상세보기</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<!-- <form id="frm" name="frm" action="updateBoard.do" method="post"> form 안에 전부 담도록 할 것 -->
		<div>
			<form action="updateBoard.do" id="frm" name="frm">
				<table border="1">
					<tr>
						<th width="100">글번호</th>
						<td width="70" align="center">${bId }</td>
						<!--<input type="text" id="" name="" value=${~~}>-->
						<th width="100">작성자</th>
						<td width="150" align="center">${bWriter }</td>
						<th width="100">작성일자</th>
						<td width="150" align="center">${bDate }</td>
						<th width="100">조회수</th>
						<td width="70" align="center">${bHit }</td>
					</tr>
					<tr>
						<th width="100">글제목</th>
						<td colspan="7"><textarea id="bTitle" name="bTitle"
								cols="110">${bTitle }</textarea></td>
					</tr>
					<tr>
						<th width="100">내용</th>
						<td colspan="7"><textarea id="bContent" name="bContent"
								rows="7" cols="110">${bContent }</textarea></td>
					</tr>
				</table>
				<br /> <input type="hidden" id="bId" name="bId"
					value="${bId }">
				<div>
					<button type="submit">수정</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="location.href='boardList.do'">취소</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>