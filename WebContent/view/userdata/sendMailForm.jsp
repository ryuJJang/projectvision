<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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


a{
text-decoration : none;
}
</style>
</head>
<body>
<div class="subback">
    <h2 id="center">본인 인증</h2>
</div>
<form class="container pt-5" action="<%=request.getContextPath()%>/userdata/sendMail">
  <div class="form-group">
    <br>
    <input type="email" class="form-control" placeholder="email" name="toMail"> 
  	<button type="submit" class="btn btn-secondary">인증 코드 발송 </button>
 </div>
</form>


</body>
</html>