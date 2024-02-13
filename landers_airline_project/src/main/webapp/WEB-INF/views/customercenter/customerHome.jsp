<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no, maximum-scale=1, user-scalable=0">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="format-detection" content="telephone=no">
	<title>제주항공</title>
	<link rel="icon" type="image/png" href="https://static.jejuair.net/hpgg/resources/images/icon/favicon.ico" />
	
	
	
	
    
	
    
    
	
	
		<meta property="og:type" content="website" />
		<meta property="og:title" content="제주항공" />
		<meta property="og:description" content="대한민국 No.1 LCC 제주항공입니다." />
		<meta property="og:image" content="http://static.jejuair.net/cms/images/file_upload/20230206103747230.png" />
	
	
	
	
	
	
		
	
	

	
	
		<meta name="facebook-domain-verification" content="gct2nox4ra4w1635xx16ojio82tg4r" />
	
	
		
	
	











<link rel="stylesheet" href="https://static.jejuair.net/hpgg/resources/css/global.css">
<link rel="stylesheet" href="https://static.jejuair.net/hpgg/resources/css/component.css">
<link rel="stylesheet" href="https://static.jejuair.net/hpgg/resources/css/page.css">
<link rel="stylesheet" href="https://static.jejuair.net/hpgg/resources/css/responsive.css">
<link rel="stylesheet" href="https://static.jejuair.net/hpgg/resources/css/lang.css">




<!-- 다국어 관련 스크립트 변수 -->
<script type="text/javascript">
var I18N = {
	language : "ko",
	country : "KR",
	countryAndLanguage : [{"languages":[{"cntryCd":"KR","langNm":"한국어","cntryNm":"대한민국","langCd":"ko"}],"cntryCd":"KR","cntryNm":"대한민국"},{"languages":[{"cntryCd":"JP","langNm":"日本語","cntryNm":"日本","langCd":"ja"}],"cntryCd":"JP","cntryNm":"日本"},{"languages":[{"cntryCd":"CN","langNm":"简体中文","cntryNm":"中国","langCd":"zh-CN"},{"cntryCd":"CN","langNm":"繁體中文(香港)","cntryNm":"香港","langCd":"zh-HK"},{"cntryCd":"CN","langNm":"繁體中文","cntryNm":"中国","langCd":"zh-TW"}],"cntryCd":"CN","cntryNm":"中国"},{"languages":[{"cntryCd":"US","langNm":"ENGLISH","cntryNm":"US","langCd":"en"}],"cntryCd":"US","cntryNm":"US"},{"languages":[{"cntryCd":"TH","langNm":"ENGLISH","cntryNm":"THAILAND","langCd":"en"}],"cntryCd":"TH","cntryNm":"THAILAND"},{"languages":[{"cntryCd":"VN","langNm":"ENGLISH","cntryNm":"VIETNAM","langCd":"en"}],"cntryCd":"VN","cntryNm":"VIETNAM"},{"languages":[{"cntryCd":"PH","langNm":"ENGLISH","cntryNm":"PHILLIPINES","langCd":"en"}],"cntryCd":"PH","cntryNm":"PHILLIPINES"},{"languages":[{"cntryCd":"MY","langNm":"ENGLISH","cntryNm":"MALAYSIA","langCd":"en"}],"cntryCd":"MY","cntryNm":"MALAYSIA"},{"languages":[{"cntryCd":"LA","langNm":"ENGLISH","cntryNm":"LAOS","langCd":"en"}],"cntryCd":"LA","cntryNm":"LAOS"},{"languages":[{"cntryCd":"RU","langNm":"ENGLISH","cntryNm":"RUSSIA","langCd":"en"}],"cntryCd":"RU","cntryNm":"RUSSIA"},{"languages":[{"cntryCd":"SG","langNm":"ENGLISH","cntryNm":"SINGAPORE","langCd":"en"}],"cntryCd":"SG","cntryNm":"SINGAPORE"},{"languages":[{"cntryCd":"MN","langNm":"ENGLISH","cntryNm":"MONGOLIA","langCd":"en"}],"cntryCd":"MN","cntryNm":"MONGOLIA"}]
}
var APP_DATA = {
	loginSuccessFirstChecker : '', // 값의 유무로만 판단.
	// deviceOs : "",
	// deviceType : ""
	deviceOs : "none",
	deviceType : "PC",
	shortUrl : ""
}
var USER_INFO = {
	get : function() {
		var data =""; 
		data = decodeURIComponent(escape(atob( data )));
		return data || "{}";
	}
}
var PROP = {
	assetsUrl : "https://static.jejuair.net/hpgg/resources",
	cmsUrl: "https://static.jejuair.net/cms/images",
}
var USER_DEVICE = {
	getName : function() {
		return "PC";
	},
	isApp : function() {
		return false;
	},
	isMobile : function() {
		return false;
	},
	isWeb : function() {
		return ;
	}
}
var APPCALL = {
	setMenu : function() {

		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.goMenu.postMessage({});
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goMenu();
		} else {
			console.log("PC에서 호출작동됨 :: 메뉴를 개방하라");
		}
	},
	back : function() {
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.goBack.postMessage({});
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goBack();
		} else {
			window.history.back();
		}
	},
	close : function() {
		if(APP_DATA.deviceOs == "ios") {
			if(window.webkit.messageHandlers.goClose) {
				window.webkit.messageHandlers.goClose.postMessage({});
			}			
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goClose();
		} else {
			console.log("PC는 닫기가 존재하지 않습니다.");
		}
	},
	afterLogin : function(userInfo) { // 로그인 시, APP은 1번 호출한다.
		if(!userInfo) {
			userInfo = USER_INFO.get();
		}
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.userInfo.postMessage(userInfo);
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.userInfo(userInfo);
		} else {
			console.log("호출완료");
		}
	},
	callPassport : function() { // 로그인 시, APP은 1번 호출한다.
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.goOCRPassport.postMessage({});
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goOCRPassport();
		} else {
			console.log("호출완료");
		}
	},
	callPastBoardingPass : function() { // 로그인 시, APP은 1번 호출한다.
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.goPastBoardingPass.postMessage({})
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goPastBoardingPass()
		} else {
			console.log("호출완료");
		}
	},
	callBoardingPass : function(jsonString) { // 로그인 시, APP은 1번 호출한다.
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.mobileTicket.postMessage(jsonString)
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.mobileTicket(jsonString)
		} else {
			console.log("호출완료");
		}
	},
	goMain: function() { //메인화면 이동
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.callMain.postMessage({});
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goMain();
		} else {
			location.href="/"+I18N.language+"/main/base/index.do";
		}
	},
	goLogout: function() {// 로그아웃시 네티이브 호출
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.goLogout.postMessage({});
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goLogout();
		}else {
			console.log('logout');
		}
	},
	loginState: function() { //로그인 상태 체크
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.onLoginState.postMessage({})
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.onLoginState();
		}
	},

	goMyCoupon: function() { //쿠폰 이동
		if(APP_DATA.deviceOs == "ios") {
			window.webkit.messageHandlers.goMyCoupon.postMessage({});
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.goMyCoupon();
		}else {
			URL_LINK.getI18Url('/member/mypage/myCoupon.do');
		}
	},

	goMarket: function() {
		if(APP_DATA.deviceOs !== "ios" && APP_DATA.deviceOs !== "aos") {
			var infos = getMobileDevice(navigator.userAgent);
			if(infos.isiOS) {
				window.open("https://itunes.apple.com/ko/app/jeju-air/id373053637?l=ko&mt=8", "_blank");
			}else if(infos.isAndroid) {
				window.open("https://play.google.com/store/apps/details?id=com.parksmt.jejuair.android16", "_blank");
			}
		}
	},
	
	hybrid: function(GAData) {
		if(APP_DATA.deviceOs == "ios") {			
			window.webkit.messageHandlers.GAHybrid.postMessage(JSON.stringify(GAData))
		} else if(APP_DATA.deviceOs == "aos") {
			window.JejuAir.GAHybrid(JSON.stringify(GAData))
		}
	}
}
var URL_LINK = {
	getI18Url : function(path) {
		/*
		if(path.indexOf('/corpService/') == 0 ) {
			location.href = path;
			return;
		} else if(path.indexOf('/member/auth/') == 0 ) {
			location.href = path;
			return;
		} else
		*/
		if(path.indexOf('/bonusProgram/') == 0 ) {
			location.href = path;
			return;
		} else if(path.indexOf('#') == 0 ) {
			location.href = path;
			return;
		} else if(path.indexOf('http') == 0 ) {
			window.open(path, "_blank");
			return;
		}  else if(path.indexOf('/myPage/myBoardingList.do') == 0) {
			alert("준비중입니다.");
			return;
		}
		if(path.indexOf('viewCheckin.do') !== -1) {
			URL_LINK.getHwUrl(path);
		}else{
			location.href = "/"+I18N.language+path;
		}
	},
	getHwUrl : function(path, params) { //homepage <-> webcheckin
		var vHtml = '';
		if(params) {
			Object.keys(params).map(function(key) {
				vHtml += '<input type="hidden" name="'+key+'" value="'+params[key]+'">';
			});
		}
		$("body").append("<form id='hybdComForm'><input type='hidden' name='targetUrl' value='" + "/"+I18N.language+path + "'/>"+vHtml+"</form>");
    	$("#hybdComForm").prop("action", "/"+I18N.language+"/common/connect/index.do").prop("method", "POST").prop("target", "_self").submit();
	}
}

