<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file = "../layout/header.jsp" %>

	<div id="demo" class="carousel slide" data-ride="carousel" style="background-color: #FEFBE7 !important;">
	<br/>
		<div class="carousel-inner">
			<!-- 슬라이드 쇼 -->
			<div class="carousel-item active">
				<!--가로-->
				<img class="d-block w-100"
					src="<%=request.getContextPath()%>/images/banner1_1.png"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h5></h5>
					<p></p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="<%=request.getContextPath()%>/images/banner2_1.png"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="<%=request.getContextPath()%>/images/banner3_1.png"
					alt="Third slide">
			</div>
			<!-- / 슬라이드 쇼 끝 -->
			<!-- 왼쪽 오른쪽 화살표 버튼 -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<!-- <span>Previous</span> -->
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<!-- <span>Next</span> -->
			</a>
			<!-- / 화살표 버튼 끝 -->
			<!-- 인디케이터 -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<!--0번부터시작-->
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<!-- 인디케이터 끝 -->
		</div>
</div>

		<div style = "background-color: #FEFBE7;">
			<img class="mainbottom"
				src="<%=request.getContextPath()%>/images/mainbottom.png"
				alt="Third slide">
		</div>
		<div class="footer_Bg">
			<!-- footer_Bg -->
			<div id="footer">
				<!-- footer -->
				<div class="inner">
					<div class="top-footer">
						<ul>
							<li class="first"><a href="javascript:render_policy();"><img
									src="<%=request.getContextPath()%>/images/footer_link_01.png"
									width="68" height="10" alt="개인정보보호정책"></a></li>
							<li class="second"><a href="javascript:render_guide();"><img
									src="<%=request.getContextPath()%>/images/footer_link_02.png"
									width="34" height="10" alt="이용약관"></a></li>
							<li class="third"><a href="javascript:render_emailreject();"><img
									src="<%=request.getContextPath()%>/images/footer_link_03.png"
									width="81" height="10" alt="이메일 무단수집거부"></a></li>
							<li class="four"><a
								href="http://www.momstouch.co.kr/sub/customer/customer_02.html"><img
									src="<%=request.getContextPath()%>/images/footer_link_04.png"
									width="30" height="10" alt="고객문의"></a></li>
						</ul>
					</div>
					<div class="sns-list">
						<ul>
							<li class="five"><a
								href="https://www.facebook.com/momstouchmain" target="_blank"><img
									src="<%=request.getContextPath()%>/images/fb_icon.png"
									alt="페이스북 바로가기"></a></li>
							<li class="six"><a
								href="https://www.instagram.com/momstouch.love/" target="_blank"><img
									src="<%=request.getContextPath()%>/images/ins_icon.png"
									alt="인스타그램 바로가기"></a></li>
							<li class="seven"><a
								href="https://www.youtube.com/channel/UCOwRjHPzIh3Xlayb85N1aCQ"
								target="_blank"><img
									src="<%=request.getContextPath()%>/images/ut_icon.png"
									alt="유튜브 바로가기"></a></li>
						</ul>
					</div>
				</div>
				<address class="address">
					<img src="<%=request.getContextPath()%>/images/address_201113.png"
						alt="해마로푸드서비스(주)  |  대표 : 이병윤  |  서울시 강동구 천호대로 1077 이스트센트럴타워 24,25층 | 사업자등록번호 676-86-00102 통신판매업 신고번호 : 제2015-서울강동-0155호  |  대표전화 1661-4205 | 팩스:02-418-0279, 070-4676-0635 COPYRIGHT ⓒ BY MOMS TOUCH ALL RIGHT RESERVED 고객상담메일  moms@momstouch.co.kr 고객상담전화 1661-4205 상담 가능 시간  10:00 ~ 12:00 / 13:00 ~ 19:00 월 ~ 금(공휴일 제외)"
						usemap="#190717">
					<map name="190717" id="190717">
						<area shape="rect" coords="2,15,134,55"
							href="http://www.momstouch.co.kr/main/main.php#self">
					</map>
				</address>
			</div>
			<!-- //footer -->
		</div>
</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script>
	$('.carousel').carousel({
		interval : 2000
	})
</script>

</html>
