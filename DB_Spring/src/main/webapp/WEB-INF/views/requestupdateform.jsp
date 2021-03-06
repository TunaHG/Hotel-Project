<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="erica.db.mvc.RequestVO" %>
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
					<a href="<%=request.getContextPath()%>/mypage">마이페이지</a>
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
				<span class="tab signin active">Insert Request</span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<form action="<%=request.getContextPath()%>/updaterequest" method="post">
	                    <label for="roomno">Your Room Number</label><br>
	                    	${request.roomno}<br>
    				    <label for="content">Request Content</label><br>
    				    	<textarea rows="10" cols="40" name="content" id="content" class="inpt" required>${request.content}</textarea><br>
        			    <label for="memberid">Response Staff ID</label><br>
        			    	<input type="text" id="memberid" name="memberid" class="inpt" value="${request.memberid}"><br>
        			    <label for="ing">Now Ing</label><br>
        			    	<% String ing = ((RequestVO)request.getAttribute("request")).getIng(); %>
        			    	<select id="ing" name="ing">
       			    			<option value="접수" <c:if test="${ing eq '접수'}">selected</c:if>>접수</option>
       			    			<option value="진행중" <c:if test="${ing eq '진행중'}">selected</c:if>>진행중</option>
       			    			<option value="완료" <c:if test="${ing eq '완료'}">selected</c:if>>완료</option>
        			    	</select><br>
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