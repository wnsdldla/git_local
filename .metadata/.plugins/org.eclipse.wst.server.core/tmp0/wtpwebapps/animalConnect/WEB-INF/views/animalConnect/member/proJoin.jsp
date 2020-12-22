<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Tactile by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Untitled</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=1" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
	</head>
	<body class="is-preload">

			<jsp:include page="../menu/menu.jsp" />


		<!-- Main -->
<article id="main">
<br>
<br>
	<h2 class="major special" align="center">전문가 Sing Up</h2>

	<div class="wrapper">
		<div class="inner">

			<!-- Elements -->
			<div class="row gtr-200">
				<div class="col-12 col-12-medium" align="center">

					<div class="table-wrapper">
						<form action="/animalConnect/member/proJoin" name="proJoinForm" method="post">
							<div class="box" style="flaot:left; width:500px; text-align:left;">
								<div style="margin-bottom:25px;">
									<input type="checkbox" name="check" id="check">
								 	 <label for="check"><strong><a href="terms.html">이용약관</a> 및 개인정보수집 동의</strong></label>
								</div>
								<input type="hidden" value="NO" name="proCheck">
								<div style="margin-bottom:25px;">
									<label>닉네임</label>             
									<input type="text" name="nicName" style="line-height:100px;" placeholder="NicName">
									<p id="idCheck_text"></p>
								</div>
								<div style="margin-bottom:25px;">
									<label>이름</label>
									<input type="text" name="proName" style="line-height:100px;" placeholder="Name">
								</div>
								<div style="margin-bottom:25px;">
									<label>이메일</label>
									<input type="text" name="proEmail" style="line-height:100px;" placeholder="Email">
								</div>
								<div style="margin-bottom:25px;">
									<label>비밀번호<sub>(특수문자 포함 8글자 이상)</sub></label>
									<input type="password" name="proPw" style="line-height:100px;" placeholder="Password">
								</div>
								<div style="margin-bottom:25px;">
									<label>비밀번호 확인</label>
									<input type="password" name="proCheckPw" style="line-height:100px;" placeholder="Password">
								</div>
								<div style="margin-bottom:25px;">
									<label>전화번호<sub>('-' 없이 입력)</sub></label>
									<input type="text" name="proHp" style="line-height:100px;" placeholder="H.P">
								</div>
								 
								<div style="margin-bottom:25px;" id="newText">
									<label>활동 가능주소</label>
									<select name="sido1" id="sido1" style="display:inline; width:220px;">
     									<option value="">시/도</option>
   								 	</select>
    								<select name="gugun1" id="gugun1"  style="display:inline; width:220px;">
      									<option value="">군/구</option>
    								</select>
    								<input id="map" type="button" value="등록" onclick="checkMap(sido1.value, gugun1.value)" style="margin-top: 20px;" >
								</div>
								<input type="text" name="maps" style="display: none;">
								<!--
					<label style="text-align:left;">자격증 및 경력 증명서<sub>(필수)</sub></label>
					
					<ul class="alt">
						<li>
							<input type="file" style="width:55%;" name="file1">
							<input type="button" onclick="cancleFile('file1')" value="첨부 삭제" style="margin-left:100px; padding:0px; height:40px;"/>
						</li>
						<li>
							<input type="file" style="width:55%;" name="file2">
							<input type="button" onclick="cancleFile('file2')" value="첨부 삭제" style="margin-left:100px; padding:0px; height:40px;"/>
						</li>
						<li>
							<input type="file" style="width:55%;" name="file3">
							<input type="button" onclick="cancleFile('file3')" value="첨부 삭제" style="margin-left:100px; padding:0px; height:40px;"/>
						</li>
					</ul>		 -->
								<div style="margin-bottom:25px;">
									<input type="button" onclick="formSubmit()" value="확인">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div> 
		</div>
	</div>
</article>

	<jsp:include page="../footer/footer.jsp" /> 
	
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="/resources/assets/js/proJoin.js"></script>
	</body>
			<script>
				function cancleFile(fileTagName){
					if($.browser.msie){	//ie일 때 초기화
						$("input[name='"+ fileTagName +"']").replaceWith($("input[name='"+ fileTagName +"']").clone(true));
					}else{ //그 외 브라우저일 때 초기화
						$("input[name='"+ fileTagName +"']").val("");
					}
				}	
			</script>
</html>