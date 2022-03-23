<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >

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
    <h2 id="center">회원정보수정</h2>
</div>

<div class="container">
  
  <div class="card-deck"> 
        <div class="card bg-light text-dark">
    	<div class="card-body text-center">
    		<a href="#" class="card-link">회원 정보</a></div>
    	</div>
    	
    	<div class="card bg-light text-dark">
    	<div class="card-body text-center">
    		<a href="#" class="card-link">예약 내역</a></div>
    	</div>
    	
    	<div class="card bg-light text-dark">
    	<div class="card-body text-center">
    		<a href="#" class="card-link">내가 쓴 글</a></div>
    	</div>
   
   </div>  
</div>
</body>
</html>