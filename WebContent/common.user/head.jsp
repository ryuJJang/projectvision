<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>우리함캠핑장</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<head>
<style>
/* header */
@font-face {
    font-family: 'MinSans-Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.notosanskr * { 
 font-family: 'Noto Sans KR', sans-serif;
}
header {
	height:145px;
	border: #253342;
	position: fixed;
	width: 100%;
	z-index:999999;
	top: 0;
	left: 0;
}

img {
	float: left;
}

.menu {
	float: right;
	margin-bottom: 0;
}

.menu li {
	float: left;
}

.menu a {
	line-height: 95px;
	color: #333;
	padding: 0 15px;
	display: block;
	font-size:17px;
	font-family: 'MinSans-Medium';
}
.menu a:hover {
	text-decoration:none;
}
/* common */
.wrapper {
	width: 1800px;
	margin: 0 auto;
}

.clearfix {
	content: '';
	display: block;
	clear: both;
}
/* reset */
* {
	margin: 0;
	padding: 0;
	margin-bottom: 0px;
}

li {
	list-style: none;
	font-size: 30px;
	font-family: hs
}

a {
	text-decoration: none;
}

body {
	min-height: 100%;
}

@font-face {
	font-family: '눈';
	src: url(../font/hs.ttf);
}

li {
	font-family: '눈';
}
.dropdown-item{
font-size: 20px;
text-align: center;
margin: 0px;
height: -50px;
}

.wrapper_login {
	width:100%;
	height:50px;
	margin-top: -16px;
	border-bottom: 1px solid #fff;
}
ul.menu_login {
	width:1903px;
	padding-right:30px;
	overflow:hidden;
}
ul.menu_login li {
	width:74px;
	padding-top: 4px;
}
ul.menu_login li a {
	color:#fff;
	font-size:14px;
	text-decoration:none;
	
}

/*네비*/
#wrapper {
		width:100%;
		position:relative;
		height: 88px;
    	opacity: 0.9;
    	position: relative;
    	border-bottom: 1px solid #fff;
    	}
