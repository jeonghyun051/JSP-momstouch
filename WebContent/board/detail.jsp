<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="contop_Bg">

	<div
		style="width: 100%; display: flex; background-color: #FEF6EE; place-content: space-around;">

		<h2 style="display: block;">
			<br /> <img src="<%=request.getContextPath()%>/images/h2_tit_04.png"
				alt="맘스터치의 다양한 메뉴들을 소개합니다.">
		</h2>
		<p
			style="padding: 5px 35px 0px 0px; margin-top: 10px; display: block;"
			class="bgimg_05">
			<img src="<%=request.getContextPath()%>/images/bg_customer.png"
				alt="paprika, onion 이미지">
		</p>
	</div>
</div>

<div
	style="background-color: #FBE4D2; width: 100%; height: 600px; display: flex;">
	<div style="margin-left: 200px; position: absoul;">
		<br />

		<div>
			<a href="<%=request.getContextPath()%>/index.jsp"><img
				src="<%=request.getContextPath()%>/images/aside1.png"></a>
		</div>
		<div>
			<a><img src="<%=request.getContextPath()%>/images/bar.png"
				style="margin-top: -20px;"></a>
		</div>
		<div>
			<a><img alt=""
				src="<%=request.getContextPath()%>/images/aside2.png"
				style="margin-top: -20px;"></a>
		</div>
	</div>
	<div
		style="background-color: white; margin-top: 24px; margin-left: 10px; border-radius: 15px; border-style: outset;">
		<br /> <br />
		<div
			style="border-bottom: 0px solid #e0e0e0; margin-left: 25px; margin-top: -15px; display: flex; width: 750px">
			<h3 style="margin-left: 0px; margin-top: 0px; width: 800px;">
				<img src="<%=request.getContextPath()%>/images/h3_tit_04_01.gif">
			</h3>
			<ul style="width: auto; margin-right: 20px;">
				<li style="width: 30px; font-size: 12px; font-size: 1;"><img
					src="<%=request.getContextPath()%>/images/ico_home.gif" width="13"
					height="11" alt="home"
					style="width: 14px; margin-top: -5px; margin-right: 2px">&nbsp;&gt;</li>
				<li style="width: 55px; font-size: 12px; margin-right: -1px;">&nbsp;공지&nbsp;&gt;</li>
				<li
					style="width: 78px; margin-left: -10px; margin-top: auto; margin-bottom: 2px;"><strong
					style="font-size: 12px; margin-top: 10px;">&nbsp; 공지 사항</strong></li>
			</ul>
		</div>
		<br />
		<div style="margin-left: 5px">
			<img alt="" src="<%=request.getContextPath()%>/images/barred.png">
		</div>
		<div>
			<div style="margin-left: 50px;">
				<div style="display: flex; margin-top: 5px;">
					<div>
						<h3 style="font-size: 14px; font-weight: 600;">제목</h3>
					</div>
					<div style="margin-left: 40px;">
						<h6 style="font-size: 13px;">${dto.title}</h6>
					</div>
				</div>
				<div style="margin-left: -30px; margin-top: -15px;">
					<img alt="" src="/momstouch/images/bar2.png">
				</div>
				<div style="display: flex; margin-top: 5px;">
					<div>
						<h3 style="font-size: 14px; font-weight: 600;">작성일</h3>
					</div>
					<div>
						<h6 style="margin-left: 25px; font-size: 13px;">${dto.createDate }</h6>
					</div>
					<div>
						<div style="display: flex; margin-left: 400px;">
							<h3 style="font-size: 14px; font-weight: 600;">조회수</h3>
							<h6 style="margin-left: 20px; font-size: 13px;">${dto.readCount}</h6>
						</div>
					</div>
				</div>
				<div style="margin-left: -23px; margin-top: -11px;">
					<img src="/momstouch/images/bar4.png"> <br>
				</div>
				<br/>
				<div style="width: 700px;">
					<h6 style="font-size: 13px;">${dto.content}</h6>

				</div>
			</div>
		</div>

		<br />
	</div>
	<br>
</div>

<div style="background-color: #FBE4D2;">
	<br /> <br />
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