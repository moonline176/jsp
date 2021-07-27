<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지글상세보기</title>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="100">글번호</th>
					<td width="70" align="center">${board.bId }</td>
					<th width="100">작성자</th>
					<td width="150" align="center">${board.bWriter }</td>
					<th width="100">작성일자</th>
					<td width="150" align="center">${board.bDate }</td>
					<th width="100">조회수</th>
					<td width="70" align="center">${board.bHit }</td>
				</tr>
				<tr>
					<th width="100">글제목</th>
					<td colspan="7">${board.bTitle }</td>
				</tr>
				<tr>
					<th width="100">내용</th>
					<td colspan="7"><textarea rows="7" cols="110">${board.bContent }</textarea>
					</td>
				</tr>
			</table>
		</div>
		<br />
		<div>
			<button type="button" onclick="location.href='boardList.do'">목록</button>
			<form id="frm" name="frm" action="updateForm.do"
				style="display: inline-block;" method="post">
				<input type="hidden" id="bId" name="bId" value="${board.bId }">
				<input type="hidden" id="bTitle" name="bTitle" value="${board.bTitle }"> 
				<input type="hidden" id="bContent" name="bContent" value="${board.bContent }">
				<input type="hidden" id="bDate" name="bDate" value="${board.bDate }">
				<input type="hidden" id="bWriter" name="bWriter" value="${board.bWriter }">
				<input type="hidden" id="bHit" name="bHit" value="${board.bHit }">
				<!-- form에 id를 담아서 넘기면 나머지를 입력하지 않아도 값이 넘어간다. -->
				<button type="submit">수정</button>
			</form>
			<form id="frm" name="frm" action="deleteContent.do"
				style="display: inline-block;" method="post">
				<input type="hidden" id="bId" name="bId" value="${board.bId }">
				<button type="submit">삭제</button>
			</form>
		</div>
	</div>
</body>
</html>