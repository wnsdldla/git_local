<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=1" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />

<title>Insert title here</title>
</head>
<body class="is-preload">

	<jsp:include page="../menu/menu.jsp" />



		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<h2 class="major special">Animal Connect</h2>
					<p>다양한 반려동물 전문가들을 만나보세요!</p>
					<ul class="actions special stacked">
					<c:choose>
						<c:when test="${session_id != null}">
							<li><a href="/animalConnect/profile/userSelect.pro" class="button primary large">전문가 상담신청</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="/animalConnect/login/login" class="button primary large">전문가 상담신청</a></li>
						</c:otherwise>
					</c:choose>
						<li><a href="#two" class="button large scrolly">회사 소개</a></li>
					</ul>
				</div>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper alt">
				<section class="spotlight">
					<div class="image"><img src="/resources/images/pic01.jpg" alt="" /></div>
					<div class="content">
						<h3 class="major">전문가를 만나보세요!</h3>
						<p>원하는 전문가를 고객님이 필요한 사항에 맞춰 찾아드립니다!</p>
					</div>
				</section>
				<section class="spotlight">
					<div class="image"><img src="/resources/images/pic02.jpg" alt="" /></div>
					<div class="content">
						<h3 class="major">더많은 고객들은 만나보세요!</h3>
						<p>전문가님 조건에 맞는 요청서를 받아 더많은 고객님들을 만나보실수있습니다!</p>
					</div>
				</section>

			</section>

		<!-- Three -->
			<section id="three" class="wrapper style1 special">
				<div class="inner narrow">
					<h3 class="major special">Animal Connect에 가입해보세요!</h3>
					<p>고객님과 전문가님들에게 딱 맞는 조건으로 찾아 만날수있게 저희가 도와드리겠습니다!</p>
					<ul class="actions special">
						<li><a href="/animalConnect/member/CheckJoin.me" class="button primary large">회원가입</a></li>
					</ul>
				</div>
			</section>

		<!-- Footer -->
	<jsp:include page="../footer/footer.jsp" /> 

</body>
</html>