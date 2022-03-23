<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  	
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">	
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slider.js"></script>	
<html>
<head>
<meta charset="UTF-8">

<style>
@import url(https://fonts.googleapis.com/css?family=Istok+Web);
.cardtit {
	color: black !important;
}

.card-header {
	background-color: white !important;
}

.container2 {
	width: 1400px;
	margin: 50px auto !important;
	
}

.form-group {
	width: 100%;
}

.chk {
	width: 35% !important;
	float: left !important;
}

.chk_about {
	width: 30% !important;
	float: left !important;
	padding: 20px !important;
	
}
.chk_about ul li {
	font-size:15px !important;
}
.col-md-7 {
	flex: none;
	max-width: none;
}
.btn-info {
	margin-top:50px;
	background:#404040;
	border:1px solid #404040;
	
}
#collapseTwo {
	padding-bottom: 50px !important;
}

@keyframes slidy {
0% { left: 0%; }
20% { left: 0%; }
25% { left: -100%; }
45% { left: -100%; }
50% { left: -200%; }
70% { left: -200%; }
75% { left: -300%; }
95% { left: -300%; }
100% { left: -400%; }
}
* {
  box-sizing: border-box;
}
body, figure { 
  margin: 0;
  font-family: Istok Web, sans-serif;
  font-weight: 100;
}
div#captioned-gallery { 
  width: 100%; overflow: hidden; 
}
figure.slider { 
  position: relative; width: 500%;
  font-size: 0; animation: 30s slidy infinite; 
}
figure.slider figure { 
  width: 20%; height: auto;
  display: inline-block;  position: inherit; 
}
figure.slider img { width: 100%; height: auto; }
figure.slider figure figcaption { 
  position: absolute; bottom: 0;
  background: rgba(0,0,0,0.4);
  color: #fff; width: 100%;
  font-size: 2rem; padding: .6rem; 
}
.sns_wrap {
	position:fixed;
	right:20px;
	bottom:100px;

}
.sns {
	border-radius:100%;
	padding:15px;
	background:#ffbc00;
}
.sns a {
	color:#fff;
	font-size: 20px;
}
</style>
</head>
<body>



<div id="captioned-gallery">
	<figure class="slider">
		<figure>
			<img src="<%=request.getContextPath()%>/image/camping1.jpg" alt="New York">
			<figcaption>Hobbiton, New Zealand</figcaption>
		</figure>
		<figure>
			<img src="<%=request.getContextPath()%>/image/camping2.jpg" alt="New York">
			<figcaption>Wanaka, New Zealand</figcaption>
		</figure>
		<figure>
			<img src="<%=request.getContextPath()%>/image/camping3.jpg" alt="New York">
			<figcaption>Utah, United States</figcaption>
		</figure>
		<figure>
			<img src="<%=request.getContextPath()%>/image/camping4.jpg" alt="New York">
			<figcaption>Utah, United States</figcaption>
		</figure>
		<figure>
			<img src="<%=request.getContextPath()%>/image/camping4.jpg" alt="New York">
			<figcaption>Utah, United States</figcaption>
		</figure>
	</figure>
</div>
	
<div class="container2">
<form action="<%=request.getContextPath() %>/camp/main" method="post">
			<p>
				<strong>실시간 예약하기</strong>
			</p>
<div id="accordion">
<div class="card">
<div class="card-header">
	<a class="card-link" data-toggle="collapse" href="#collapseOne">
		<strong class="cardtit">캠핑장 선택</strong>
</a>
</div>

<div id="collapseOne" class="collapse" data-parent="#accordion">
	<div class="card-body">
	<c:forEach var="c" items="${c}">
	<label style="width: 30%;"><input type="radio" name="campname">&nbsp; ${c.campname }</label> 
	</c:forEach>
		</div>
	</div>
</div>


<div class="card">
<div class="card-header">
	<a class="card-link" data-toggle="collapse" href="#collapseTwo">
		<strong class="cardtit">객실예약</strong>
</a>
</div>

<div id="collapseTwo" class="collapse" data-parent="#accordion">
	<div class="card-body">

	

	<c:forEach var="c" items="${c}">

	<label style="width: 30%;"><input type="radio" name="roomno" value="1">&nbsp; ${c.room }</label>
	</c:forEach> 
	
		</div>
	</div>
</div>

<div class="card">
<div class="card-header">
	<a class="collapsed card-link" data-toggle="collapse" href="#collapseThree"> <strong class="cardtit">투숙기간 선택</strong>
</a>
</div>
					
<div id="collapseThree" class="collapse" data-parent="#accordion">
<div class="card-body">
<div class="col-md-7">
		<!-- CHK IN & OUT 달력 -->
<div class="form-group">
<div class="chk">
<span class="form-label">Check In</span> <input class="form-control" type="date" name="chkin">
</div>
<div class="chk">
<span class="form-label">Check out</span> <input class="form-control" type="date" name="chkout">
</div>
<div class="chk_about">
<ul>
<li>Check In 은 15시 입니다.</li>
<li>Check Out 은 11시 입니다.</li>
</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="card">
<div class="card-header">
<a class="collapsed card-link" data-toggle="collapse" href="#collapseFour"> <strong class="cardtit">인원선택</strong>
</a>
</div>
<div id="collapseFour" class="collapse" data-parent="#accordion">
<div class="card-body">
<div class="form-group">
<div class="chk">
<span class="form-label">성인</span> <select class="form-control" name="person" onchange="changePerson(this.value)">
											<option  value="${r.person +1}">1</option>
											<option  value="${r.person +2}">2</option>
											<option  value="${r.person +3}">3</option>
											<option  value="${r.person +4}">4</option>
										</select>
</div>
<div class="chk">
<span class="form-label">소인</span> <select class="form-control" name="kid" onchange="changeKid(this.value)">
											<option  value="${r.kid +1}">1</option>
											<option  value="${r.kid +2}">2</option>
											<option  value="${r.kid +3}">3</option>
											<option  value="${r.kid +4}">4</option>
										</select>
</div>
<div class="chk_about">
<ul>
<li>성인: <span   id="person" >${r.person}</span> 인</li>
<li>소인: <span   id="kid" >${r.kid}</span> 인</li>
<li>선택한 객실은: <span id="room">${r.room }</span>입니다</li>
</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
			
			
	<div id="center" style="padding: 3px;">
		<input type="submit" class="btn btn-info" value="예약하기" />
	</div>
	</form>
	<div class="sns_wrap">
		<div class="sns"><a href="#"><i class="xi-kakaotalk xi-2x"></i></a></div>
	</div>
<script>
function changePerson(p) {
	
	let person = document.querySelector("#person");
	person.innerHTML=p
}

function changeKid(k) {
	let kid = document.querySelector("#kid");
	kid.innerHTML=k
}
function selectcamp(sc) {
	let campname = document.querySelector("#campname");
	campname.innerHTML=sc
}

</script>
</body>
</html>

