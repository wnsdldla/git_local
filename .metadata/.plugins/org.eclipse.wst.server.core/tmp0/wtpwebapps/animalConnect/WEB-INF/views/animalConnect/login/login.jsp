<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>로그인</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=1" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
	</head>
	<body class="is-preload">

			<jsp:include page="../menu/menu.jsp" />


	<!-- Main -->
	<article id="main">
	<br>
		<section class="row">
 		<c:if test="${not empty login}">
   	  		<c:if test="${not login}">
   	  			<script>alert("아이디 또는 비밀번호를 다시 확인해주세요.")</script>
   	  		</c:if>
   	  	</c:if>
		<form style="margin-left:auto; margin-right:auto;" name="loginForm" action="/animalConnect/login/login" method="post">
			<h2 class="major special" align="center">로그인</h2>
				<div class="wrapper" style="padding:5em;">
					<div class="box">
							이메일 <input type="email" name="id" placeholder="Email"/> <br> 
							비밀번호 <input type="password" name="pw" placeholder="Password"/>
								<a href="#" style="font-size:12px; text-decoration: none">비밀번호 찾기</a>
								<br>
								<br>
								<a href="javascript:loginForm.submit()" class="button primary fit small">로그인</a>
								<br>
								<p style="text-align:center"><a href="/animalConnect/member/checkJoin" style="font-size:15px; text-decoration: none">회원가입</a></p>
					</div>
				</div>
			</form>
		</section>
	</article>

	<!-- Footer -->
	<jsp:include page="../footer/footer.jsp" /> 

		<!-- Scripts -->
			<script>var contextPath = "${pageContext.request.contextPath}";</script>

	</body>
</html>