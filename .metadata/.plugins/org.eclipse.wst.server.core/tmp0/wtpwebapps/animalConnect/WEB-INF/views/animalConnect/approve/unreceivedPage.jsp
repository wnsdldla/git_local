<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<title>Insert title here</title>
</head>
	<body class="is-preload">
	<div class="wrapper">
		<div class="inner">
			<h2>승인 대기중입니다</h2>
			<p>${session_id}님 의 서류를 검토중에있습니다 불편을 드려 죄송합니다</p>
			<br>
		<input type="button" value="고객센터"> 
		</div>
	</div>
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	</body>
</html>