<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 보기</title>
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
.img {
border-radius: 20px;
width:90%;
height: 30%;
}
.list1 {
border: solid 2px red;
width: 35%;
float: left;
margin: 10px auto;
}
.list2{
width: 25%;
float: left;
padding: 10px;
}
.list3{
float: left;
margin-right: 50px;
padding: 10px;
}
.list4{
float: left;
margin-left: 30px;
padding: 10px;
}
</style>
</head>
<body>
<div class="subback">
    <h2 id="center">${boardName}</h2>
</div>
<form action="<%=request.getContextPath() %>/camp/Camplist" enctype="multipart/form-data" method="post">
<h2>캠핑장 보기</h2>
<div class="container-fluid">
<div><a href="<%=request.getContextPath()%>/campinfo.jsp">
        <label><div class="list1"><img src="<%=request.getContextPath()%>/image/camping1.jpg" class="img"></a></label></div>
        <div class="list2">
        <ul> <!-- 간단한 코멘트작성 -->
        <li style="margin-top: 30px;">코멘트</li>
        <li style="margin-top: 30px;">코멘트</li>
        <li style="margin-top: 30px;">코멘트</li>
        </ul>
        </div>
        <div class="list3">
        <ul> <!-- room -->
        <li style="margin-top: 30px;">객실이름</li>
        <li style="margin-top: 30px;">객실이름</li>
        <li style="margin-top: 30px;">객실이름</li>
        </ul>
        </div>
        <div class="list4">
        <ul> <!-- payIdx -->
        <li style="margin-top: 30px;">금액 : ~~</li>
        <li style="margin-top: 30px;">금액 : ~~</li>
        <li style="margin-top: 30px;">금액 : ~~</li>
        </ul>
        </div>
    </div>
</div>
</form>
</body>
</html>