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