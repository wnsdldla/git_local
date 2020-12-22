<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
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
	</head>
	<body class="is-preload">
	<c:set var="list" value="${requestScope.a_list }"/>
	<c:set var="totalPage" value="${requestScope.totalPage }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt}" />
	<c:set var="nowPage" value="${requestScope.totalCnt }"/>
	<c:set var="startPage" value="${requestScope.startPage }"/>
	<c:set var="endPage" value="${requestScope.enaPage }"/>
	
	
			<jsp:include page="../menu/menu.jsp" />


		<!-- Main -->
			<article id="main">
			<br>
			<br>
			<h2 class="major special" align="center">회원가입 승인</h2>

				<div class="wrapper">
					<div class="inner">

						
						<hr class="major" />

						<!-- Elements -->
							<div class="row gtr-200">
								<div class="col-12 col-12-medium">

									<!-- Table -->
										<h3>전문가 회원가입 승인</h3>
										
										<div class="table-wrapper">
											<table>
												<thead>
													<tr>
														<th>이름</th>
														<th>이메일</th>
														<th>닉네임</th>
														<th>승인</th>
														
													</tr>
												</thead>
												<tbody>
														<c:choose>
														 <c:when test="${list != null and fn:length(list) > 0 }">
														 	<c:forEach var="a_bean" items="${list}">
													<tr>
														
														<td>${a_bean.getPro_name() }</td>
														<td>${a_bean.getPro_email() }</td>
														<td>${a_bean.getNicname() }</td>
														<td><a id="proDetail" href="${pageContext.request.contextPath}/approve/ApproveDetail.ap?req=${a_bean.getPro_email()}" style="text-decoration:none; font-size:15px">회원가입승인</a></td>
													</tr>

														 	</c:forEach>
														 </c:when>
														 <c:otherwise>
																<tr height="50px">
																	<td colspan="4" align="center">등록된 승인요청이 없습니다.</td>
																	</tr>
														 </c:otherwise>
														</c:choose>
														
														
														
												</tbody>
												<tfoot>
								<tr>
									<td colspan="4" style="text-align: center;"><c:choose>
											<c:when test="${nowPage > 1}">
												<a
													href="${pageContext.request.contextPath}/approve/ApproveList.ap?page=${nowPage - 1}">[이전]</a>&nbsp;
                  </c:when>
										</c:choose> <c:forEach var="i" begin="${startPage}" end="${endPage}">
											<c:choose>
												<c:when test="${i eq nowPage}">
                        [${i}]&nbsp;
                     </c:when>
												<c:otherwise>

												</c:otherwise>
											</c:choose>
										</c:forEach> <c:choose>
											<c:when test="${nowPage != totalPage}">
												<a
													href="/animalConnect/approve/ApproveList.ap?page=${nowPage + 1}">[다음]</a>&nbsp;
                  </c:when>
										</c:choose></td>
								</tr>
												</tfoot>
											</table>						
										</div>
								</div>

							</div>
						</div>
					</div>
			</article>

		<!-- Footer -->
	<jsp:include page="../footer/footer.jsp" />

		<!-- Scripts -->

	</body>
</html>