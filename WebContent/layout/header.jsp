<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=50, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<title>맘스터치</title>

<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	
	
<style>
.carousel-inner>.carousel-item>img {
	width: 150px;
	height: 384px;
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.principal != null}">
			<div class="test">
				<li class="top_li1"><a class="top_a1"
					href="<%=request.getContextPath()%>/user?cmd=logout"
					style="font-size: 15px;">로그아웃</a></li>
				<li class="top_li2"><a class="top_a2"
					href="<%=request.getContextPath()%>/user?cmd=joinForm"
					style="font-size: 15px;">회원가입</a></li>
			</div>
		</c:when>
		<c:otherwise>
			<div class="test">
				<li class="top_li1"><a class="top_a1"
					href="<%=request.getContextPath()%>/user?cmd=loginForm"
					style="font-size: 15px;">로그인</a></li>
				<li class="top_li2"><a class="top_a2"
					href="<%=request.getContextPath()%>/user?cmd=joinForm"
					style="font-size: 15px;">회원가입</a></li>
			</div>
		</c:otherwise>
	</c:choose>

	<div class="nav_01">
		<ul class="ul1">
			<li class="li_01" name="object" style="opacity: 1;"><a
				href="<%=request.getContextPath()%>/board?cmd=menulist&menu=chicken"><img
					src="<%=request.getContextPath()%>/images/menu.png" alt="메뉴"></a></li>
			<li class="li_02" name="object" style="opacity: 1;"><a
				href="/sub/store/store_01_list.html"><img
					src="<%=request.getContextPath()%>/images/search.png" alt="매장찾기"></a></li>
			<li class="li_03" name="object" style="opacity: 1;"><a
				href="/sub/franchise/franchise_01.html"><img
					src="<%=request.getContextPath()%>/images/letme.png" alt="가맹문의"></a></li>
			<a href="<%=request.getContextPath()%>/board?cmd=index"> <img
				src="<%=request.getContextPath()%>/images/logo_n.png" width="125"
				height="45" alt="MOM'S TOUCH CHICKEN&amp;BURGER" class="main_logo">
			</a>
			<li class="li_04" name="object" style="opacity: 1;"><a
				href="<%=request.getContextPath()%>/board?cmd=info&page=0"><img
					src="<%=request.getContextPath()%>/images/mainboard.png" alt="공지사항"></a></li>
			<li class="li_05" name="object" style="opacity: 1;"><a
				href="/sub/company/company_01.html"><img
					src="<%=request.getContextPath()%>/images/introduce.png" alt="회사소개"></a></li>
			<li class="li_06" name="object" style="opacity: 1;"><a
				href="/sub/customer/customer_05_list.html"><img
					src="<%=request.getContextPath()%>/images/story.png" alt="브랜드 스토리"></a></li>
		</ul>
	</div>