.search{float:right;padding:22px}
input{border:none;padding:10px;border-radius:20px;border: 1px solid #ddd;}
.logo{float:left;padding:8px;}
.logo a{font-size:28px;display:block;padding:0 0 0 20px}
/*nav{float:right;}*/
nav>ul{float:left;position:relative}
nav li{list-style:none;float:left}
nav .dropdown{position:relative}
nav li a{
    float: left;
    padding: 31px;
    font-size: 17px;
    color: #fff;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    text-shadow: 1px 3px 3px #464646;
}
nav li a:hover{border-bottom:2px solid #000;  color:#fff; text-decoration:none;}
nav li ul{display:none}
nav li:hover ul{display:inline}
nav li li{float:none}
nav .dropdown ul{position:absolute;left:0;top:100%;background:#fff;padding:20px 0;border-bottom:3px solid #34495e}
nav .dropdown li{white-space:nowrap}
nav .dropdown li a{padding:10px 35px;font-size:13px;min-width:200px}
nav .mega-dropdown{width:100%;position:absolute;top:100%;left:0;background:#fff;z-index: 9999;overflow:hidden;padding:20px 35px;border-bottom:3px solid #34495e}
nav li li a{float:none;color:#333;display:block;padding:8px 10px;border-radius:3px;font-size:13px;text-shadow: none;}
nav li li a:hover{background:#bdc3c7;background:#FAFBFB; color: #000;}
.mega-col{width:25%;float:left}
#menu-icon{position:absolute;right:0;top:50%;margin-top:-12px;margin-right:30px;display:none}
#menu-icon span{border:2px solid #fff;width:30px;margin-bottom:5px;display:block;-webkit-transition:all .2s;transition:all .1s}
@media only screen and (max-width: 1170px) {
  nav >ul>li >a{padding:35px 15px}
}
@media only screen and (min-width: 960px) {
  nav{display:block!important}
}
@media only screen and (max-width: 959px) {
  nav{display:none;width:100%;clear:both;float:none;max-height:400px;overflow-y:scroll}
  #menu-icon{display:inline;top:45px;cursor:pointer}
  #menu-icon.active .first{transform:rotate(45deg);-webkit-transform:rotate(45deg);margin-top:10px}
  #menu-icon.active .second{transform:rotate(135deg);-webkit-transform:rotate(135deg);position:relative;top:-9px;}
  #menu-icon.active .third{display:none}
  .search{float:none}
  .search input{width:100%}
  nav{padding:10px}
  nav ul{float:none}
  nav li{float:none}
  nav ul li a{float:none;padding:8px;display:block}
  #header nav ul ul{display:block;position:static;background:none;border:none;padding:0}
  #header nav a{color:#fff;padding:8px}
  #header nav a:hover{background:#fff;color:#333;border-radius:3px}
  #header nav ul li li a:before{content:"- "}
  .mega-col{width:100%}
}
</style>
</head>
<body>
	


<header>
	<div class="wrapper_login">
	<ul class="menu_login">
		<%
			String memid = (String) session.getAttribute("memberId");
		if (memid == null) {//로그인 안되어있음
		%>
		<li style="float: right;"><a href="#">흐림 14.1°C</a></li>
		<li style="position: static; float: right;"><a
			href="<%=request.getContextPath()%>/userdata/sendMailForm">JOIN</a></li>
		<li style="float: right;"><a
			href="<%=request.getContextPath()%>/userdata/loginForm">LOGIN</a></li>
		<%
			} else { //로그인 ok
		%>
		<li style="float: right;"><a href="#">흐림 14.1°C</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%=request.getContextPath()%>/member/memberUpdate"><%=memid%>:회원정보수정</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%=request.getContextPath()%>/userdata/logout">LOGOUT</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%=request.getContextPath()%>/member/deleteForm">회원탈퇴</a></li>
		<%
			}
		%>	
		
	</ul>
	
	</div>
		<div id="wrapper">
		  <div class="logo">
		    <a href="<%=request.getContextPath()%>/reserve/main"><img src="<%=request.getContextPath()%>/image/wucam1.png" width="150px"
				></a>
		  </div>  
		  <nav>
		    <form class="search" action="search.php">
		      <input name="q" placeholder="Search..." type="search">
		    </form>
		    <ul>
		      <li class="dropdown">
		        <a href="">회사소개</a>
		          <ul>
		            <li><a href="#">About Version</a></li>
		            <li><a href="#">About Version</a></li>
		            <li><a href="#">Contact Us</a></li>
		            <li><a href="#">Contact Us</a></li>
		          </ul>        
		      </li>
		      <li class="dropdown">
		        <a href="">시설소개</a>
		          <ul>
		            <li><a href="#">About Version</a></li>
		            <li><a href="#">About Version</a></li>
		            <li><a href="#">Contact Us</a></li>
		            <li><a href="#">Contact Us</a></li>
		          </ul>        
		      </li>
		      <li class="dropdown">
		        <a href="">이용안내</a>
		          <ul>
		            <li><a href="#">About Version</a></li>
		            <li><a href="#">About Version</a></li>
		            <li><a href="#">Contact Us</a></li>
		            <li><a href="#">Contact Us</a></li>
		          </ul>        
		      </li>
		      <li class="dropdown">
		        <a href="">예약관리</a>
		          <ul>
		            <li><a href="<%=request.getContextPath()%>/camp/CampList">캠핑장보기</a></li>
		            <li><a href="<%=request.getContextPath()%>/camp/CampInsert">캠핑장등록</a></li>
		            <li><a href="<%=request.getContextPath()%>/reserve/ReserveList">예약조회</a></li>
		          </ul>        
		      </li>
		      <li class="dropdown">
		        <a href="<%=request.getContextPath()%>/board/list">커뮤니티</a>
		        <ul>
		            <li><a href="<%=request.getContextPath()%>/board/list">공지사항</a></li>
		            <li><a href="#">리뷰게시판</a></li>
		            <li><a href="<%=request.getContextPath()%>/board/boardinquiryForm">자주묻는질문</a></li>
		            <li><a href="#">삽니다&팝니다</a></li>
		          </ul> 
		      </li>
		    </ul>
		  </nav>
		</div>
	</header>
</body>
</html>

<script>
$('#header').prepend('<div id="menu-icon"><span class="first"></span><span class="second"></span><span class="third"></span></div>');

$("#menu-icon").on("click", function(){
$("nav").slideToggle();
$(this).toggleClass("active");
});
</script>
<script>
 $(document).ready(function(){
$(window).scroll(function(){
               var scroll = $(window).scrollTop();
               if (scroll > 1) {
                  $("#wrapper").css("display" , "none"); 
                  $("ul.menu_login").css("display" , "none"); 
                  $(".wrapper_login").css("display" , "none"); 
                           
               }
               else{
            	   $("#wrapper").css("display" , "block");
                 $("ul.menu_login").css("display" , "block");
                 $(".wrapper_login").css("display" , "block"); 
                 $("#logo a img").attr("src" , "/skin/layouts/seutem/img/logo.png");
               }
              })
            })
      </script>