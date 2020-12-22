<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 상세</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
</head>
<body class="is-preload">

	<c:set var="profileBean" value="${requestScope.ProfileBean}" />
	<c:set var="careerList" value="${requestScope.careerList }"/>
	
		<jsp:include page="../menu/menu.jsp" />


	<!-- Main -->
	<article id="main">

		<div class="wrapper">
			<div class="inner">
				<h3>Pro Profile</h3>
				<div class="row">
					<div class="col-6 col-12-small">
						<h4>Profile</h4>
						
						<c:choose>
							<c:when test="${profileBean.getPro_img() == null }">
						<span class="image fit"  style="height: 150px; width: 150px"><a href="question.html" style="text-decoration:none; font-size:15px">
								<img src="${pageContext.request.contextPath}/images/pic01.jpg" alt="상세보기" /></a></span>
							</c:when>
							<c:otherwise>
						<span class="image fit"  style="height: 150px; width: 150px"><a href="question.html" style="text-decoration:none; font-size:15px">
								<img src="${pageContext.request.contextPath}/app/profile_img/${profileBean.getPro_img()}" alt="" /></a></span>
							
							</c:otherwise>
						</c:choose>
						<ul class="alt" >
							<li >닉네임 : ${profileBean.getNicname()}</li>
							<li >이메일 : ${profileBean.getProEmail() }</li>
							<li >연락처 : ${profileBean.getProHp() }</li>
							<li >활동 지역 : ${profileBean.getProMaps() }</li>
						</ul>
					</div>
					<div class="col-6 col-12-small">
						<h4>Career</h4>
						<ul class="alt">
						<c:choose>
							<c:when test="${careerList != null and fn:length(careerList) > 0}">
							<c:forEach var="n_bean" items ="${careerList }">
								<li>${n_bean.getPro_contents() }</li>
							</c:forEach>
							</c:when>
						</c:choose>
						</ul>

						<ul class="actions small" style="float: right; margin-top: 260px">
						<c:choose>
							<c:when test = "${session_id==profileBean.getPro_email()}">
							<li><a href="${pageContext.request.contextPath}/profile/ProfileModify.pro?req=${profileBean.getPro_email()}" class="button primary small">수정</a></li>
							</c:when>
							<c:otherwise>
							<li><a href="${pageContext.request.contextPath}/profile/ProfileModify.pro?req=${profileBean.getPro_email()}" class="button primary small" style="display:none;">수정</a></li>	
							</c:otherwise>
						</c:choose>
							<li><a href="${pageContext.request.contextPath}/profile/ProfileList.pro" class="button primary small">목록</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</article>
	<!-- Footer -->
	<jsp:include page="../footer/footer.jsp" />

	<!-- Scripts -->
	<script src="/resources/assets/js/profile.js"/>
</body>
</html>