if(APP_DATA.loginSuccessFirstChecker !="") {
	APPCALL.afterLogin();
}

if(location.href.indexOf('flag=logout')!==-1) {
	APPCALL.goLogout();
}

//웹 로그인 상태 확인 콜백
//true : 로그인 상태
//false : 비로그인 상태 
function callbackLoginState(result){
   var isLogin = "false";//web 로그인여부
   if(!isLogin && result) { //web비로그인 native로그인일경우
	 APPCALL.goLogout(); //native로그아웃
   }
}

if(USER_DEVICE.isApp) {//앱일경우 native로그인 상태체크
	APPCALL.loginState();
}

// 웹뷰 이탈 시 좌석 해제 홈페이지에 없어 에러 발생해 추가함
function callbackFocusOut() {}

//스크립 오류 발생으로 인해 빈 메소드 추가
function _AutofillCallbackHandler() {}

//안드로이드 modal일경우 back버튼 클릭시 뒤로가기가 아닌 modal닫기
function goBackBtn() {

	var isOpen1 = false;
	var isOpen2 = false;

	if($('html').hasClass('open-modal')){
		$('div.jquery-modal').find('a.modal__close').trigger('click');
		for(var i=0;i < $('div.modal-wrapper').length;i++){
			if($('div.modal-wrapper:eq('+i+')').hasClass('on')){
				$('div.modal-wrapper:eq('+i+')').find('a.modal__close').trigger('click');

				if($('html').hasClass('open-modal')){
					$('html').removeClass('open-modal');
				}
				break;
			}
		};
		
		return false;
	}

	if($('body > div').hasClass('dim')) {
		//bottomSheet
		for(var i=0;i < $('div.bottom-sheet').length;i++){
			if($('div.bottom-sheet:eq('+i+')').css('display')==='block'){
				$('div.bottom-sheet:eq('+i+')').find('button[data-element="bottomSheet__button-close"]').trigger('click');
				break;
			}
		};
		return false;
	}
	
	if($('div.flight-layer').length > 0) {
		for(var i=0;i < $('div.flight-layer').length;i++){
			if($('div.flight-layer:eq('+i+')').css('display')==='block'){
				$('div.flight-layer:eq('+i+')').find('a.layer-close').trigger('click');
				isOpen1 = true;
				break;
			}
		};
	}
	
	if($('div.date-layer').length > 0) {
		for(var i=0;i < $('div.date-layer').length;i++){
			if($('div.date-layer:eq('+i+')').css('display')==='block'){
				$('div.date-layer:eq('+i+')').find('a.layer-close').trigger('click');
				isOpen2 = true;
				break;
			}
		};
	}

	if(!$('html').hasClass('open-modal') && !$('body > div').hasClass('dim') && !isOpen1 && !isOpen2) {
		try {
			window.JejuAir.callBackBtn('Y');
		}catch(e){}
	}
	
}

// GA4 Tagging: ep_visit_login_yn 매개변수 값 매핑
function getVisitLoginYn() {
	return USER_INFO.get() !== '{}' ? 'Y' : 'N';
}

// GA4 Tagging: ep_visit_channel_option 매개변수 값 매핑
function getVisitChannelOption() {
	let visitChannel = USER_DEVICE.getName();
	if (visitChannel === 'PC') {
		visitChannel = 'PC-WEB';
	} else if (visitChannel === 'WEB') {
		visitChannel = 'Mobile-WEB';
	} else {
		visitChannel = 'Mobile-APP';
	}
	
	return visitChannel;
}

</script>
<script>
	let logUrl = 'https://jjlog.jejuair.net';
	let isTicLog = 'Y';
