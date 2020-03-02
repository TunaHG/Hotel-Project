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
<link rel="stylesheet" href="resources/css/uijo.hotel.css">
<title>Update Client</title>
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
					<a href="<%=request.getContextPath()%>/logout">로그아웃</a>
					<%} %>
					<a href="<%=request.getContextPath()%>/join">회원가입</a>
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
				<span class="tab signin active"><a href="#signin">Update</a></span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<form action="<%=request.getContextPath()%>/updatemember" method="post">
             				<input type="hidden" name="memberid" value="${vo.memberid}">
             				<input type="hidden" name="staff" value="${vo.staff}">
	                    <label for="name">Your name</label>
			   				<input type="text" name="name" id="name" class="inpt" required="required" value="${vo.name}">
    				    <label for="password">Your password</label>
	                    	<input type="password" name="password" id="password" class="inpt" required="required" value="${vo.password}">
        			    <label for="phone">Your phone</label>
        			    	<input type="tel" name="phone" id="phone" class="inpt" required="required" value="${vo.phone}">
					    <label for="age">Your age</label>
        			    	<input type="number" name="age" id="age" class="inpt" required="required" value="${vo.age}">
					    <label for="sex">Your Sex</label>
					    	<% if(((MemberVO)request.getAttribute("vo")).getSex().equals("male")){ %>
					    	<input type="radio" name="sex" value="male"  checked>남성
					    	<input type="radio" name="sex" value="female">여성
					    	<%} else { %>
					    	<input type="radio" name="sex" value="male">남성
					    	<input type="radio" name="sex" value="female" checked>여성
					    	<%} %>
	                    <div class="submit-wrap">
	                        <input type="submit" value="Update" class="submit">
		                </div>
			        </form>
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