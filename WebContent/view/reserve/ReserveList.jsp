<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 조회하기</title>
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
</style>
</head>
<body>
<div class="subback">
    <h2 id="center">${boardName}</h2>
</div>
<form action="<%=request.getContextPath() %>/reserve/ReserveUpdate" method="post">
<div class="container">
  <h2>예약 조회</h2>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>캠핑장이름</th>
        <th>캠핑장주소</th>
        <th>예약자명</th>
        <th>객실</th>
        <th>체크인</th>
        <th>체크아웃</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>신짱구캠핑</td>
        <td>강남</td>
        <td>장혁진</td>
        <td>123</td>
        <td>123</td>
        <td>123</td>
        <td><button type="submit" class="btn btn-dark">변경하기</button></td>
        
      </tr>
    </tbody>
  </table>
</div>
</form>
</body>
</html>