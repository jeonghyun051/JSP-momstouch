<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="joinForm_back">
	<br />
	<br/>
	<br/>
	<div class="container">
		<h3 class="login_h" style="color: #664938">회원가입</h3>
		<form action="/momstouch/user?cmd=join" method="post"
			onsubmit="return valid()">
			<div class="d-flex justify-content-end">
				<button type="button" class="btn btn-info" onClick="usernameCheck()">중복체크</button>
			</div>

			<div class="form-group">
				<input type="text" name="username" id="username"
					class="form-control" placeholder="Enter Username" required />
			</div>

			<div class="form-group">
				<input type="password" name="password" class="form-control"
					placeholder="Enter Password" required />
			</div>

			<div class="form-group">
				<input type="email" name="email" class="form-control"
					placeholder="Enter Email" required />
			</div>

			<div class="d-flex justify-content-end">
				<button type="button" class="btn btn-info" onClick="goPopup();">주소검색</button>
			</div>
			<div class="form-group">
				<input type="text" name="address" id="address" class="form-control"
					placeholder="Enter Address" required readonly />
			</div>
			<br />
			<button type="submit" class="btn btn-primary">회원가입완료</button>
		</form>
	</div>
</div>

<div style="background-color: #FEFBE7;">
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
<script>
	var isChecking = false;
	function valid() {
		if (isChecking == false) {
			alert("아이디 중복체크를 해주세요");
		}
		return isChecking;

	}
	function usernameCheck() {
		var username = $("#username").val();

		$.ajax({
			type: "POST",
			url: "/momstouch/user?cmd=usernameCheck",
			data: username,
			contentType: "text/plain; charset=utf-8",
			dataType: "text"
		}).done(function(data) {
			if (data === 'ok') {
				isChecking = false;
				alert("유저네임이 중복되었습니다.");
			} else {
				isChecking = true;
				alert("해당 유저네임을 사용할 수 있습니다.")
			}
		});
	}
	function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("/momstouch/user/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
	}
	function jusoCallBack(roadFullAddr) {
		var addressEl = document.querySelector("#address");
		addressEl.value = roadFullAddr;
	}
</script>
</body>
</html>

