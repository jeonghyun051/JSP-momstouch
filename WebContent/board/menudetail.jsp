<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="contop_Bg">

	<div
		style="width: 100%; display: flex; background-color: #FEF6EE; place-content: space-around;">

		<h2 style="display: block;">
			<br /> <img src="<%=request.getContextPath()%>/images/h2_tit_01.png"
				alt="맘스터치의 다양한 메뉴들을 소개합니다.">
		</h2>
		<p style="padding: 5px 35px 0px 0px; display: block;" class="bgimg_05">
			<img src="<%=request.getContextPath()%>/images/bg_menu.png"
				alt="paprika, onion 이미지">
		</p>
	</div>
</div>

<div
	style="background-color: #FBE4D2; width: 100%; height: 600px; display: flex;">
	<c:if test="${menuboard.menugroup eq 'chicken'}">
	<div style="margin-left: 200px; position: absoul;">
		<br>

		<div>
			<a href="/momstouch/board?cmd=menulist&menu=chicken"><img
				src="/momstouch/images/click_chickenmenu.png"></a>
		</div>

		<div style="margin-top: 8px;">
			<a href="/momstouch/board?cmd=menulist&menu=burger"><img
				alt="" src="/momstouch/images/burgermenu.png"
				style="margin-top: -10px;"></a>
		</div>

		<div style="margin-top: 9px;">
			<a href="/momstouch/board?cmd=menulist&menu=drink"><img
				alt="" src="/momstouch/images/drinkmenu.png"
				style="margin-top: -10px;"></a>
		</div>

	</div>
	</c:if>
	
	<c:if test="${menuboard.menugroup eq 'burger'}">
	<div style="margin-left: 200px; position: absoul;">
		<br>

		<div>
			<a href="/momstouch/board?cmd=menulist&menu=chicken"><img
				src="/momstouch/images/chickenmenu.png"></a>
		</div>
		<div style="margin-top: 8px;">
			<a href="/momstouch/board?cmd=menulist&menu=burger"><img
				alt="" src="/momstouch/images/click_burgermenu.png"
				style="margin-top: -10px;"></a>
		</div>

		<div style="margin-top: 9px;">
			<a href="/momstouch/board?cmd=menulist&menu=drink"><img
				alt="" src="/momstouch/images/drinkmenu.png"
				style="margin-top: -10px;"></a>
		</div>

	</div>
	</c:if>
	
	<c:if test="${menuboard.menugroup eq 'drink'}">
	<div style="margin-left: 200px; position: absoul;">
		<br>

		<div>
			<a href="/momstouch/board?cmd=menulist&menu=chicken"><img
				src="/momstouch/images/chickenmenu.png"></a>
		</div>

		<div style="margin-top: 8px;">
			<a href="/momstouch/board?cmd=menulist&menu=burger"><img
				alt="" src="/momstouch/images/burgermenu.png"
				style="margin-top: -10px;"></a>
		</div>
		<!-- <div style="margin-top: -5px;">
			<a><img src="/momstouch/images/bar.png" style="margin-top: -10px"></a>
		</div> -->
		<div style="margin-top: 9px;">
			<a href="/momstouch/board?cmd=menulist&menu=drink"><img
				alt="" src="/momstouch/images/click_drinkmenu.png"
				style="margin-top: -10px;"></a>
		</div>

	</div>
	</c:if>
	
	<div
		style="background-color: white; margin-top: 24px; margin-left: 10px; border-radius: 15px; border-style: outset;">
		<br> <br>
		<div
			style="border-bottom: 2px solid #e0e0e0; margin-left: 25px; margin-top: -15px; display: flex; width: 750px">
			<h3 style="margin-left: 0px; margin-top: 0px; width: 800px;">
				${menuboard.menuname}</h3>
			<ul style="width: auto; margin-right: 20px;">
				<li
					style="width: 30px; font-size: 12px; font-size: 1; margin-top: 14px"><img
					src="/momstouch/images/ico_home.gif" width="13" height="11"
					alt="home" style="width: 14px; margin-top: -5px; margin-right: 2px">&nbsp;&gt;</li>
				<li
					style="width: 55px; font-size: 12px; margin-right: -1px; margin-top: 14px">&nbsp;메뉴&nbsp;&gt;</li>

				<li style="width: 78px; margin-left: -10px;"><strong
					style="font-size: 12px; margin-top: 10px;">&nbsp;
						${menuboard.menugroup} 메뉴 </strong></li>

			</ul>
			<br> <br />
		</div>
		<br /> <br />
		<div style="display: flex">
			<div>
				<img src="${menuboard.menuimg}" style="width: 300px">
			</div>
			<br /> <br />
			<div>
				<div style="text-align: center; margin-top: 50px">
					<h5>${menuboard.menuname }&nbsp;영양성분</h5>
				</div>

				<div style="width: 0px;">
					<img src="/momstouch/images/barred.png" style="width: 450px;">
				</div>
				<div
					style="display: flex; justify-content: space-around; text-align: center;">
					<div style="width: 100px; margin-left: 20px">
						<h6 style="">메뉴</h6>
					</div>
					<div style="width: 100px;">
						<h6>칼로리(kal)</h6>
					</div>
					<div style="width: 100px;">
						<h6>나트륨(mg)</h6>
					</div>
					<div style="width: 100px;">
						<h6>단백질(g)</h6>
					</div>
				</div>

				<div
					style="display: flex; justify-content: space-around; text-align: center; font-size: 14px">
					<div style="width: 100px; margin-left: 20px">${menuboard.menuname }</div>
					<div style="width: 100px;">${menuboard.kcal }</div>
					<div style="width: 100px;">${menuboard.mg }</div>
					<div style="width: 100px;">${menuboard.g }</div>
				</div>
			</div>
		</div>
		<c:if test="${menuboard.menugroup eq 'chicken'}">
		<div style="text-align: end; margin-right: 50px; margin-top: -50px;">
			<a href="/momstouch/board?cmd=menulist&menu=chicken"><img
				src="/momstouch/images/btn_list.gif"></a>
		</div>
		</c:if>
		
		<c:if test="${menuboard.menugroup eq 'burger'}">
		<div style="text-align: end; margin-right: 50px; margin-top: -50px;">
			<a href="/momstouch/board?cmd=menulist&menu=burger"><img
				src="/momstouch/images/btn_list.gif"></a>
		</div>
		</c:if>
		
		<c:if test="${menuboard.menugroup eq 'drink'}">
		<div style="text-align: end; margin-right: 50px; margin-top: -50px;">
			<a href="/momstouch/board?cmd=menulist&menu=drink"><img
				src="/momstouch/images/btn_list.gif"></a>
		</div>
		</c:if>

	</div>
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