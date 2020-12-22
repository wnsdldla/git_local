 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
	href="/resources/assets/css/main.css" />
</head>
<body class="is-preload">

	
	<jsp:include page="../menu/menu.jsp" />


	<!-- Main -->
	<article id="main">
			<br>
			<br>
			<h2 class="major special" align="center">공지사항</h2>

		<div class="wrapper">
			<div class="inner">


				<!-- Elements -->
				<div class="row gtr-200">


					<div class="col-12 col-12-medium">


						<!-- Box -->
						<h3>제목 : ${NoticeBean.getNoticeTitle() }</h3>
						<div class="box">
							<p>
								${NoticeBean.getNoticeContents() }
							</p>
						</div>
						<ul class="actions small" style="float: right;">
						<c:choose>
							<c:when test="${session_num eq 0}">
							<li><a href="/animalConncet/notice/noticeModify?noticeNum=${NoticeBean.getNotice_num()}" class="button primary small">수정</a></li>
							<li><a href="/animalConncet/notice/noticeDelete?noticeNum=${NoticeBean.getNotice_num()}" class="button primary small">삭제</a></li>
							</c:when>
								<c:otherwise>
									<li><a href="/animalConncet/notice/noticeModify?noticeNum=${NoticeBean.getNoticeNum()}" class="button primary small" style="display:none;">수정</a></li>
									<li><a href="/animalConncet/notice/noticeDelete?noticeNum=${NoticeBean.getNoticeNum()}" class="button primary small" style="display:none;">삭제</a></li>
								</c:otherwise>
						</c:choose>
							<li><a href="/animalConnect/notice/noticeList${cri.getListLink() }" class="button primary small">목록</a></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</article>

	<jsp:include page="../footer/footer.jsp"/>

</body>
</html>