</script>
	
	
	
   			
   	
	
	
		
   	
	
    <script>
	var langCdtTag = 'ko';	
	</script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
	<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-49935507-8"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'UA-49935507-8');
	</script>  종료 N006-->
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-49935507-9"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-49935507-9');
	</script>
	<!-- N023  -->
	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">kakaoPixel('4430357879563963209').pageView();</script>
	<!-- <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script> -->
	<!-- N004  -->
	<script type="text/javascript">kakaoPixel('6788472491368532022').pageView();</script>
	<!-- N042 -->
	<script type="text/javascript">kakaoPixel('7245531358035395526').pageView();</script>
	
	
	<!-- Global site tag (gtag.js) - Google Ads: 770453349 N026-->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-770453349"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	 
	  gtag('config', 'AW-770453349');
	</script>
	
	
	<!-- N001/N002 -->	
	
	
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script> 
	<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
		wcs_add["wa"] = "s_29f8dbdc0496";
		if (!_nasa) var _nasa={};
		if(window.wcs){
		wcs.inflow();
		wcs_do(_nasa);
	}
	</script> 
	
	
	
	<!-- END N001/N002 -->
	<!-- N033 -->	
	
	<!-- END N033 -->	
	
	<!-- N047 -->	
	
	<!-- END N047 -->
	
	<!-- N046 -->	
	
		<!-- Meta Pixel Code -->
		<script>
		!function(f,b,e,v,n,t,s)
		{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};
		if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
		n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t,s)}(window, document,'script',
		'https://connect.facebook.net/en_US/fbevents.js');
		fbq('init', '286156185379447');
		fbq('track', 'PageView');
		</script>
		<noscript><img height="1" width="1" style="display:none"
		src="https://www.facebook.com/tr?id=242382328226262&ev=PageView&noscript=1"
		/></noscript>
		<!-- End Meta Pixel Code -->
	
	<!-- END N046 -->	
	
	
	
	
	
	
		
	
	<!-- N041 -->
	
	<!-- END N041 -->
	

                              <script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="AYF4Y-8J9XB-2BDC5-23EM3-Q7Z28",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"AYF4Y-8J9XB-2BDC5-23EM3-Q7Z28",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e=""=="true"?1:0,t="",n="hlvxojyxedysszokzqza-f-5b918266d-clientnsv4-s.akamaihd.net",i="false"=="true"?2:1,_={"ak.v":"36","ak.cp":"881439","ak.ai":parseInt("562947",10),"ak.ol":"0","ak.cr":11,"ak.ipv":4,"ak.proto":"h2","ak.rid":"1f402eaf","ak.r":46812,"ak.a2":e,"ak.m":"b","ak.n":"essl","ak.bpcip":"58.235.119.0","ak.cport":10343,"ak.gh":"23.32.241.37","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1707789362","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==rar31hkdk5PhVNIM+O51tGm2jluAeLzj738Yw0D3o3jlZM+qbqC/rttAgjUHI0+/TEbJWc4aaWOsRJ13AKevsr3zHn0zcBYrdUWtoOF79D/U6RroaCcAfWBw7T+XMqz01EgOqEq9enu1DDZLo1CCam2lJ/ah5oEzuOsb1aqNB1dBYXQHqQstCZ2CUb71ORy00U226ME/rByEY8Lw1j/1M+g8HK6oG6BG++jr1lFBx5j/HAdyqL8L6UwBPFLBqu77a88BxzVHAxyXKfNPJIeb1Hy06UmLYi3M1r7z9iLSNbe5hDLCfdReNCBaasMntV8AHZpMN2TYDelNc5LK8gmTZIuks3UG1Ioe7gZutHe/wMOH2BWgSygsCdeVICrBfp5OQdnysEa1uDR8uB+Be+s97dbVDWdT6SjRq2UPDd8cCM4=","ak.pv":"139","ak.dpoabenc":"","ak.tf":i};if(""!==t)_["ak.ruds"]=t;var o={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))_["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(_)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:_,akDNSPreFetchDomain:n,init:function(){if(!o.i){var a=BOOMR.subscribe;a("before_beacon",o.av,null,null),a("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script></head>
<body id="subLayoutBody">
	
	
	
	
	
	
	
		
	

	
	









 

 
 
 

 
 
 

 



























 

<!-- 개선 #1271286440
<div id="skipNav" class="skip-nav">
	<a href="#content" class="skip-nav__item">본문 바로가기</a>
</div>
-->
<!-- 상단 띠배너 공지사항은 메인페이지만 표시합니다. -->

	


<!-- 앱설치알림 -->




	


<!-- 남은시간 연장 및 공지바 노출-->
<div class="top-custom-banner ticketing_top_bar"><!--활성화시 .on 추가-->
  <div class="top-custom-banner__inner">
    <dl class="time_bar">
        <dt>이용 가능시간 : </dt>
        <dd><strong></strong></dd>
    </dl>
    <div class="link-wrap--arrow">
        <button type="button"  class="link-wrap__text" onclick="javascript:sendExtTripsell();"><span>연장하기</span></button>
    </div>
    <button type="button" class="top-custom-banner__close" aria-label="닫기"></button>
  </div>
</div>

<!-- //남은시간 연장 및 공지바 노출 -->
<!-- header -->

	
	
		<div id="header" class="header ">
	

	
	
	<!-- mobile -->
	<header class="header__inner mobile-only">
		
			
			
				
					
					
					
						<button class="header__button" onclick="APPCALL.back()">
							<span class="hidden">이전으로</span>
						</button>
					
					
					<h2 class="header__page-name"></h2>
				
				
				
			
		
		
		<div class="header__button-wrap subType"  data-element="gnbToggle"  >
			<!-- 예매전 노출
			<button type="button" class="header__button-ticket">
				<span class="hidden">티켓보기</span>
			</button>
			// 예매전 노출 -->
			
				<button type="button" class="gnb__button" >
					
						
					
					
					<img src="https://static.jejuair.net/hpgg/resources/images/icon/icon-hamburger-header.png" alt="전체메뉴 열기" class="img_sticky" loading="lazy">
				</button>
			
 
			<!--2022-10-17 이벤트페이지 요청시, App에서 뒤로가기 처리-->
			
			  

			
				<!--번들 선택, 사전 수하물 추가, 사전 좌석선택, 사전 기내식 주문 -> 자세히 보기 햄버거 메뉴 보여주기-->
				<!--
				
					
					
						
						<button type="button" onclick="APPCALL.close();" class="modal__close"><span class="blind">닫기</span></button>
					
				
				-->
				
				
		</div>
		<!-- 스크롤시 스티키 상단 -->

		<!-- 전체메뉴 -->
		<div class="gnb" id="gnb">
			<div class="gnb__header">
				<div class="gnb__header-top" data-absolute-sticky>
					<a href="javascript:;" class="button-home" title="홈으로 이동" data-action="menu" data-menu-name="main">
						<img loading="lazy" src="https://static.jejuair.net/hpgg/resources/images/upload/icon_bottombar_home_on_56x2.png" alt="홈">
					</a>
					<a class="select-wrap select-wrap--inline lang-type" id="btnCountrySelector" data-modal-type="full">
						
						
							
								
									한국어
									
								
							
						
							
								
							
						
							
								
							
								
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
					</a>
					<div class="additional">
						<!-- D : '웹'일경우 APP다운로드 버튼 -->
						<button type="button" class="button button--small" 						
						ep_event_area="상단" ep_event_button="앱 다운로드" 
						ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
						ep_visit_login_yn='N'						
						onclick="sendGAAttrEvent(event);APPCALL.goMarket()" ><span class="button__text button__icon">APP</span></button>
						<a href="javascript:;" class="button-search" title="통합검색이동">
							<img loading="lazy" src="https://static.jejuair.net/hpgg/resources/images/icon/icon-header-search.png" alt="통합 검색 이동">
						</a>
						<a href="javascript:;" class="gnb-close" aria-label="닫기">
							<img loading="lazy" src="https://static.jejuair.net/hpgg/resources/images/icon/icon-header-gnb-close.png" alt="전체메뉴 닫기" class="close">
						</a>
					</div>
				</div>
				<div class="gnb__header-bot">
					
					<div class="before">
						<div class="title">
							로그인 하시고<br>더 풍부한 혜택을 누리세요!
						</div>
						<!-- fixed 영역 -->
						<div class="sticky-wrap">
							<div class="button-wrap button-flex sticky__inner gnb-sticky1">
								<button type="button" class="button button--secondary ml0" data-action="menu" data-menu-name="join"><span class="button__text">회원가입</span></button>
								<button type="button" class="button button--secondary button--active" data-action="menu" data-menu-name="login"><span class="button__text">로그인</span></button>
								<a href="javascript:;" class="gnb-close" aria-label="닫기">
								   <img loading="lazy" src="https://static.jejuair.net/hpgg/resources/images/icon/icon-header-gnb-close.png" alt="전체메뉴 닫기" class="close">
								</a>
							</div>
						</div>
						<!-- //fixed 영역 -->
						<div class="title mb30">
							<div class="title__section title__section--additional">제주항공에서 예약하지 않으셨다면?
								<div class="additional">
									<div class="link-wrap">
										<a href="javascript:;" class="link-wrap__underline" data-action="menu" data-menu-name="bookingSearch"><span>예약조회</span></a>
									</div>
								</div>
							</div>
						</div>
						
						<div class="icon-link mt0">
							
							
								
									
										<a href="/ko/ibe/mypage/viewReservationList.do" class="icon-link__item" data-action="menu" data-menu-name="reservationList"> 
									
									
									
									
														
								<img src="https://static.jejuair.net/cms/images/banner_image/20211117132250301.png" alt="" loading="lazy"/>
								<span class="icon-link__text" style="color:">나의 예약현황
								</a>
							
								
									
									
										<a href="/ko/prepare/flight/viewScheduleInfo.do" class="icon-link__item" data-action="menu" data-menu-name="scheduleInfo">
									
									
									
														
								<img src="https://static.jejuair.net/cms/images/banner_image/20211005132323185.png" alt="" loading="lazy"/>
								<span class="icon-link__text" style="color:">스케줄/출도착 조회
								</a>
							
								
									
									
									
										<a href="/ko/customerService/csCenter/faqList.do" class="icon-link__item" data-action="menu" data-menu-name="cs">
									
									
														
								<img src="https://static.jejuair.net/cms/images/banner_image/20211005132333367.png" alt="" loading="lazy"/>
								<span class="icon-link__text" style="color:">고객센터
								</a>
							
						</div>
												
					</div>
					
					

					<!-- //로그인 후 -->
				</div>
			</div>
			<hr class="section-spacer">
			<div class="gnb-wrap">
				
				
				
				
					
						<div class="gnb__box">
							<div class="gnb__title">마이페이지</div>
							<div class="gnb__list">
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="마이페이지 메인" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/main.do')">마이페이지 메인</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="예약 조회" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/mypage/viewOnOffReservationList.do')">예약 조회</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="나의 예약 현황" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/mypage/viewReservationList.do')">나의 예약 현황</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="나의 탑승 내역" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/myFlightList.do')">나의 탑승 내역</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="회원정보 수정" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/memberInfoModify.do')">회원정보 수정</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="나의 이벤트" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/viewMyEvent.do')">나의 이벤트</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">여행준비 안내</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="항공권 예매" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/booking/Availability.do')">항공권 예매</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="국내선 운임" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/fare/domesticBenefit.do')">국내선 운임</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="국제선 운임" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/fare/internationalBenefit.do')">국제선 운임</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="스케줄 조회" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/flight/viewScheduleInfo.do?index=1')">스케줄 조회</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="출도착 조회" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/flight/viewScheduleInfo.do?index=2')">출도착 조회</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="민항공후급증 예약" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/booking/viewMilitaryInput.do')">민항공후급증 예약</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="결제혜택" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/fare/payBenefit.do')">결제혜택</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">회원 혜택 안내</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="신규회원 혜택" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/memberBenefit.do?param=newMember ')">신규회원 혜택</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="프로모션 코드" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/memberBenefit.do?param=promotion')">프로모션 코드</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="리프레시 포인트" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/refreshPoint/main.do')">리프레시 포인트</a>
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="포인트 구매" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/refreshPoint/pointBuy.do')">포인트 구매</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="포인트 조회" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/refreshPoint/pointSearch.do')">포인트 조회</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="기프티켓" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/gifticket.do')">기프티켓</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="쿠폰 등록" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/regCoupon.do')">쿠폰 등록</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">부가서비스 안내</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="부가서비스 소개" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/main.do')">부가서비스 소개</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="사전 수하물" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/preorderedBaggage.do')">사전 수하물</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="좌석 구매" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/preorderedSeat.do')">좌석 구매</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="사전 기내식" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/preorderedMeal.do')">사전 기내식</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="여행자 보험" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/insurance.do')">여행자 보험</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="좌석+수하물 세트" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/bundleGuide.do')">좌석+수하물 세트</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="나중에 결제" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/afterPayGuide.do')">나중에 결제</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="자전거 캐링백 서비스" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/carringBagGuide.do')">자전거 캐링백 서비스</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="제주패스(국내 렌트카)" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/jejupassguide.do')">제주패스(국내 렌트카)</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="무브(데이투어)" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/movvguide.do')">무브(데이투어)</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">프리미엄 혜택 안내</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="비즈니스 라이트" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/premium/businesslite/main.do')">비즈니스 라이트</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="스포츠 멤버십" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/premium/sportsMembership/main.do')">스포츠 멤버십</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="골프 멤버십 " 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/premium/golfMembership/main.do')">골프 멤버십 </a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="제휴 서비스" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/allianceService.do')">제휴 서비스</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="온라인몰 제이샵" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('https://www.jejuairshop.com?jjout=Y')">온라인몰 제이샵</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">탑승 수속 안내</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="모바일 탑승권" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/checkin/viewCheckin.do')">모바일 탑승권</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="수하물" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/boardingProcessGuide/baggageGuide.do')">수하물</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="빠른 수속" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/fastProcedure/guide.do')">빠른 수속</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="공항혼잡도 안내" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/airport/airportStatus.do')">공항혼잡도 안내</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="공항 정보" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/airport/info.do')">공항 정보</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="도움이 필요한 고객" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/help/main.do')">도움이 필요한 고객</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">기내 서비스 안내</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="에어카페" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/service/airCafe.do')">에어카페</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="기내 FUN 서비스" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/service/funService.do')">기내 FUN 서비스</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="출입국 신고서 작성방법" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/immigration/etcFormGuide.do')">출입국 신고서 작성방법</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="국제선 기내면세품" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/service/dutyFree.do')">국제선 기내면세품</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">이벤트</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="이벤트" ep_event_button="진행중인 이벤트" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/event/event.do')">진행중인 이벤트</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="이벤트" ep_event_button="지난 이벤트" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/event/pastEvent.do')">지난 이벤트</a>
									
								
									
								
									
								
									
								
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">고객센터</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="고객센터" ep_event_button="고객센터" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/customerService/csCenter/faqList.do')">고객센터</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="고객센터" ep_event_button="기내 유실물 센터" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/customerService/cabinLost/cabinLost.do')">기내 유실물 센터</a>
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="고객센터" ep_event_button="공지사항" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/customerServiceCenter/notice.do')">공지사항</a>
									
								
									
								
									
								
							</div>
						</div>
					
				
					
				
					
				
					
				
					
						<div class="gnb__box">
							<div class="gnb__title">객실승무원 체험교육</div>
							<div class="gnb__list">
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
								
									
										<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="객실승무원 체험교육" ep_event_button="에듀윙 안내" 
										ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
										ep_visit_login_yn='N' 										
										onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinEducation/service/eduWing.do')">에듀윙 안내</a>
									
								
							</div>
						</div>
					
				
					
				
				
				<div class="gnb__footer">
					
				</div>
				
			</div>
		</div>
		<!-- //전체메뉴 -->
	</header>
	<!-- //mobile -->

	<!-- pc용 공통 헤더 -->
	<div class="header__util util pc-only">
		<div class="util__inner">
			<div class="util__benefit">
	         <!-- 기업우대 여행자우대 사이트 한국어만 표출   , 기업우대서비스 오픈이 11월 8일,  오픈 시기  -->
			 
     			<a href="javascript:;" class="util__link company" data-action="menu" data-menu-name="company">기업 우대</a>
                <div class="util__link-wrap" data-element="toggle" data-options='{"mode": "slide", "speed": 0, "clickToClose": true}'>
		          <button type="button" class="util__link arrow__link"  data-element="toggle__anchor">여행사 우대</button>
		          <div class="util__link-panel" data-element="toggle__panel">
		            <a href="javascript:;" class="item" data-action="menu" data-menu-name="travelAgencyD">국내선</a>
		            <a href="javascript:;" class="item" data-action="menu" data-menu-name="travelAgencyF">국제선</a>
		          </div>
		        </div>	
              
              
              
            
             
              
             
              
             
              
             
              
             
              <a href="https://cargo.jejuair.net" target="_black" class="util__link2" data-action="menu" data-menu-name="Cargo">Cargo</a>		        			
			</div>

			<div class="util__link-list" data-custom-toggle="wrap">
				
				
				
					<a href="javascript:;" class="util__link" data-action="menu" data-menu-name="login">로그인</a>
					<a href="javascript:;" class="util__link" data-action="menu" data-menu-name="join">회원가입</a>
				
				<!-- // 로그인 전 노출 -->

				
					
						
						
						<a href="javascript:;" onclick="URL_LINK.getI18Url('/ibe/mypage/viewReservationList.do')" class="util__link">나의 예약 현황</a>
						
					
						
						
						<a href="javascript:;" onclick="URL_LINK.getI18Url('/customerService/csCenter/faqList.do')" class="util__link">고객센터</a>
						
					
						
						
						<a href="javascript:;" onclick="URL_LINK.getI18Url('/customerServiceCenter/notice.do')" class="util__link">공지사항</a>
						
					
				
				<button type="button" class="util__country" data-custom-toggle="button">
					<span class="text">
						
						
							
								
									한국어
									
								
							
						
							
								
							
						
							
								
							
								
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
							
								
							
						
					</span>
				</button>
				<div class="header-country__layer" data-custom-toggle="panel">
					<div class="country__title">
						지역 및 언어 설정
					</div>
					<div class="country__input">
						<div class="select-wrap select-wrap--line">
							
							<select title="국가 선택" class="select-wrap__select" name="countryChoice" id="countryChoice">
								
									
									
										
										
									
									<option value="KR" selected>대한민국</option>
								
									
									
									<option value="JP" >日本</option>
								
									
									
									<option value="CN" >中国</option>
								
									
									
									<option value="US" >US</option>
								
									
									
									<option value="TH" >THAILAND</option>
								
									
									
									<option value="VN" >VIETNAM</option>
								
									
									
									<option value="PH" >PHILLIPINES</option>
								
									
									
									<option value="MY" >MALAYSIA</option>
								
									
									
									<option value="LA" >LAOS</option>
								
									
									
									<option value="RU" >RUSSIA</option>
								
									
									
									<option value="SG" >SINGAPORE</option>
								
									
									
									<option value="MN" >MONGOLIA</option>
								
							</select>
						</div>
						<div class="select-wrap select-wrap--line">
							<select class="select-wrap__select" title="언어 선택" name="languageChoice" id="languageChoice">
								
									
									
										
									
									<option value="ko" selected>한국어</option>
								
							</select>
						</div>
						<button class="country__button" id="countryAndLanguageChoiceBtn" data-flag="base">확인</button>
					</div>
					<button class="button-close" data-custom-toggle="close">
						<span class="hidden">닫기</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<header class="header__inner  pc-only">
		<div class="sticky-header" data-sticky>
			<div class="header__box">
				<!-- header__box 추가 -->
				<h1 class="header__logo">
					
					<a href="javascript:;" data-action="menu" data-menu-name="main">
					
						
						<img src="https://static.jejuair.net/cms/images/banner_image/20211014191229348.png" alt="jejuairlogo" loading="lazy"/>
					
					</a>
				</h1>
				
					
						<h2 class="header__page-name"></h2>
					
				
				
					
						
						
							
							
								<div class="header__link-list">
									
									
										
											
											
												<a href="javascript:void(0);" class="header__link" ep_event_area="상단" ep_event_button="항공권 예매" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_gnb' 
												ep_visit_login_yn='N'	
												onClick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/booking/Availability.do');">항공권 예매</a>
											
										
									
									
									
										
											
											
												<a href="javascript:void(0);" class="header__link" ep_event_area="상단" ep_event_button="마이페이지" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_gnb' 
												ep_visit_login_yn='N'	
												onClick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/main.do');">마이페이지</a>
											
										
									
									
									
										
											
											
												<a href="javascript:void(0);" class="header__link" ep_event_area="상단" ep_event_button="부가서비스 안내" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_gnb' 
												ep_visit_login_yn='N'	
												onClick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/main.do');">부가서비스 안내</a>
											
										
									
									
									
										
											
											
												<a href="javascript:void(0);" class="header__link" ep_event_area="상단" ep_event_button="모바일 탑승권" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_gnb' 
												ep_visit_login_yn='N'	
												onClick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/checkin/viewCheckin.do');">모바일 탑승권</a>
											
										
									
									
									
										
											
											
												<a href="javascript:void(0);" class="header__link" ep_event_area="상단" ep_event_button="이벤트" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_gnb' 
												ep_visit_login_yn='N'	
												onClick="sendGAAttrEvent(event);URL_LINK.getI18Url('/event/event.do');">이벤트</a>
											
										
									
									
								</div>
							
						
					
				

				<div class="header__search-wrap header-search subType" data-custom-toggle="wrap"  >
					<!-- <button type="button" class="header__button-ticket">
					<span class="hidden">티켓보기</span>
					</button> -->
					<button type="button" class="header__button-search" data-custom-toggle="button">
						<img loading="lazy" src="https://static.jejuair.net/hpgg/resources/images/icon/icon-header-search.png" alt="검색">
					</button>
					<div class="header-search__layer" data-custom-toggle="panel">
						<div class="header-search__form" data-element="form">
							<input type="search" class="search__text" placeholder="검색어를 입력해 주세요" data-element="input">
							<button type="button" data-element="remove" class="input__remove-button">삭제</button>
							<div class="search-button">
								<button class="button" type="button">검색</button>
							</div>
						</div>
						<!-- <button type="button" class="search__close" data-custom-toggle="button">
					<span class="hidden">검색창 닫기</span>
				</button> -->
					</div>
				</div>
				<div class="header__button-wrap subType" data-element="gnbToggle" >
					<button type="button" class="gnb__button">
						<img loading="lazy" src="https://static.jejuair.net/hpgg/resources/images/icon/icon-hamburger-header.png" alt="전체메뉴 열기" class="open">

						
							
						
					</button>
				</div>

				<!-- goto-quick-booking : 스티키 클릭용 -->
				<div class="goto-quick-booking">
					<a href="javascript:;">
						<span>어디로 여행가세요?</span>
						<div class="goto-btn">
							<span>항공권 검색</span>
						</div>
					</a>
				</div>
				<!-- //goto-quick-booking -->

			</div>

			<!-- 전체메뉴 -->
			<div class="gnb" id="gnb">
				<div class="gnb-wrap">
					
					
					
					
						
							<div class="gnb__box">
								<div class="gnb__title">마이페이지</div>
								<div class="gnb__list">
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="마이페이지 메인" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/main.do');">마이페이지 메인</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="예약 조회" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/mypage/viewOnOffReservationList.do');">예약 조회</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="나의 예약 현황" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/mypage/viewReservationList.do');">나의 예약 현황</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="나의 탑승 내역" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/myFlightList.do');">나의 탑승 내역</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="회원정보 수정" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/memberInfoModify.do');">회원정보 수정</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="마이페이지" ep_event_button="나의 이벤트" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/member/mypage/viewMyEvent.do');">나의 이벤트</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">여행준비 안내</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="항공권 예매" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/booking/Availability.do');">항공권 예매</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="국내선 운임" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/fare/domesticBenefit.do');">국내선 운임</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="국제선 운임" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/fare/internationalBenefit.do');">국제선 운임</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="스케줄 조회" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/flight/viewScheduleInfo.do?index=1');">스케줄 조회</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="출도착 조회" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/flight/viewScheduleInfo.do?index=2');">출도착 조회</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="민항공후급증 예약" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/booking/viewMilitaryInput.do');">민항공후급증 예약</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="여행준비 안내" ep_event_button="결제혜택" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/prepare/fare/payBenefit.do');">결제혜택</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">회원 혜택 안내</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="신규회원 혜택" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/memberBenefit.do?param=newMember ');">신규회원 혜택</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="프로모션 코드" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/memberBenefit.do?param=promotion');">프로모션 코드</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="리프레시 포인트" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/refreshPoint/main.do');">리프레시 포인트</a>
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="포인트 구매" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/refreshPoint/pointBuy.do');">포인트 구매</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="포인트 조회" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/refreshPoint/pointSearch.do');">포인트 조회</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="기프티켓" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/gifticket.do');">기프티켓</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="회원 혜택 안내" ep_event_button="쿠폰 등록" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/memberBenefit/regCoupon.do');">쿠폰 등록</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">부가서비스 안내</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="부가서비스 소개" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/main.do');">부가서비스 소개</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="사전 수하물" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/preorderedBaggage.do');">사전 수하물</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="좌석 구매" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/preorderedSeat.do');">좌석 구매</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="사전 기내식" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/preorderedMeal.do');">사전 기내식</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="여행자 보험" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/insurance.do');">여행자 보험</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="좌석+수하물 세트" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/bundleGuide.do');">좌석+수하물 세트</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="나중에 결제" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/afterPayGuide.do');">나중에 결제</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="자전거 캐링백 서비스" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/carringBagGuide.do');">자전거 캐링백 서비스</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="제주패스(국내 렌트카)" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/jejupassguide.do');">제주패스(국내 렌트카)</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="부가서비스 안내" ep_event_button="무브(데이투어)" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/movvguide.do');">무브(데이투어)</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">프리미엄 혜택 안내</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="비즈니스 라이트" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/premium/businesslite/main.do');">비즈니스 라이트</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="스포츠 멤버십" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/premium/sportsMembership/main.do');">스포츠 멤버십</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="골프 멤버십 " 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/premium/golfMembership/main.do');">골프 멤버십 </a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="제휴 서비스" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/additionalService/service/allianceService.do');">제휴 서비스</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="프리미엄 혜택 안내" ep_event_button="온라인몰 제이샵" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('https://www.jejuairshop.com?jjout=Y');">온라인몰 제이샵</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">탑승 수속 안내</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="모바일 탑승권" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/ibe/checkin/viewCheckin.do');">모바일 탑승권</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="수하물" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/boardingProcessGuide/baggageGuide.do');">수하물</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="빠른 수속" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/fastProcedure/guide.do');">빠른 수속</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="공항혼잡도 안내" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/airport/airportStatus.do');">공항혼잡도 안내</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="공항 정보" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/airport/info.do');">공항 정보</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="탑승 수속 안내" ep_event_button="도움이 필요한 고객" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/linkService/help/main.do');">도움이 필요한 고객</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">기내 서비스 안내</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="에어카페" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/service/airCafe.do');">에어카페</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="기내 FUN 서비스" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/service/funService.do');">기내 FUN 서비스</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="출입국 신고서 작성방법" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/immigration/etcFormGuide.do');">출입국 신고서 작성방법</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="기내 서비스 안내" ep_event_button="국제선 기내면세품" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinService/service/dutyFree.do');">국제선 기내면세품</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">이벤트</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="이벤트" ep_event_button="진행중인 이벤트" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/event/event.do');">진행중인 이벤트</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="이벤트" ep_event_button="지난 이벤트" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/event/pastEvent.do');">지난 이벤트</a>
										
									
										
									
										
									
										
									
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">고객센터</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="고객센터" ep_event_button="고객센터" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/customerService/csCenter/faqList.do');">고객센터</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="고객센터" ep_event_button="기내 유실물 센터" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/customerService/cabinLost/cabinLost.do');">기내 유실물 센터</a>
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="고객센터" ep_event_button="공지사항" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/customerServiceCenter/notice.do');">공지사항</a>
										
									
										
									
										
									
								</div>
							</div>
						
					
						
					
						
					
						
					
						
							<div class="gnb__box">
								<div class="gnb__title">객실승무원 체험교육</div>
								<div class="gnb__list">
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
									
										
											<a href="javascript:void(0);" class="gnb__list-item" ep_event_area="객실승무원 체험교육" ep_event_button="에듀윙 안내" 
												ep_visit_channel_option='PC-WEB' ep_language_environment='ko-KR' event_name='click_lnb'  
												ep_visit_login_yn='N' 
											onclick="sendGAAttrEvent(event);URL_LINK.getI18Url('/cabinEducation/service/eduWing.do');">에듀윙 안내</a>
										
									
								</div>
							</div>
						
					
						
					
				</div>
			</div>
			
			<!-- //전체메뉴 -->
		</div>
	</header>
	<!-- //pc용 공통 헤더 -->
	<!-- pc용 공통 헤더 -->
