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
    <h2 id="center">로그인</h2>
</div>
<form class="container pt-5" action="<%=request.getContextPath()%>/userdata/loginPro">
  <div class="form-group">
    <br>
    <input type="text" class="form-control" placeholder="아이디" name="id">
    <br>
    <input type="password" class="form-control" placeholder="비밀번호" name="pw">
    <br>
    <a href="<%=request.getContextPath()%>/userdata/sendMailForm">
    <small class="form-text text-muted" >회원가입</small></a>
    &nbsp;&nbsp;
    <a href="#"><small class="form-text text-muted" >아이디/비밀번호찾기</small></a>
  </div>
	<br>

  <button type="submit" class="btn btn-secondary">Submit</button>
 
</form>
</body>
</html>