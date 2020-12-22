<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- Header -->
			<header id="header">
				<h1><a href="/animalConnect/main/main">ANIMAL CONNECT</a></h1>
				<c:choose>
				<c:when test="${session_id eq null}">
					<a href="/animalConnect/login/login">Log In</a>
				</c:when>
				<c:when test="${session_nicName eq null}">
					<span style="color:black;"><a href="#">${session_id}</a> 님 환영합니다.</span>
				</c:when>
			<c:otherwise>
				<span style="color:black;"><a href="#">${session_nicName}</a> 님 환영합니다.</span>
			</c:otherwise>
			</c:choose>
				<a href="#menu">Menu</a>
			</header>

		
		<!-- Menu -->

		<nav id="menu">
				<ul class="actions stacked">
			<c:choose>
				<c:when test="${session_id eq null}">
					<li><a href="/animalConnect/member/checkJoin" class="button fit primary">Sign Up</a></li>
					<li><a href="/animalConnect/login/login" class="button fit">Log In</a></li>
				</c:when>
			<c:otherwise>
						<a href="/animalConnect/login/logout" class="button fit">로그아웃</a>
			</c:otherwise>
			</c:choose>
				</ul>
				<ul class="links">
					<li><a href="#">문의사항</a></li>
					<li><a href="/animalConnect/notice/noticeList">공지사항</a></li>
					<li><a href="/animalConnect/profile/profile">전문가 프로필</a></li>
					<c:if test="${session_num eq 0}">
						<li><a href="#">일반유저 문의</a></li>
						<li><a href="#">전문가 문의</a></li>
						<li><a href="#">승인대기</a></li>
					</c:if>
				</ul>
			</nav>
			