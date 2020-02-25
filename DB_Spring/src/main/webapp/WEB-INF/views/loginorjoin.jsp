<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/owl.carousel.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding"
	rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.transitions.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.theme.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/uijo.hotel.css">
<title>Login Or Join</title>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<div class="row">
				<div class="quick">
					<a href="<%=request.getContextPath()%>/hotelinfo">호텔소개</a> 
					<a href="#">예약<i class="far fa-calendar-alt"></i></a> 
					<a href="<%=request.getContextPath()%>/login">로그인</a> 
					<a href="<%=request.getContextPath()%>/join">회원가입</a>
				</div>
				<div class="title">
					<p>The Uijo Hotel</p>
					<h1>
						<a href="main.jsp">theuijo.co.kr</a>
					</h1>
				</div>
			</div>
		</div>
	</div>
	<section class="container">
		<article class="half">
			<h1>UIJO</h1>
			<div class="tabs">
				<span class="tab signin active"><a href="#signin">Sign in</a></span>
				<span class="tab signup"><a href="#signup">Sign up</a></span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<form action="<%=request.getContextPath()%>/login" method="post">
						<label for="email">Your email</label>
							<input type="text" name="email" id="email" class="inpt" required="required" placeholder="Your email"> 
						<label for="password">Your password</label>
							<input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password"> 
						<div class="submit-wrap">
							<input type="submit" value="Sign in" class="submit"> 
							<span class="tab signup"><a href="#signup" class="more">Don't have Account?</a></span>
						</div>
					</form>
				</div>
				<div class="signup-cont cont">
					<form action="<%=request.getContextPath()%>/join" method="post">
						<label for="name">Your name</label> 
							<input type="text" name="name" id="name" class="inpt" required="required" placeholder="Your name"> 
						<label for="email">Your email</label> 
							<input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your email"> 
						<label for="password">Your password</label> 
							<input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
						<label for="phone">Your phone</label> 
							<input type="tel" name="phone" id="phone" class="inpt" required="required" placeholder="Your phone"> 
						<label for="age">Your age</label> 
							<input type="number" name="age" id="age" class="inpt" required="required" placeholder="Your age">
						<label for="sex">Your Sex</label> 
							<input type="radio" name="sex" value="male" checked>남성 
							<input type="radio" name="sex" value="female">여성
						<div class="submit-wrap">
							<input type="submit" value="Sign up" class="submit">
						</div>
					</form>
				</div>
			</div>
		</article>
		<div class="half bg"></div>
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$('.tabs .tab').click(function() {
			if ($(this).hasClass('signin')) {
				$('.tabs .tab').removeClass('active');
				$(this).addClass('active');
				$('.cont').hide();
				$('.signin-cont').show();
			}
			if ($(this).hasClass('signup')) {
				$('.tabs .tab').removeClass('active');
				$(this).addClass('active');
				$('.cont').hide();
				$('.signup-cont').show();
			}
		});
		$('.container .bg').mousemove(
				function(e) {
					var amountMovedX = (e.pageX * -1 / 30000);
					var amountMovedY = (e.pageY * -1 / 10000);
					$(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
				});
	</script>
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