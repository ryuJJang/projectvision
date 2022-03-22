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

</style>
<script>

<%-- 

	function idChk(){
	
	const id = document.f.id.value
	let result = document.querySelector("#result")  
	const param ="id="+id
	
	if(id.length <8){
		result.style.color='red'
		result.innerHTML = 'id는 8자리 이상 입력하세요'
		
	} else{
		
		ajax("<%=request.getContextPath()%>/userdata/readId", param, callback,'post')
	}}
	
	function callback(){
		if(this.readyState == 4 && this.status==200){
			let result = document.querySelector("#result")
			let chk = this.responseText.trim();
			
			if(chk =="false"){
				result.style.color='blue'
				result.innerHTML = '사용가능한 id입니다'
				document.f.chk.value="ok"
			} else{
				result.style.color='red'
				result.innerHTML = '사용중인 id입니다'
				document.f.chk.value="no"
			}}
 --%>
</script>
</head>
<body>
<div class="subback">
    <h2 id="center">회원가입</h2>
</div>
<form class="container pt-5" action="<%=request.getContextPath()%>/userdata/joinPro" name="f">

  <div class="form-group row">
  	<label>ID</label>
    <input type="text" class="form-control" name="id" />  <!-- onkeyup="idChk()"   -->
    <span id="result" class="form-text text-muted">영문/숫자조합으로 8~12자리로만 가능합니다</span>

  </div>
  
  <div class="form-group row">
  	<div class="col">
    <label>Password</label>
    <input type="password" class="form-control" name="pw">
    </div>
    <div class="col">
    <label>Confirm Password</label>
    <input type="password" class="form-control" name="pw1"> <!-- 비밀번호 체크 -->
    </div>
  <small class="form-text text-muted" >연속된 숫자나 ID가 포함된 비밀번호는 사용하실 수 없습니다.</small>
  </div>
  
  <div class="form-group">
  	<label>이름</label>
    <input type="text" class="form-control" name="name">
  </div>
  <div class="form-group">
    <label for="gender">성별:</label>
    <label class="radio-inline"> </label>
    <input type="radio" name="gender" value = "1">남 <label class="radio-inline"> </label>
    <input type="radio" name="gender" value = "2">여
  </div>
   <div class="form-group">
	<label>생년월일</label>
    <input type="text" class="form-control" name="birthday">
  
    <label>전화번호</label>
    <input type="text" class="form-control" name="tel">
    
    <label>Email</label>
    <input type="text" class="form-control" name="email" value="${email }" readonly>
    
   </div>
   <div class="form-group">
		<input type="text" id="sample3_postcode" placeholder="우편번호" name="addr1">
		<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample3_address" placeholder="주소" name="addr2"><br>
		<input type="text" id="sample3_detailAddress" placeholder ="상세주소" name="addr3">
		<input type="text" id="sample3_extraAddress" placeholder="참고항목" name="addr4">
	</div>
	<div id="wrap" style="display:none; border:1px solid; width:500px; height:300px; margin:5px 0; position:relative">
	<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" 
	style="cursor:pointer; position:absolute; right:0px; top:-1px; z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
	</div>
 <br>
  <button type="submit" class="btn btn-secondary">Submit</button>
</form>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>
</body>
</html>