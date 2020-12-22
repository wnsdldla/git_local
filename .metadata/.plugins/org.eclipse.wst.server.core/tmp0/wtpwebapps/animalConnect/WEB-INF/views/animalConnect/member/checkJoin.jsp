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
	<h2 class="major special" align="center">회원가입</h2>
	<div class="wrapper">
		<div class="inner">

			<!-- Elements -->
			<div class="row gtr-200">
				<div class="col-12 col-12-medium" align="center">

					<div class="table-wrapper" >
							<div class="box" style="margin:50px; width:450px; float: left;">
									<h3>사람들에게 도움을 주고싶어요!</h3><br>
									<p>도움이필요한 고객들을 도와주세요</p><br>
									<a href="/animalConnect/member/proJoin">전문가 회원가입</a><br>
							</div>
							<div style="margin-left:7%; margin-top:20%; float: left;"></div>
							<div class="box" style="margin:50px; width:450px; float: right;">
									<h2>도움이 필요해요!</h2><br>
									<p>수많은 전문가들을 만나보세요</p><br>
									<a href="/animalConnect/member/join">일반 회원가입</a><br>
							</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</article>
	<jsp:include page="../footer/footer.jsp" /> 

		<!-- Scripts -->
			
			<script src="join.js"></script>
	</body>

</html>