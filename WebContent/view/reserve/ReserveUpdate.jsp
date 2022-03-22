<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 변경하기</title>
<style>
.notosanskr * { 
 font-family: 'Noto Sans KR', sans-serif;
}
h2#center {
    text-align:center;
    margin-bottom:50px;
    color:#fff;
    line-height:500px;
    font-weight:bold;
    font-size: 35px;
    font-family: 'Noto Sans KR', sans-serif;
}
.subback {
    width:100%;
    height:500px;
    overflow:hidden;
    background:url("<%=request.getContextPath()%>/image/notice.jpg");
}
.container {
    margin-top:150px;
    margin-bottom:150px;
}
.carousel-inner img {
    width: 100%;
    height: 100%;
  }
  #demo {
  width: 40%;
  height: 100%;
  float: left;
  padding: 10px;
  }
  .comment {
  width: 40%;
  height: 30%;
  float: left;
  padding: 10px;
  }
</style>
</head>
<body>
<div class="subback">
    <h2 id="center">${boardName}</h2>
</div>
<form action="<%=request.getContextPath() %>/reserve/ReserveUpdatePro" method="post">
<h4>~~~님의 예약</h4>
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src= "<%= request.getContextPath() %>/image/camping1.jpg" alt="Los Angeles" width="400" height="700">
    </div>
    <div class="carousel-item">
      <img src="<%= request.getContextPath() %>/image/camping2.jpg" alt="Chicago" width="400" height="700">
    </div>
    <div class="carousel-item">
      <img src="<%= request.getContextPath() %>/image/camping3.jpg" alt="New York" width="400" height="700">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<div class="comment">
<ul>
<li><strong>캠핑장이름</strong></li>
<li>캠핑장 주소 :</li>
<li>객실 :</li>
<li>금액 :</li>
<li>체크인 :<input type="date" name="chkin" placeholder=""></li>
<li>체크아웃 :<input type="date" name="chkout" placeholder=""></li>
<li>성인인원수 :<input type="number" name="person"placeholder="0"></li>
<li>소인인원수 :<input type="number" name="kid"placeholder="0"></li>
</ul>
<div id="center" style="padding: 3px;">
	<button type="submit" class="btn btn-dark">수정</button>
	<button type="submit" class="btn btn-dark">취소</button>
</div>
</div>
</form>
</body>
</html>