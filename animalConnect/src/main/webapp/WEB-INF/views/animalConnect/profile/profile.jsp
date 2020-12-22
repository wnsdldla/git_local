<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
<html>
<head>
<title>프로필리스트</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
</head>
<body class="is-preload">
	<c:set var="nowPage" value="${requestScope.nowPage}" />
	<c:set var="startPage" value="${requestScope.startPage}" />
	<c:set var="endPage" value="${requestScope.endPage}" />
	<c:set var="totalCnt" value="${requestScope.totalCnt}" />
	<c:set var="totalPage" value="${requestScope.totalPage}" />
	<c:set var="searchProfile" value="${requestScope.searchProfile}" />
	<jsp:include page="../menu/menu.jsp" />
	<!-- Main -->
	<article id="main">
		<br> <br>
		<h2 class="major special" align="center">전문가 프로필</h2>

		<div class="wrapper">
			<div class="inner">
				<!-- Elements -->
				<h2 id="elements"></h2>

				<div class="row gtr-200">
					<div class="col-6 col-12-medium"></div>
					<div class="col-6 col-12-medium">

						<div class="row gtr-uniform">
							<div class="col-8 col-12-small">
								<input type="text" name="nicname" id="query" placeholder="닉네임 입력" />
							</div>
							<div class="col-4 col-12-small">
								<input type="button" onclick="searchNicname()" value="전문가 찾기"
									class="fit" />
							</div>
						</div>
						<br> <br> <br>
					</div>
				</div>
				<br>

				<!-- Text stuff -->
				<div class="box alt">
					<div id="pro" class="row gtr-50 gtr-uniform">
						<c:choose>


							<c:when test="${list != null and fn:length(list) > 0}">
								<c:forEach var="n_bean" items="${list }">
									<div class="col-6 col-12-medium">
										<p>
											<span class="image left"> <a
												href="/animalConnect/profile/profileDetail?req=${n_bean.getProEmail()} }"
												style="text-decoration: none; font-size: 15px"> <img
													src="/resources/images/banner.jpg"
													alt="noImage" style="height: 150px; width: 150px" />
											</a>

											</span>닉네임 : ${n_bean.getNicName()}<br>활동 범위 :
											${n_bean.getProMaps()}<br>
										</p>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div>
									<h2>등록된게시물이 없습니다</h2>
								</div>
							</c:otherwise>
						</c:choose>

					</div>
					<div class="row gtr-50 gtr-uniform" style="display: none"
						id="searhProNic">
						<div class="col-6 col-12-medium">
							<p id="proInform">
								<span class="image left"> <a id="proDetail"
									href="/animalConnect/profile/profileDetail"
									style="text-decoration: none; font-size: 15px"> <img
										id="proimg" src="" alt="" style="height: 150px; width: 150px" />상세보기
								</a>
								</span><br>
							</p>

						</div>
					</div>
					<div>
						<p id="pageCnt" style="align: cneter; display: inline;">
							<c:choose>
								<c:when test="${pageMaker.getPCri().getPageNum() > 1}">
									<a href="/animalConnect/profile/profile?pageNum=${pageMaker.getPCri().getPageNum() - 1}">[이전]</a>&nbsp;										
									</c:when>
							</c:choose>
							<c:forEach var="i" begin="${pageMaker.getStartPage()}" end="${pageMaker.getEndPage() }">
								<c:choose>
									<c:when test="${i eq pageMaker.getPCri().getPageNum()}">
  												 [${i}]&nbsp;
                     							</c:when>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${pageMaker.getPCri().getPageNum() != pageMaker.getRealEnd()}">
									<a href="?pageNum=${pageMaker.getPCri().getPageNum() + 1}">[다음]</a>&nbsp;
             								     </c:when>
							</c:choose>
						</p>
					</div>
				</div>
			</div>
	</article>
	<!-- Footer -->
	<jsp:include page="../footer/footer.jsp" />
	<!-- Scripts -->
	<script src="/resources/assets/js/profile.js"></script>
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
</body>
</html>