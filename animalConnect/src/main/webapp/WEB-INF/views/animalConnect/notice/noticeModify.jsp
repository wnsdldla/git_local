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
<body class="is-preload">
	
	<jsp:include page="../menu/menu.jsp" />

	<!-- Main -->
	<article id="main">

	<div class="wrapper">
		<div class="inner">
			<div class="row gtr-200">
				<div class="col-12 col-12-medium">

					<!-- Table -->
					<h3>공지사항 수정</h3>

					<div class="table-wrapper">
						<form method="post"
							action="/animalConncet/notice/noticeModify">
							<div class="row gtr-uniform">
								<div class="col-12 col-12-xsmall">
									<input type="text" name="notice_num" id="notice_num"
										value="${noticeBean.getNoticeNum() }" placeholder="공지번호" readonly style="display: none;" />
								</div>
								<div class="col-12 col-12-xsmall">
									<input type="text" name="email" id="email"
										value="${noticeBean.getAdminEmail() }" placeholder="작성자" readonly />
								</div>
								<div class="col-12 col-12-xsmall">
									<input type="text" name="title" id="title" value="${noticeBean.getNoticeTitle()}"
										placeholder="공지사항 제목" />
								</div>

								<div class="col-12">
									<textarea name="content" id="content"
										placeholder="공지사항 내용을 입력하세요" rows="6"  >${noticeBean.getNoticeContents()}</textarea>
								</div>
								<!-- Break -->
								<div class="col-12">
									<ul class="actions" style="float: right;">
										<li><input type="submit" value="공지사항 수정" class="primary" /></li>
										<li><a
											href="/animalConncet/notice/noticeList"
											class="button primary ">목록</a></li>
									</ul>
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

</body>
</html>