<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="erica.db.mvc.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding"
	rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/uijo.hotel.css">
<title>My Page</title>
<style>
	body{background:url(resources/images/travel-3135436_640.jpg) repeat-x center top;}
	body .container .half.bg {
		background-image: url(resources/images/pbl2.jpg);
		background-size: 400px;
		background-repeat: no-repeat;
	}
</style>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<div class="row">
				<div class="quick">
					<a href="<%=request.getContextPath()%>/hotelinfo">호텔소개</a>
					<%if(session.getAttribute("member") == null){ %>
					<a href="<%=request.getContextPath()%>/login">로그인</a>
					<%} else { %>
					<a href="<%=request.getContextPath()%>/mypage?memberid=${member.memberid}">마이페이지</a>
					<a href="<%=request.getContextPath()%>/logout">로그아웃</a>
					<%} %>
				</div>
				<div class="title">
					<p>The Uijo Hotel</p>
					<h1>
						<a href="<%=request.getContextPath()%>/">theuijo.co.kr</a>
					</h1>
				</div>
			</div>
		</div>
	</div>
	<section class="container">
		<article class="half">
			<h1>UIJO</h1>
			<div class="tabs">
				<span class="tab signin active">Info</span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<label for="memberid">Your MemberID</label><br>
			   			${vo.memberid}<br>
	                <label for="name">Your name</label><br>
			   			${vo.name}<br>
        			<label for="phone">Your phone</label><br>
        			    ${vo.phone}<br>
					<label for="age">Your age</label><br>
        			    ${vo.age}<br>
					<label for="sex">Your Sex</label><br>
					    ${vo.sex}<br>
					<label for="reg_date">Your Register Date</label><br>
					    ${vo.reg_date}<br>
					<br><br><br>
					<a href="<%=request.getContextPath()%>/updatemember?memberid=${vo.memberid}" class="submit">수정</a>
				</div>
			</div>
		</article>
		<div class="half bg"></div>
	</section>
	<div class="jb-footer">
		<ul>
			<li>경기도 안산시 상록구 Hanyang University Erica Campus
			<li>사업자등록번호 123-45-12345
		</ul>
		<address>
			<em>Copyright $copy; <a href="#"><strong>TheUijoHotel</strong></a>
				All Rights Reserved.
			</em>
		</address>
	</div>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>