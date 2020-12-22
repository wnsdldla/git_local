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
<title>공지사항</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<style>
.big-width {
	display: block;
}

.small-width {
	display: none;
}
</style>
</head>
<body class="is-preload">

	<jsp:include page="../menu/menu.jsp" />

	<!-- Main -->
	<article id="main"> <br>
	<br>
	<h2 class="major special" align="center" style="margin-bottom: 0px">공지사항</h2>
	<div class="wrapper">
		<div class="inner">


			<hr class="major" />

			<!-- Elements -->
			<div class="row gtr-200">
				<div class="col-12 col-12-medium">

					<!-- Table -->
					<h2 style="margin-bottom: 0px">Notice</h2>

					<div class="table-wrapper">
						<table>
							<thead>

								<tr>
									<ul class="actions small"
										style="float: right; margin-bottom: 0px">

										<li><a href="/animalConnect/notice/noticeRegister"
											class="button primary small">작성</a></li>
									</ul>
								</tr>
								<tr>
									<th style="width: 12%"><div align="center">공지 번호</div></th>
									<th style="width: 45%"><div align="left">공지 제목</div></th>
									<th><div align="center">등록일</div></th>
									<th><div align="center">등록자</div></th>


								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${list != null and fn:length(list) > 0}">
										<c:forEach var="n_bean" items="${list}">
											<tr align="center" valign="middle"
												onmouseover="this.style.backgroundColor='F8F8F8'"
												onmouseout="this.style.backgroundColor=''">
												<td height="23"
													style="font-family: Tahoma; font-size: 10pt;">
													${n_bean.getNoticeNum()}</td>

												<td style="font-family: Tahoma; font-size: 10pt;">
													<div align="left">
														<a class="goGet" href="${n_bean.getNoticeNum()}"
															>${n_bean.getNoticeTitle()}</a>
													</div>
												</td>
												<td>
													<div align="center">${n_bean.getNoticeDate()}</div>
												</td>
												<td>
													<div align="center">${n_bean.getAdminEmail()}</div>
												</td>

											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr height="50px">
											<td colspan="4" align="center">등록된 게시물이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
							<tfoot>
								<tr>
									<td   colspan="4" align="center"><c:if
											test="${pageMaker.prev }">
											<a class="changePage" href="${pageMaker.startPage-1 }"><code>&lt;</code>
											</a>
										</c:if> <c:forEach var="num" begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }">
											<c:choose>
												<c:when test="${num eq pageMaker.cri.pageNum }">
													<code>${num }</code>
												</c:when>
												<c:otherwise>
													<a class="changePage" href="${num }"><code>${num }</code></a>
												</c:otherwise>
											</c:choose>
										</c:forEach> <c:if test="${pageMaker.next }">
											<a class="changePage" href="${pageMaker.endPage +1 }"><code>&gt;</code></a>
										</c:if>
									</td>
								</tr>
							</tfoot>
						</table>

					</div>

				</div>

			</div>
		</div>
	</div>
	</article>
<form id="actionForm" action="/animalConnect/notice/noticeList" mtehod="get">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			</form>
	<jsp:include page="../footer/footer.jsp" />
	<script>
	var actionForm = $("#actionForm");
	var searchForm = $("#searchForm");
	
	
	$(".changePage").on("click",function(e){
		e.preventDefault();
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
	$(".goGet").on("click",function(e){
		e.preventDefault();
		actionForm.append("<input type='hidden' name='noticeNum' value='"+$(this).attr("href") +"'>");
		actionForm.attr("action","/animalConnect/notice/noticeRead");
		actionForm.submit();
	});

	</script>
	
</body>
</html>