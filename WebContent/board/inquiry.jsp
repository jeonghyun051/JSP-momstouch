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
		<br>

		<div>
			<a href="/momstouch/board?cmd=info&page=0"><img
				src="/momstouch/images/aside1.png" style="width: 174px;"></a>
		</div>

		<div style="margin-top: 13px;">
			<a href="/momstouch/board?cmd=inquiry&page=0"><img alt="" src="/momstouch/images/click_info2.png"
				style="margin-top: -20px;"></a>
		</div>
	</div>
	<div
		style="background-color: white; margin-top: 24px; margin-left: 10px; border-radius: 15px; border-style: outset;">
		<br /> <br />
		<div
			style="border-bottom: 0px solid #e0e0e0; margin-left: 25px; margin-top: -15px; display: flex; width: 750px">
			<h3 style="margin-left: 0px; margin-top: 0px; width: 800px;">
				<img src="<%=request.getContextPath()%>/images/inquiry.gif">
			</h3>
			<ul style="width: auto; margin-right: 20px;">
				<li style="width: 30px; font-size: 12px; font-size: 1;"><img
					src="<%=request.getContextPath()%>/images/ico_home.gif" width="13"
					height="11" alt="home"
					style="width: 14px; margin-top: -5px; margin-right: 2px">&nbsp;&gt;</li>
				<li style="width: 55px; font-size: 12px; margin-right: -1px;">&nbsp;공지&nbsp;&gt;</li>
				<li
					style="width: 78px; margin-left: -10px; margin-top: auto; margin-bottom: 2px;"><strong
					style="font-size: 12px; margin-top: 10px;">&nbsp; 1:1문의</strong></li>
			</ul>
		</div>
		<div class="m-2">
			<form class="form-inline d-flex justify-content-end"
				action="/blog/board">
				<input type="hidden" name="cmd" value="search"> <input
					type="hidden" name="page" value="0"> <input type="text"
					name="keyword" class="form-control mr-sm-2" placeholder="Search"
					style="height: 30px; margin-right: 18px"> <input
					style="margin-right: 18px" type="image"
					src="/momstouch/images/btn_search.gif">
			</form>
		</div>
		<div style="margin-left: 5px">
			<img alt="" src="<%=request.getContextPath()%>/images/barred.png">
		</div>
		<div>
			<div
				style="background-color: white; display: flex; justify-content: space-around; margin-left: 7px; margin-right: 7px; font-size: 14px; /* font: 12px/1.5 &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;돋움&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;, Dotum, &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;굴림&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;, Gulim, Arial, NanumSquare, sans-serif; */ font: 12px/1.5&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 돋움 &amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; , Dotum , &amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 굴림 &amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; , Gulim , Arial, NanumSquare, sans-serif; font-weight: bold;">

				<div>번호</div>
				<div
					style="width: 400px; align-content: center; text-align: center;">제목</div>
				<div style="">작성일</div>
				<div>조회수</div>
			</div>
			<div style="margin-left: 20px; margin-top: -6px;">
				<img alt="" src="/momstouch/images/bar2.png">
			</div>

			<c:forEach var="boards" items="${InquiryboardList}">
				<div class="card col-md-12 m-2"
					style="width: 720px; margin-left: 30px !important; height: 30px; border: 0px">
					<div class="card-body"
						style="display: flex; /* justify-content: space-around; */ margin-left: -22px; margin-top: -17px;">
						<div style="width: 30px; margin-left: -9px; text-align: end;">
							<div style="font-size: 14px;">${boards.id}</div>
						</div>

						<div style="width: 530px; margin-left: 100px;">
							<div style="font-size: 14px;">
								<a
									href="<%=request.getContextPath()%>/board?cmd=detail&boardid=${boards.id}"
									style="color: black !important;">${boards.title}</a>
							</div>
						</div>

						<div style="text-align: center; width: 190px; margin-left: -40px;">
							<div style="font-size: 14px;">${boards.createDate}</div>
						</div>


						<div style="width: 70px; text-align: end; margin-right: -20px;">
							<div style="font-size: 14px;">0</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
		<div style="margin-left: 20px; margin-top: -6px;">
			<img alt="" src="/momstouch/images/bar2.png">
		</div>
		<br />
		<div class="paginate" style="margin-left: 150px;">
			<a href="#" class="page_first" onfocus="this.blur()"><img
				src="/momstouch/images/btn_first.gif" alt="처음"
				style="color: #555658 !important; background: #fff !important; border: 1px solid #dcdcdc !important;"></a>&nbsp;&nbsp;<a
				href="#" class="page_pre" onfocus="this.blur()"><img
				src="/momstouch/images/btn_pre.gif" alt="이전"
				style="color: #555658 !important; background: #fff !important; border: 1px solid #dcdcdc !important;"></a>&nbsp;&nbsp;<a
				href="<%=request.getContextPath()%>/board?cmd=info&page=0"
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">1</a>&nbsp;<a
				href="<%=request.getContextPath()%>/board?cmd=info&page=1"
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">2</a>&nbsp;<a
				href="?pg=3&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">3</a>&nbsp;<a
				href="?pg=4&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">4</a>&nbsp;<a
				href="?pg=5&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">5</a>&nbsp;<a
				href="?pg=6&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">6</a>&nbsp;<a
				href="?pg=7&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">7</a>&nbsp;<a
				href="?pg=8&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">8</a>&nbsp;<a
				href="?pg=9&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">9</a>&nbsp;<a
				href="?pg=10&amp;sf=&amp;ss="
				style="display: inline-block; width: 28px; height: 28px; margin: 0; vertical-align: middle; color: #fff; border: 1px solid #ed2542;
	/* background: #ed2542; */ font-weight: normal; line-height: 28px; color: #555658; background: #fff; text-align: center; border: 1px solid #dcdcdc; color: black !important; font-size: 14px;">10</a>&nbsp;&nbsp;<a
				href="?pg=2&amp;sf=&amp;ss=" class="page_next" onfocus="this.blur()"><img
				src="/momstouch/images/btn_next.gif" alt="다음"
				style="color: #555658 !important; background: #fff !important; border: 1px solid #dcdcdc !important;"></a>&nbsp;<a
				href="?pg=11&amp;sf=&amp;ss=" class="page_end" onfocus="this.blur()"><img
				src="/momstouch/images/btn_end.gif" alt="끝"
				style="color: #555658 !important; background: #fff !important; border: 1px solid #dcdcdc !important;"></a>
		</div>
		<%-- <ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link"
				href="/blog/board?cmd=list&page=${param.page+1}">Next</a></li>
		</ul> --%>
		<%-- <c:if test="${sessionScope.principal.id == 1}"> --%>
			<div style="text-align: end; margin-right: 22px;">
				<form action="/momstouch/board?cmd=save" method="post">
					<button style="font-size: 14px;" type="submit"
						class="btn btn-primary">문의하기</button>
				</form>
			</div>
		<%-- </c:if> --%>
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