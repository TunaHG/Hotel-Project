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
<link rel="stylesheet" href="/resources/css/owl.transitions.css">
<link rel="stylesheet" href="/resources/css/owl.theme.css">
<link rel="stylesheet" href="/resources/css/uijo.hotel.css">
<title>Login</title>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<div class="row">
				<div class="quick">
					<a href="hotelinfo.jsp">호텔소개</a> <a href="#">예약<i
						class="far fa-calendar-alt"></i></a> <a href="login_main.jsp">로그인</a>
					<a href="join_main.jsp">회원가입</a>
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
					<form action="loginAction.jsp" method="post">
						<input type="radio" name="div" value="count1" checked>고객 <input
							type="radio" name="div" value="count2">직원 <input
							type="tel" name="phone" id="phone" class="inpt"
							required="required" placeholder="Your phone"> <label
							for="phone">Your phone</label> <input type="password"
							name="password" id="password" class="inpt" required="required"
							placeholder="Your password"> <label for="password">Your
							password</label>
						<div class="submit-wrap">
							<input type="submit" value="Sign in" class="submit"> <a
								href="#" class="more">Forgot your password?</a>
						</div>
					</form>
				</div>
				<div class="signup-cont cont">
					<form action="ClientJoin.jsp" method="post">
						<input type="text" name="name" id="name" class="inpt"
							required="required" placeholder="Your name"> <label
							for="name">Your name</label> <input type="email" name="email"
							id="email" class="inpt" required="required"
							placeholder="Your email"> <label for="email">Your
							email</label> <input type="password" name="password" id="password"
							class="inpt" required="required" placeholder="Your password">
						<label for="password">Your password</label> <input type="tel"
							name="phone" id="phone" class="inpt" required="required"
							placeholder="Your phone"> <label for="phone">Your
							phone</label> <input type="number" name="age" id="age" class="inpt"
							required="required" placeholder="Your age"> <label
							for="age">Your age</label> <input type="radio" name="sex"
							value="m" checked>m <input type="radio" name="sex"
							value="f">f
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
					$(this).css('background-position',
							amountMovedX + 'px ' + amountMovedY + 'px');
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

		<script type="text/javascript"
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script>
			$(document).ready(function() {

				var time = 3; // time in seconds

				var $progressBar, $bar, $elem, isPause, tick, percentTime;

				//Init the carousel
				$("#owl-demo").owlCarousel({
					slideSpeed : 500,
					paginationSpeed : 500,
					singleItem : true,
					afterInit : progressBar,
					afterMove : moved,
					startDragging : pauseOnDragging,
					transitionStyle : "fadeUp"
				});

				//Init progressBar where elem is $("#owl-demo")
				function progressBar(elem) {
					$elem = elem;
					//build progress bar elements
					buildProgressBar();
					//start counting
					start();
				}

				//create div#progressBar and div#bar then prepend to $("#owl-demo")
				function buildProgressBar() {
					$progressBar = $("<div>", {
						id : "progressBar"
					});
					$bar = $("<div>", {
						id : "bar"
					});
					$progressBar.append($bar).prependTo($elem);
				}

				function start() {
					//reset timer
					percentTime = 0;
					isPause = false;
					//run interval every 0.01 second
					tick = setInterval(interval, 10);
				}
				;

				function interval() {
					if (isPause === false) {
						percentTime += 1 / time;
						$bar.css({
							width : percentTime + "%"
						});
						//if percentTime is equal or greater than 100
						if (percentTime >= 100) {
							//slide to next item 
							$elem.trigger('owl.next')
						}
					}
				}

				//pause while dragging 
				function pauseOnDragging() {
					isPause = true;
				}

				//moved callback
				function moved() {
					//clear interval
					clearTimeout(tick);
					//start again
					start();
				}

				//uncomment this to make pause on mouseover 
				// $elem.on('mouseover',function(){
				//   isPause = true;
				// })
				// $elem.on('mouseout',function(){
				//   isPause = false;
				// })

			});
		</script>
</body>
</html>