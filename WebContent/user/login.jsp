<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file = "../layout/header.jsp" %>

	<div class="tes1">
	<br/>
	<br/>
	<br/>
	<div class="container">
		<h3 class ="login_h" style = "color:#664938">로그인</h3>
		<form action="/momstouch/user?cmd=login" method="post">
			<div class="form-group">
				<label for="ID">ID:</label> <input type="id"
					class="form-control" id="id" placeholder="Enter id"
					name="username">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd" placeholder="Enter password"
					name="password">
			</div>
			<div class="form-group form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="checkbox" name="remember">
					Remember me
				</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
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
</html>
