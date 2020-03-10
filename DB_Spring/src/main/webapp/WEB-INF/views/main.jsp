<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="erica.db.mvc.MemberVO" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
    	<meta charset="utf-8">
    	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.css">
    	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding" rel="stylesheet">
    	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/owl.transitions.css">
    	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/owl.theme.css">
    	<title>The Uijo Hotel</title>
    	<style>
    
			body{background:url(resources/images/travel-3135436_640.jpg) repeat-x center top;}
    		.rsvBar {position:absolute; top:260px; left:10px; right:10px; margin:auto;}
	    	.rsvBar .rsvBarContent {background:#e2e2e2;}
		    .date_select {width:600px; height:40px;}
		    .selectBox {width:120px; height:40px; margin: 10px;}
	  
	    	.quick{text-align:right;}
	    	.quick a{display: inline-block; color: #fff; padding: 5px 0 0 10px; transition: all 0.5s ease; font-family: 'Nanum Gothic Coding', monospace;}
	    	.quick a:hover {color:#ccc;}  
	  
	    	.title{text-align:center; text-transform: uppercase; padding-top: 70px;}
	    	.title p{display: inline; font-size:24px; font-family: 'Nanum Gothic Coding', monospace;  color:#fff; padding: 10px 20px;}
	    	.title h1 a{display:inline-block; color:#fff;  font-family: 'Nanum Gothic Coding', monospace; padding: 10px 20px; font-size:14px; transition:all .3s ease-in-out; margin-top:-4px;}
	    	.title h1 a:hover{
	  			box-shadow:
				0 0 0 3px rgba(75,154,191,0,9) inset,
				0 0 0 100px rgba(0,0,0,0.1) inset;
			}
	  
  	    	#jb-container {
  	    		width: 1280px;
 		       	margin: 0px auto;
 		       	padding: 20px;
 		    }
 		    #jb-header {
 		    	padding: 30px;
        		margin-bottom: 50px;
			}
      		#jb-content {
        		width: 1239px;
        		padding: 20px;
        		margin-bottom: 20px;
        		float: center;
        		font-family: 'Nanum Gothic Coding', monospace;
        		font-size:18px;
      		}
			.desc { border-bottom: 1px dashed #dbdbdb; padding-bottom:10px; margin-bottom:10px; color:#878787;}
      		.jb-footer {
        		clear: both;
        		text-align:center; padding:30px 50px;
      		}
      		.jb-footer li {list-style:none; position:relative; display:inline; padding:0 7px; font-size:11px;}
      
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
						<h1><a href="<%=request.getContextPath()%>/">theuijo.co.kr</a></h1>
					</div>
				</div>
      		</div>
      		<div id="jb-content">
        		<h2>Urban Lifestyle Hotel</h2>
        		<p class="desc"></p>
        		<p>현대적 감각을 겸비하고 있는 세계속의 명문 호텔 의조호텔은 세계 최고의 어번 라이프스타일 호텔로 고객들에게 최고급 Hospitality 서비스를 제공합니다.</p>
        		<p>한국을 대표하는 럭셔리 호텔로써 '일상이 최고의 순간이 되는 곳' 이라는 컨셉을 새롭게 선보이며 휴식은 물론 고객의 고품격 라이프스타일을 제안하는 공간으로 거듭나고 있습니다.</p>
      			<div class="gallery">
					<div id="owl-demo" class="owl-carousel owl-theme">
						<div class="item">
							<img src="<%=request.getContextPath()%>/resources/images/sign2.jpg" alt="sign2" width="960" height="450">
						</div>
						<div class="item"><img src="<%=request.getContextPath()%>/resources/images/room2.jpg" alt="room2" width="960" height="450"></div>
  						<div class="item"><img src="<%=request.getContextPath()%>/resources/images/sign1.jpg" alt="Sign" width="960" height="450"></div>
					</div>
				</div>      
      		</div>
      		<div class="jb-footer">
      			<ul>
					<li>경기도 안산시 상록구 Hanyang University Erica Campus
					<li>사업자등록번호 123-45-12345
				</ul>
				<address>
					<em>Copyright $copy;
					<a href="#"><strong>TheUijoHotel</strong></a>
					All Rights Reserved.</em>
				</address>
      		</div>
    	</div>
    	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
		<script>
			$(document).ready(function() {
		 
				var time = 3; // time in seconds
		 
				var $progressBar,
					$bar, 
					$elem, 
					isPause, 
					tick,
					percentTime;
		 
		    	//Init the carousel
		    	$("#owl-demo").owlCarousel({
		      		slideSpeed : 500,
		      		paginationSpeed : 500,
		      		singleItem : true,
		      		afterInit : progressBar,
		      		afterMove : moved,
		      		startDragging : pauseOnDragging,
		      		transitionStyle:"fadeUp"
		    	});
		 
		    	//Init progressBar where elem is $("#owl-demo")
		    	function progressBar(elem){
		      		$elem = elem;
		      		//build progress bar elements
		      		buildProgressBar();
		      		//start counting
		      		start();
		    	}
		 
		    	//create div#progressBar and div#bar then prepend to $("#owl-demo")
		    	function buildProgressBar(){
		      		$progressBar = $("<div>",{
		        		id:"progressBar"
		      		});
		      		$bar = $("<div>",{
		        		id:"bar"
		      		});
		      		$progressBar.append($bar).prependTo($elem);
		    	}
		 
		    	function start() {
		      		//reset timer
		      		percentTime = 0;
		      		isPause = false;
		      		//run interval every 0.01 second
		      		tick = setInterval(interval, 10);
		    	};
		 
		    	function interval() {
		      		if(isPause === false){
		        		percentTime += 1 / time;
		        		$bar.css({
		           			width: percentTime+"%"
		         		});
		        		//if percentTime is equal or greater than 100
		        		if(percentTime >= 100){
		          			//slide to next item 
		          			$elem.trigger('owl.next')
		        		}
		      		}
		    	}
		 
		    	//pause while dragging 
		    	function pauseOnDragging(){
		      		isPause = true;
		    	}
		 
		    	//moved callback
		    	function moved(){
		      		//clear interval
		      		clearTimeout(tick);
		      		//start again
		      		start();
		    	}
			});
		</script>
  	</body>
</html>