</div>

<!-- //header -->

	
	<div id="body">
		
		<div class="wrap MO" >
			
			
				<div id="breadcrumb" class="breadcrumb pc-only" aria-label="breadcrumb">
					<nav class="breadcrumb__inner">
						<div class="breadcrumb__item">
							<a href="javascript:;" class="breadcrumb__link">홈</a>
						</div>
						
						
							
								
									<div class="breadcrumb__item">
										<a href="javascript:;" class="breadcrumb__link">
										 
											
											
												고객센터
												
													
														
													
													
												
											
										
										
										</a>
									</div>
								
								
							
						
							
								
								
									<div class="breadcrumb__item breadcrumb__item--current" aria-current="page" data-element="toggle" data-options='{"mode": "slide", "speed": 100, "clickToClose": true}'>
										
											
										
											
										
											
												<button type="button" class="breadcrumb__link breadcrumb__link--list" data-element="toggle__anchor">고객센터</button>
												
													
													
														
													
												
											
										
											
										
											
										

										<div class="breadcrumb__siblings-list" data-element="toggle__panel">
											
												
													<a href="javascript:void(0);" class="item" onclick="URL_LINK.getI18Url('/customerService/csCenter/qnaForm.do')">1:1 문의</a>
												
											
												
													<a href="javascript:void(0);" class="item" onclick="URL_LINK.getI18Url('/customerService/csCenter/qnaFormList.do')">1:1 문의목록</a>
												
											
												
											
												
													<a href="javascript:void(0);" class="item" onclick="URL_LINK.getI18Url('/customerServiceCenter/notice.do')">공지사항</a>
												
											
												
													<a href="javascript:void(0);" class="item" onclick="URL_LINK.getI18Url('/customerService/cabinLost/cabinLost.do')">기내 유실물 센터</a>
												
											
										</div>
									</div>
								
							
												
						
					</nav>
				</div>
			
			<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/googleAnalyticsBuilder.js"></script>
			<script>
				document.addEventListener('DOMContentLoaded', () => {
					let gaTitle = '고객센터>고객센터';
					if (gaTitle === '') {
						if (document.querySelector('.page-title-wrap .page-title') !== null) {
							gaTitle = document.querySelector('.page-title-wrap .page-title').innerHTML;
						} else if (document.querySelector('.title__wrap .title__page') !== null) {
							gaTitle = document.querySelector('.title__wrap .title__page').innerHTML;
						}
					}
					if (window.location.href.indexOf('qnaForm.do') > -1) {
						gaTitle = '고객센터>1:1 문의';
					}
					let pageviewObj = {	    				
						up_visit_channel_option:'PC-WEB',     
						up_language_environment:'ko-KR',
						ep_visit_channel_option:'PC-WEB',
						ep_language_environment:'ko-KR',
						up_cust_yn:'N',
						ep_visit_login_yn:'N',
						title : gaTitle.replaceAll('&nbsp;', ' '),		
						location: window.location.href	   	
					};
					let login_type = JSON.parse(USER_INFO.get()).snsloginFlag==='N' ? '일반' : 'SNS'
					let up_cust_yn = 'Y'
					if(typeof JSON.parse(USER_INFO.get()).userId === 'undefined' && typeof JSON.parse(USER_INFO.get()).email != 'undefined'){
						login_type = JSON.parse(USER_INFO.get()).email
						up_cust_yn = 'N'
					}
					let loginObj = {
						up_uid:btoa(JSON.parse(USER_INFO.get()).userId),							
						up_gender:JSON.parse(USER_INFO.get()).gender,       
						up_age_band:JSON.parse(USER_INFO.get()).ageGroup,
						up_cust_yn:up_cust_yn,
						up_login_type:login_type,
						up_signup_date:JSON.parse(USER_INFO.get()).enrollDate,
						up_last_booking_date:JSON.parse(USER_INFO.get()).lastBoardingDate,
						up_refresh_point:JSON.parse(USER_INFO.get()).availPoint,
						up_flight_count:JSON.parse(USER_INFO.get()).boardingCount,
						up_apppush_yn:'',
						up_sms_yn:JSON.parse(USER_INFO.get()).smsYn,
						up_email_yn:JSON.parse(USER_INFO.get()).emailYn,
						up_country:JSON.parse(USER_INFO.get()).nationalityCode,   
						up_membership:'',
						up_customer_level:JSON.parse(USER_INFO.get()).membergrade,              
						ep_visit_login_yn:'Y'
					};
					if(typeof JSON.parse(USER_INFO.get()).userId != 'undefined'){	
						Object.assign(pageviewObj, loginObj);
					}
				
					sendGAPage(pageviewObj , 'GTM-WG6PWLV');
				});
			</script>		
	
			
			<div class="content" id="content">
				<main id="main" class="main ">
					
					
		
			<form id="mainform" name="mainform" action="https://jejuair.my.salesforce-sites.com/faq" method="post" target="iframe">
				<input type="hidden" name="language" value="ko"/>
				<input type="hidden" name="userNo" value=""/>
				<input type="hidden" name="userID" value=""/>
				<input type="hidden" name="userNm" value=""/>
				<input type="hidden" name="phone" value=""/>
				<input type="hidden" name="email" value=""/>
				<input type="hidden" name="agentId" value="sys_web.kr"/>
			</form>
		
		
			
	<input type="hidden" id="active" name="active" value="prod"/>
	 <div class="iframe_help">
	 	<iframe id="iframe" name="iframe" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
	 </div>
				</main>
			</div>
			
		</div>
	</div>

	
	









