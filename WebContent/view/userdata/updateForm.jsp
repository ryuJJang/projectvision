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
	
		<form action="<%=request.getContextPath() %>/member/memberUpdatePro"  method="post" name="f">
		
			<div class="form-group">
				<label for="id">아이디:</label> 
				<input type="text" class="form-control" name="id" readonly = "readonly" value = "${userdata.userId }"> 
				<label for="pwd">비밀번호:</label>
				<input type="password" class="form-control" id="pwd" name="pass"> 
				<label for="name" >이름:</label> 
				<input type="text" class="form-control" id="name" name="name" readonly = "readonly" value = "${userdata.Name }"> 
				<label for="gender">성별:</label> <label class="radio-inline"> </label>
				<input type="radio" name="gender" ${userdata.gender == 1? "checked" : "" } value = "1" disabled="disabled">남 <label class="radio-inline"> </label>
				<input type="radio" name="gender" ${userdata.gender == 2? "checked" : "" } value = "2" disabled="disabled">여
			</div>

		
		<div class="form-group">

			<label for="tel">전화번호:</label> <input type="text"
				class="form-control" name="tel" value = "${userdata.tel}">
		</div>
		<div class="form-group">

			<label for="tel">이메일:</label> <input type="text" class="form-control"
				name="email" value = "${userdata.email}" readonly = "readonly" >
		</div>


	<div id="center" style="padding: 3px;">
		<button type="submit" class="btn btn-dark">정보수정</button>
		<button type="button" class="btn btn-dark"
		onclick="location.href='<%=request.getContextPath()%>/member/passwordForm'">비밀번호 수정</button>
	</div>
	
	</form>
</div>

</body>
</html>