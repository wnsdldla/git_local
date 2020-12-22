 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Tactile by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>Untitled</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
	href="/resources/assets/css/main.css" />
</head>
<body class="is-preload" onload="add()">
	<jsp:include page="../menu/menu.jsp" />


	

	<!-- Main -->
	<article id="main">

	<div class="wrapper">
		<div class="inner">
			<div class="row gtr-200">
				<div class="col-12 col-12-medium">

					<!-- Table -->
					<h3>새로운 공지사항 작성</h3>

					<div class="table-wrapper">
								<c:choose>
									<c:when test="${session_num eq 0}">
						<form method="post"
							action="/animalConncet/notice/noticeRegister">
							
							<div class="row gtr-uniform">
								<div class="col-12 col-12-xsmall">
									<input type="text" name="email" id="email"
										value="${session_id }" placeholder="작성자"  />
								</div>
								<div class="col-12 col-12-xsmall">
									<input type="text" name="title" id="title" value=""
										placeholder="공지사항 제목" />
								</div>

								<div class="col-12">
									<textarea name="content" id="content"
										placeholder="공지사항 내용을 입력하세요" rows="6"></textarea>
								</div>
								<!-- Break -->
								<div class="col-12">
									<ul class="actions" style="float: right;">
										<li><input type="submit" value="공지사항 작성" class="primary" /></li>
										<li><a
											href="/animalConncet/notice/noticeList"
											class="button primary ">목록</a></li>
									</ul>
								</div>
							</div>
						</form>
									</c:when>
									<c:otherwise><script>
									function add(){
										alert("관리자만 작성 가능합니다.")
										history.back();									
									}
									</script></c:otherwise>										
								</c:choose>

					</div>

				</div>

			</div>
		</div>
	</div>
	</article>
	<jsp:include page="../footer/footer.jsp" />

</body>
</html>