<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_NON_USER')">
										
</sec:authorize>

	
	
		<div id="footer" class="footer pc-only">
	

	
    <!-- pc -->
    <footer class="footer__inner">
		<div class="footer__top">
			<div class="footer__top-item">
				<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="about"
				ep_event_area="회사소개" ep_event_button="회사소개" 
				ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
				event_name='click_footer'>
				회사소개</a>
			</div>
			
			<div class="footer__top-item">
				<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="esg"
				ep_event_area="ESG 경영" ep_event_button="ESG 경영" 
				ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
				event_name='click_footer'>
				ESG 경영</a>
			</div>
			
			
				<div class="footer__top-item">
					<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="irNotice"
					ep_event_area="투자정보" ep_event_button="투자정보" 
					ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
					event_name='click_footer'>					
					투자정보</a>
				</div>
			
			
				<div class="footer__top-item">
					<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="incruit"
					ep_event_area="채용안내" ep_event_button="채용안내" 
					ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
					event_name='click_footer'>
					채용안내</a>
				</div>
			
			<div class="footer__top-item">
				<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="carriageTemrs"
				ep_event_area="여객운송약관" ep_event_button="여객운송약관" 
				ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
				event_name='click_footer'>
				여객운송약관</a>
			</div>
			<div class="footer__top-item">
				<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="homepageTerms"
				ep_event_area="홈페이지 이용약관" ep_event_button="홈페이지 이용약관" 
				ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
				event_name='click_footer'>
				홈페이지 이용약관</a>
			</div>
			<div class="footer__top-item footer__top-item--privacy">
				<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="personalTerms"
				ep_event_area="개인정보처리방침" ep_event_button="개인정보처리방침" 
				ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
				event_name='click_footer'>
				개인정보처리방침</a>
			</div>
			<div class="footer__top-item">
				<a href="javascript:void(0);" class="footer__top-link" data-action="menu" data-menu-name="sitemap"
				ep_event_area="사이트맵" ep_event_button="사이트맵" 
				ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
				event_name='click_footer'>
				사이트맵</a>
			</div>
			
			<div class="footer__top-item footer__top-item--family">
				<div class="family-wrap" data-element="toggle" data-options='{"mode": "slide", "speed": 100, "clickToClose": true}'>
					<button type="button" class="button-family" data-element="toggle__anchor">Family Site</button>
					<div class="family-list" data-element="toggle__panel">
					<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAekyung"
						ep_event_area="Family Site" ep_event_button="㈜애경산업" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						㈜애경산업</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAtecltd"
						ep_event_area="Family Site" ep_event_button="㈜에이텍" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						㈜에이텍</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAekyngst"
						ep_event_area="Family Site" ep_event_button="애경S.T" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						애경S.T</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAkis"
						ep_event_area="Family Site" ep_event_button="에이케이아이에스㈜" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						에이케이아이에스㈜</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAdmission"
						ep_event_area="Family Site" ep_event_button="애드미션" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						애드미션</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyNeopharm"
						ep_event_area="Family Site" ep_event_button="네오팜" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						네오팜</a>
						
						<!-- 20231128 3사 삭제
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAkp"
						ep_event_area="Family Site" ep_event_button="애경유화㈜" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						애경유화㈜</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAkc"
						ep_event_area="Family Site" ep_event_button="애경화학㈜" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						애경화학㈜</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAkchemtech"
						ep_event_area="Family Site" ep_event_button="에이케이켐텍" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						에이케이켐텍</a>
						-->
						 
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAekyungchemical"
						ep_event_area="Family Site" ep_event_button="애경케미칼" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						애경케미칼</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAkc"
						ep_event_area="Family Site" ep_event_button="코스파" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						코스파</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAkplaza"
						ep_event_area="Family Site" ep_event_button="AK PLAZA" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						AK PLAZA</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAekyunggroup"
						ep_event_area="Family Site" ep_event_button="AK홀딩스" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						AK홀딩스</a>
						
						<a href="javascript:void(0);" class="family-link" data-action="menu" data-menu-name="familyAkdjbcc"
						ep_event_area="Family Site" ep_event_button="애경개발" 
						ep_visit_login_yn="Y" ep_visit_channel_option="PC-WEB" ep_language_environment="ko-"
						event_name='click_footer'>
						애경개발</a>
					</div>
				</div>
			</div>
			
		</div>
		<hr class="footer__spacer">
		<div class="footer__bottom">
			
			<div class="footer__bottom-contents">
			    
				
					<div class="footer__bottom-info">
						
							
							
								
							
							<div class="info-item">
								<a href="javascript:URL_LINK.getI18Url('/terms/page/transportationServicePlan.do');" class="link">항공교통이용자 서비스 계획</a>
							</div>
						
							
							
								
							
							<div class="info-item">
								<a href="javascript:URL_LINK.getI18Url('https://www.avsec365.or.kr/');" class="link">항공위험물안내 </a>
							</div>
						
							
							
								
							
							<div class="info-item">
								<a href="javascript:URL_LINK.getI18Url('http://static.jejuair.net/cms/images/file_upload/20230804155945599.pdf');" class="link">항공교통이용자 피해구제 계획</a>
							</div>
						
							
							
								
							
							<div class="info-item">
								<a href="javascript:URL_LINK.getI18Url('http://static.jejuair.net/cms/images/file_upload/20230719174845968.pdf');" class="link">항공안전투자공시</a>
							</div>
						
					</div>
				
				
				
				
				<div class="footer__bottom-util">
					<a href="javascript:void(0);" class="util-app-ios" data-action="menu" data-menu-name="iOSBtn"><img src="https://static.jejuair.net/hpgg/resources/images/icon/icon-footer-app-ios.png" alt="" loading="lazy"> IOS</a>
					<a href="javascript:void(0);" class="util-app-aos" data-action="menu" data-menu-name="AndroidBtn"><img src="https://static.jejuair.net/hpgg/resources/images/icon/icon-footer-app-aos.png" alt="" loading="lazy"> Android</a>
				</div>
				
				<p class="footer__bottom-address">
				    <font class="mr15">(주)제주항공</font>
					<span text="사업자등록번호 : 616-81-50527">사업자등록번호 : 616-81-50527  l  통신판매업신고 제주 2006-125호</span>
					<font class="" text="대표이사:김이배">대표이사 : 김이배</font><br>
	            	제주특별자치도 제주시 신대로 64(연동, 건설공제회관 3층)
            	</p>
          		<p class="footer__bottom-copy" text="Copyright ⓒ JEJUAIR. All Rights Reserved." : 616-81-50527">Copyright ⓒ Jeju Air. All Rights Reserved.</p>
          		<!-- CCM인증마크 -->
		        <div class="footer__bottom-bnr">
		            <a href="https://www.jejuair.net/ko/about/corp/page.do" target="_blank"><img src="https://static.jejuair.net/hpgg/resources/images/banner/banner_footer_CCM.png" alt="CCM인증마크"></a>
		        </div>
		        <!-- // CCM인증마크 -->
          		
			</div>
		</div>
    </footer>
    <!-- //pc -->
 
 </div>


	
	






