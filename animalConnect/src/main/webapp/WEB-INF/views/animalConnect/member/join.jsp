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
<link rel="icon" href="/favicon.ico" type="image/x-icon">
	</head>
	<body class="is-preload">

			<jsp:include page="../menu/menu.jsp" />


		<!-- Main -->
<article id="main"> 
	<br>
	<br>
	<h2 class="major special" align="center">일반 회원 Sing Up</h2>
	<div class="wrapper">
		<div class="inner">

			<!-- Elements -->
			<div class="row gtr-200">
				<div class="col-12 col-12-medium" align="center">

					<div class="table-wrapper">
						<form action="/animalConnect/member/join" name="joinForm" method="post">
							<div class="box" style="flaot:left; width:400px; text-align:left;">
								<label>이메일</label>
								<div style="margin-bottom:25px;">
									<input type="text" name="userEmail" placeholder="Email" style="line-height:100px;">
								</div>
								<div style="margin-bottom:25px;">
									<label>비밀번호<sub>(특수문자 포함 8글자 이상)</sub></label>
									<input type="password" name="userPw" style="line-height:100px;" placeholder="Password">
								</div>
								<div style="margin-bottom:25px;">
									<label>비밀번호 확인</label>
									<input type="password" name="checkPw" style="line-height:100px;" placeholder="Password">
								</div>
								<div style="margin-bottom:25px;">
									<label >전화번호</label>
									<input class="userHp" type="text" name="userHp" style="line-height:100px;" maxlength="13" placeholder="H.P">
								</div>
								<div style="margin-bottom:25px;">
									<input type="checkbox" name="check" id="check">
								 	 <label for="check"><a href="terms.html">이용약관</a> 및 개인정보수집 동의</label>
								</div>
								<div style="margin-bottom:25px;">
									<input type="button" onclick="formSubmit()" value="회원가입">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>

	</div>
</article>

	<!-- Footer -->
	<jsp:include page="../footer/footer.jsp" /> 

		<!-- Scripts -->
			
			<script>var contextPath = "${pageContext.request.contextPath}";</script>`
			<script src="/resources/assets/js/join.js"></script>
	</body>

</html>