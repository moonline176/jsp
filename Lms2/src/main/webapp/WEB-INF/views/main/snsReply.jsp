<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">커뮤니티</h1>
	<p class="mb-4"></p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">${list[0].sTitle}
				/ ${list[0].sWriter}</h6>
		</div>
		<div class="card-body">${list[0].sContents}</div>
	</div>
	<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
			</div>
			<div class="card-body">
				
		<c:forEach var="sns" items="${list }">
			<div>
				<h6 class="m-0 font-weight-bold ">
					<i class="fas fa-angry"></i>&nbsp;&nbsp;&nbsp;${sns.cName } ${sns.cDate }</h6><br/>
				<p>${sns.cSubject }</p>
			</div>
		</c:forEach>
	</div>
</div>
<div>
	<form id="frm" name="frm" action="searchSns.do" method="post">
		<input type="hidden" id="sNo" name="sNo">
	</form>
</div>
<!-- /.container-fluid -->

