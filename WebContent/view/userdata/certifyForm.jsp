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
<script>
 function chkForm(){
	 
	 
	 let f = document.certify
	 

	if(f.key.value == f.code.value){
		
		  return true;
		  
	 } else{
		 
		 alert("인증코드를 확인하세요")
		  return false;
	 }
	 
	 
	 
 }

</script>
</head>
<body>
<div class="subback">
    <h2 id="center">인증코드확인</h2>
</div>

<form class="container pt-5" action="<%=request.getContextPath()%>/userdata/joinForm" method= "post" name="certify" onsubmit="return chkForm()">
  <div class="form-group">
    <br>
     <input type="text" class="form-control" value="${toMail }" readonly="readonly" name = "email"/> 
     <input type="hidden" class="form-control" value="${key }" readonly="readonly" name = "key" />
    <input type="text" class="form-control" placeholder="인증 코드 입력"  name="code" /> 
  	<button type="submit" class="btn btn-secondary">인증 완료 </button>
 </div>
</form>


</body>
</html>