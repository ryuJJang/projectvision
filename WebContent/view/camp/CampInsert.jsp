<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 등록</title>
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
<div class="container">
<form action="<%=request.getContextPath() %>/camp/CampInsertPro" enctype="multipart/form-data" method="post">
<!-- <h2   id="center">게시물 작성</h2> -->
				<div class="form-group">
					<label>캠핑장번호</label> 
					<input type="text" class="form-control" name="campidx">
					<label>캠핑장이름</label> 
					<input type="text" class="form-control" name="campname"> 
					<label>캠핑장주소</label>
					<input type="text" class="form-control" name="campaddr"> 
					<label>객실타입</label> 
					<input type="text" class="form-control"	name="room">
					<label>객실 개수</label> 
					<input type="number" class="form-control"	name="roomcnt"> 
					<label>객실번호</label> 
					<input type="number" class="form-control"	name="roomno">
					<label>금액</label> 
					<input type="number" class="form-control"	name="payidx">
					<label>체크인</label> 
					<input type="time" class="form-control"	name="chkin">
					<label>체크아웃</label> 
					<input type="time" class="form-control"	name="chkout">
		</div>
		<div class="form-group">
			<label>캠핑장 사진</label> 
			<input type="file" class="form-control" name="campimg">
		</div>
	<div id="center" style="padding: 3px;">
		<button type="submit" class="btn btn-dark">저장</button>
	</div>
	</form>
	</div>
</body>
</html>