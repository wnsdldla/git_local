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

		<form method="post" action="${pageContext.request.contextPath}/profile/ProfileModifyOk.pro" method="post" enctype="multipart/form-data" name="boardform">
		<div class="wrapper">
			<div class="inner">
				<h3>Pro Profile</h3>
				<div class="row">
					<div class="col-6 col-12-small">
						<h4>Profile</h4>
						
										<div class="box alt">
											<div class="row gtr-50 gtr-uniform">
						<div class="col-6 col-12-medium">
						<c:choose>
							<c:when test="${profileBean.getPro_img() == null }">
												
							<p><span class="image left">
									<a  style="text-decoration:none; font-size:15px; font-color:balck; ">															
										<img id="imgFile"  src="${pageContext.request.contextPath}/images/pic01.jpg" alt=""  style="height: 150px; width: 150px"/>	
										<input name="img" id="img" accept="image/png, image/jpeg" style="font-size:15px"  type="file" onclick="changeImg()">
										</a>							
									</span>
								</p>
							</c:when>
							<c:otherwise>
									<a style="text-decoration:none; font-size:15px">															
										<img id="imgFile" src="${pageContext.request.contextPath}/app/profile_img/${profileBean.getPro_img()}" alt=""  style="height: 150px; width: 150px"/>		
										<input  name="img" id="img" accept="image/png, image/jpeg" style="font-size:15px"  type="file" onclick="changeImg()">
										</a>		
							</c:otherwise>
						</c:choose>
						</div>
				
				</div>
				</div>
						<ul class="alt" >
							<li >닉 네 임 : <input name="nicname" id="nicname" value="${profileBean.getNicname()}"></li>
							<li >이 메 일 : <input readonly="readonly" name="email" id="email" value="${profileBean.getPro_email() }">이메일은 변경하실수없습니다.</li>
							<li >연 락 처 : <input name="hp" id="hp" value="${profileBean.getPro_hp() }"></li>
							<li >활동지역 : <input name="address" id="address" value="${profileBean.getPro_address() }"></li>
						</ul>
					</div>
					<div class="col-6 col-12-small">
						<h4>Career</h4>
							<p>경력사항은 문의를 통해 바꿔주세요</p>
							<ul class="alt" id="carrer">
							<c:choose>
								<c:when test="${careerList != null and fn:length(careerList) > 0}">
									<c:forEach varStatus="cnt" var="p_bean" items ="${careerList }">
										<li> <input readonly="readonly" name="contents${cnt.index}" value="${p_bean.getPro_contents()}">							
										 </li>
									</c:forEach>
								</c:when>
							</c:choose>
							</ul>
								
							
						<ul class="actions small" style="float: right; margin-top: 400px">
							<li><input  type="submit" class="button primary small" value="수정완료"></li>
						</ul>	
					</div>
						
		
						
				</div>
			</div>
		</div>
						</form>
	</article>

	<!-- Footer -->

	<jsp:include page="../footer/footer.jsp"/>
	<script src="/resources/app/pro/profile.js"></script>
	
</body>
</html>