<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
a{
text-decoration : none;
}
</style>
</head>
<body>

<form class="container pt-5" action="<%=request.getContextPath()%>/userdata/sendMail">
  <div class="form-group">
    <br>
    <input type="email" class="form-control" placeholder="email" name="toMail"> 
  	<button type="submit" class="btn btn-secondary">인증 코드 발송 </button>
 </div>
</form>


</body>
</html>