<!-- 공통 스크립트 선언 -->



<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/lib/lib.min.js"></script>



<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/lib/moment-with-locales.min.js"></script>

<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/lib/jquery.i18n.js"></script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/lib/jquery.i18n.messagestore.js"></script>
<!-- 메인페이지 스크립트 에러 발생으로 이전 소스로 변경합니다. 
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/booking/plugin.js"></script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/booking/common.js"></script>
-->
<script>
$(document).ready(function(){
	
		$.ajaxSetup({
			beforeSend: function(xhr) {
				xhr.setRequestHeader('tcode', '0000000612');
				xhr.setRequestHeader('cname', USER_DEVICE.getName());
			}
		});
	
	
	//BOOKING LAYOUT상태서 sub로 바뀔경우  
	$(document).off('changeLayout').on('changeLayout', function(e, type) {
		if(type==='sub') {
			$('.bookingType').hide();
			$('.subType').show();
		}else if(type==='booking'){
			$('.subType').hide();
			$('.bookingType').show();
		}
	});
    
	//breadcrumbs cursor default
	$('.breadcrumb__item > a').css('cursor','default');
});

//타이틀 설정
$('header.mobile-only h2.header__page-name').text($('#main div.page-title').eq(0).text());
</script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/plugin.js"></script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/common.js"></script>

<!--필요시만 로드-->
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/vendor/lodash.min.js"></script>
<!--사용되지 않음-->
<!--<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/vendor/localforage.min.js"></script>-->
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/vendor/handlebars.min-v4.7.6.js"></script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/handlebars.helpers.js"></script>

<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/util/sUtil.js"></script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/util/dUtil.js"></script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/util/utils.js"></script>

<!--필요시만 로드-->
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/amcharts/amcharts.core.js"></script>


<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/bizjs/commons/bizCommons.js"></script>
<script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/js/jj.helpers.js"></script>

	
        
            <script type="text/javascript" src="https://static.jejuair.net/hpgg/resources/bizjs/customerService/csCenter/faqList.js"></script>
        
    

	
	
	<div id="ifmWrap" style="height:100%; display:none; overflow:auto; text-align:center; -webkit-overflow-scrolling:touch;">
		<iframe src="" width="100%" height="100%" name="popupChkApp"></iframe>    
	</div>
<script type="text/javascript"  src="/BeqYRM/dzRSF/hGlHc/MA/wOuSfVuku9u1Li/QEQ-AQ/cEVuaH/pWTHk"></script></body>
</html>