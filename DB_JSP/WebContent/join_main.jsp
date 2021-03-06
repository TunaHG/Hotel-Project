<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding" rel="stylesheet">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <title>CSS</title>
    
    
    
    <style>
    
    	body{background:url(travel-3135436_640.jpg) repeat-x center top;}
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
		0 0 0 100px rgba(0,0,0,0.1) inset;}
	  
	  
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
      #jb-sidebar {
        width: 260px;
        height: 706px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
      }
      .jb-sidebar{}
      .jb-sidebar li{position:relative;}
      .jb-sidebar li a{font-size:16px; text-transform:uppercase; color:#878787; border-bottom:1px solid #dbdbdb; padding: 10px; display:block; transition:all .3s ease;}
      .jb-sidebar li a:hover {color: #333;}
      .jb-sidebar li a i{position:absolute; right:10px; top:15px;}
      
      .desc{border-bottom: 1px dashed #dbdbdb; padding-bottom:10px; margin-bottom:10px; color:#878787;}
      
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
				<a href="hotelinfo.jsp">호텔소개</a>
				<a href="#">예약<i class="far fa-calendar-alt"></i></a>
				<a href="login_main.jsp">로그인</a>
				<a href="join_main.jsp">회원가입</a>
			</div>
			<div class="title">
				<p>The Uijo Hotel</p>
				<h1><a href="main.jsp">theuijo.co.kr</a>
				</h1>
			</div>
		</div>
      </div>
      
      <style rel="stylesheet">
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
* {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Lato', sans-serif;
  background-color: #f8f8f8;
}
body .container {
  position: relative;
  overflow: hidden;
  width: 700px;
  height: 500px;
  margin: 80px auto 0;
  background-color: #ffffff;
  -moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
  -webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
  box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}
body .container .half {
  float: left;
  width: 50%;
  height: 100%;
  padding: 10px 40px 0;
}
body .container .half.bg {
  background-image: url(sign2.jpg);
  background-size: 400px;
  background-repeat: no-repeat;
}
body .container h1 {
  font-size: 18px;
  font-weight: 700;
  margin-bottom: 3px;
  text-align: center;
  text-indent: 6px;
  letter-spacing: 7px;
  text-transform: uppercase;
  color: #263238;
}
body .container .tabs {
  width: 100%;
  margin-bottom: 29px;
  border-bottom: 1px solid #d9d9d9;
}
body .container .tabs .tab {
  display: inline-block;
  margin-bottom: -1px;
  padding: 20px 15px 10px;
  cursor: pointer;
  letter-spacing: 0;
  border-bottom: 1px solid #d9d9d9;
  -moz-user-select: -moz-none;
  -ms-user-select: none;
  -webkit-user-select: none;
  user-select: none;
  transition: all 0.1s ease-in-out;
}
body .container .tabs .tab a {
  font-size: 11px;
  text-decoration: none;
  text-transform: uppercase;
  color: #d9d9d9;
  transition: all 0.1s ease-in-out;
}
body .container .tabs .tab.active a, body .container .tabs .tab:hover a {
  color: #263238;
}
body .container .tabs .tab.active {
  border-bottom: 1px solid #263238;
}
body .container .content form {
  position: relative;
  height: 350px;
}
body .container .content label:first-of-type, body .container .content input:first-of-type, body .container .content .more:first-of-type {
  -moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label:nth-of-type(2), body .container .content input:nth-of-type(2), body .container .content .more:nth-of-type(2) {
  -moz-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label:nth-of-type(3), body .container .content input:nth-of-type(3), body .container .content .more:nth-of-type(3) {
  -moz-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label {
  font-size: 12px;
  color: #263238;
  -moz-user-select: -moz-none;
  -ms-user-select: none;
  -webkit-user-select: none;
  user-select: none;
}
body .container .content label:not([for='remember']) {
  display: none;
}
body .container .content input.inpt {
  font-size: 14px;
  display: block;
  width: 100%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
}
body .container .content input.inpt::-webkit-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt::-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:-ms-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:focus {
  border-color: #999999;
}
body .container .content input.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 100%;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #263238;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
}
body .container .content input.submit:hover {
  background-color: #263238;
  color: #ffffff;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}
body .container .content input:focus {
  outline: none;
}
body .container .content .checkbox {
  margin-top: 4px;
  overflow: hidden;
  clip: rect(0 0 0 0);
  width: 0;
  height: 0;
  margin: 17px -1px;
  padding: 0;
  border: 0;
}
body .container .content .checkbox + label {
  vertical-align: middle;
  display: inline-block;
  width: 50%;
}
body .container .content .checkbox + label:before {
  content: "\A";
  color: #999999;
  font-family: Verdana;
  font-weight: bold;
  font-size: 8px;
  line-height: 10px;
  text-align: center;
  display: inline-block;
  vertical-align: middle;
  position: relative;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  background: transparent;
  border: 1px solid #d9d9d9;
  width: 11px;
  height: 11px;
  margin: -2px 8px 0 0;
}
body .container .content .checkbox:checked + label:before {
  content: "✓";
}
body .container .content .submit-wrap {
  position: absolute;
  bottom: 0;
  width: 100%;
}
body .container .content .submit-wrap a {
  font-size: 12px;
  display: block;
  margin-top: 20px;
  text-align: center;
  text-decoration: none;
  color: #999999;
}
body .container .content .submit-wrap a:hover {
  text-decoration: underline;
}

@keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}
@-webkit-keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}
.credits {
  display: block;
  position: absolute;
  right: 0;
  bottom: 0;
  color: #999999;
  font-size: 14px;
  margin: 0 10px 10px 0;
}
.credits a {
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=80);
  opacity: 0.8;
  color: inherit;
  font-weight: 700;
  text-decoration: none;
}

</style>

<section class="container">
		    <article class="half">
			        <h1>UIJO</h1>
			        <div class="tabs">
				            <span class="tab signup active"><a href="#signup">Sign up</a></span>
				    </div>
			        <div class="content">
				            <div class="signup-cont cont">
					                <form action="ClientJoin.jsp" method="post">
						                    <input type="text" name="name" id="name" class="inpt" required="required" placeholder="Your name">
						                    <label for="name">Your name</label>
						                    <input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your email">
						                    <label for="email">Your email</label>
						                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
                						    <label for="password">Your password</label>
                						    <input type="tel" name="phone" id="phone" class="inpt" required="required" placeholder="Your phone">
                						    <label for="phone">Your phone</label>
                						    <input type="number" name="age" id="age" class="inpt" required="required" placeholder="Your age">
                						    <label for="age">Your age</label>
                						    <input type="radio" name="sex" value="m"  checked>m
                						    <input type="radio" name="sex" value="f">f
						                    <div class="submit-wrap">
							                        <input type="submit" value="Sign up" class="submit">
							                </div>
        					        </form>
    				        </div>
			        </div>
		    </article>
		    <div class="half bg"></div>
	</section>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
$('.tabs .tab').click(function(){
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});
$('.container .bg').mousemove(function(e){
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
			<em>Copyright $copy;
			<a href="#"><strong>TheUijoHotel</strong></a>
			All Rights Reserved.</em>
		</address>
      </div>
     
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
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