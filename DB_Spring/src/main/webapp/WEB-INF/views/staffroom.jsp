<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding"
	rel="stylesheet">
<title>Manage Client</title>
<style>
.page-header {
	padding: 8px;
	font-family: sans-serif;
	color: white;
	background: #7B7979;
}

.menu {
	padding: 20px, 20px;
	font-family: 'Nanum Gothic Coding', monospace;
	font-size: 12px;
	background: #CFCBCB;
}
</style>
</head>
<body>
	<div class="page-header">
		<h4>호텔 관리 시스템</h4>
	</div>
	<div class="menu">
		<ul class="nav nav-tabs">
			<li role="presentation"><a href="<%=request.getContextPath()%>/staffmain">메인</a></li>
			<li role="presentation"><a href="<%=request.getContextPath()%>/staffclient">고객관리</a></li>
			<li role="presentation"><a href="<%=request.getContextPath()%>/staff">직원관리</a></li>
			<li role="presentation" class="active"><a href="<%=request.getContextPath()%>/staffroom">객실관리</a></li>
			<li role="presentation"><a href="<%=request.getContextPath()%>/staffrequest">요청관리</a></li>
			<li role="presentation"><a href="<%=request.getContextPath()%>/staffpay">결제관리</a></li>
			<li role="presentation"><a href="<%=request.getContextPath()%>/staffhotel">호텔관리</a></li>
			<li role="presentation"><a href="<%=request.getContextPath()%>/logout">로그아웃</a></li>
		</ul>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th>방 번호</th>
				<th>타입</th>
				<th>수용인원</th>
				<th>타월 수</th>
				<th>침대 수</th>
				<th>편의 물품</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="room">
				<tr>
					<td>${room.roomno}</td>
					<td>${room.type}</td>
					<td>${room.person}</td>
					<td>${room.tow}</td>
					<td>${room.bed}</td>
					<td>${room.amenity}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<th>방 번호</th>
				<th>타입</th>
				<th>수용인원</th>
				<th>타월 수</th>
				<th>침대 수</th>
				<th>편의 물품</th>
			</tr>
		</tfoot>
	</table>
	<nav>
		<ul class="pager">
			<li><a href="#">Previous</a></li>
			<li><a href="#">Next</a></li>
		</ul>
	</nav>
</body>
</html>