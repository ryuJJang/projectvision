<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 상세보기</title>
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
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  #demo {
  width: 50%;
  height: 50%;
  float: left;
  padding: 10px;
  }
  .comment {
  padding: 10px;
  }
  </style>
</head>
<body>
<div class="subback">
    <h2 id="center">${boardName}</h2>
</div>
<form action="<%=request.getContextPath() %>/reserve/ReserveInfo" method="post">
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src= "<%= request.getContextPath() %>/image/camping1.jpg" alt="Los Angeles" width="400" height="300">
    </div>
    <div class="carousel-item">
      <img src="<%= request.getContextPath() %>/image/camping2.jpg" alt="Chicago" width="400" height="300">
    </div>
    <div class="carousel-item">
      <img src="<%= request.getContextPath() %>/image/camping3.jpg" alt="New York" width="400" height="300">
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
<li>성인인원수 :</li>
<li>소인인원수 :</li>
<li>금액 :</li>
<li>체크인 :</li>
<li>체크아웃 :</li>
</ul>
</div>
</form>
</body>
</html>