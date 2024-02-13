<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="canonical" href="http://www.airbusan.com">
<meta name="naver-site-verification" content="505d04bbedb2c73e34fb052d3c765ec9eeae5dbb">

<title>자주묻는 질문 &lt; 고객센터</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=2.0,user-scalable=yes">
<link rel="shortcut icon" type="image/png" href="//story.airbusan.com/content/assets/images/favicon.png">
<link rel="stylesheet" type="text/css" href="//story.airbusan.com/content/assets/stylesheets/common.min.css?ver=1707799551521">
<link rel="stylesheet" type="text/css" href="//story.airbusan.com/content/assets/stylesheets/plugin.min.css">
<link rel="stylesheet" type="text/css" href="//story.airbusan.com/content/assets/stylesheets/main.min.css">
<link rel="stylesheet" type="text/css" href="//story.airbusan.com/content/assets/stylesheets/contents.min.css?ver=1707799551521">
<link rel="stylesheet" type="text/css" href="//story.airbusan.com/content/assets/stylesheets/event.min.css">
<!--[if IE]>
			<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/iefix.js"></script>
		<![endif]-->
<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=AW-822065883&amp;l=dataLayer&amp;cx=c"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-TQNWXLQ"></script><script type="text/javascript" src="//story.airbusan.com/web/assets/javascripts/polyfill.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/moment-with-locales.min.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/json2.min.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.form.min.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.validate.min.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.cookie.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.base64.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.progress.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.bxAlert.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.showAsPopup.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/jquery.bxAjax.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/mustache.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/ICanHaz-no-mustache.min.js"></script>
<script type="text/javascript" src="//story.airbusan.com/web/assets/javascripts/cached/i18n_ko.js"></script>

<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/StringUtil.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/common.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/default.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/js.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/netfunnel.js"></script>
<script type="text/javascript" src="//story.airbusan.com/content/assets/javascripts/netfunnel_skin_ko.js"></script>
<script type="text/javascript" src="//story.airbusan.com/web/assets/javascripts/js.js"></script>
<script type="text/javascript">
			$.datePicker.defaultOption.message = {
				prev: '이전',
				next: '다음',
				today: '오늘',
				selected: '선택됨',
				month: '월',
				year: '년'
			};
		</script>
<script type="text/javascript">
			$(function(){
				$('#gnb li:last').keydown(function (e) {
					var code = e.keyCode || e.which;
					if(code == '9')
						$('#contents').focus();
				});
				
				
					$(this).keydown(function(e){
					    if(e.keyCode == 123 || (e.ctrlKey && e.shiftKey && e.keyCode == 73) ){
					    	return false;
					    }
					});
				
				
				document.title = document.title.replace(/(<([^>]+)>)/ig, "");
			});			
			
		</script>
<script type="text/javascript">
			$(function() {
				var playLang = "ko";
				moment.locale(playLang);

				try {NetFunnel_Complete();} catch(e){}
			});
		</script>
<script type="text/javascript">
        $(function() {
            gnb();
            snb();
        });
    </script>
<script type="text/javascript">
        $(function(){
            $('.recommended').click(function () {
                $ ( '.inputKeyword' ).val ( $(this ).text()) ;
                $('.form' ).submit();
                return false;
            });

            $('.buttonCategory').each(function (index, value) {
                var category = $(value).attr('data-category');
                if(!category)
                    return;

                if(!$('.qnaList [data-category=' + category  + ']').length)
                    $(value).remove();
            });

            $('.buttonCategory').click(function () {
                $(".inputKeyword" ).val("");
                $('.buttonCategory' ).removeClass('on');
                $('.buttonCategory').children().removeAttr('title');
                $(this ).addClass('on');
                $(this ).children().attr('title','현재 선택 됨');
                $('.form' ).submit();
                return false;
            });
            $('.form' ).submit(function () {
                var keyword = $ ( '.inputKeyword' ).val ( ) ;
                $('.qnaList [data-category]').show();
                var category = $('.buttonCategory.on' ).attr('data-category') ;
                if(category) {
                    $('.qnaList [data-category]').each(function (index, value) {
                        if(category != $(value ).attr('data-category'))
                            $(value ).hide();

                    });
                }
                $('.qnaList [data-category]').each(function (index, value) {
                    if($(value ).text().indexOf(keyword) == -1)
                        $(value ).hide();

                });
                return false;
            });

            $(".question" ).click(function(){
                if ($(this ).siblings(".answer" ).is(":visible")) {
                    $(this ).siblings(".answer" ).hide();
                }else{
                    $(this ).siblings(".answer" ).show();
                }
            });



            $(".answer" ).hide();
        });
    </script>



<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
				new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
				j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
				'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
				})(window,document,'script','dataLayer','GTM-TQNWXLQ');</script>

<script type="text/javascript" charset="euc-kr" src=" https://realdmp.realclick.co.kr/rtarget/rtget.js?dsp_adid=airbusan" async=""></script><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/822065883/?random=1707799551991&amp;cv=11&amp;fst=1707799551991&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be4270za200&amp;gcd=13l3l3l3l1&amp;dma=0&amp;u_w=1536&amp;u_h=864&amp;url=https%3A%2F%2Fwww.airbusan.com%2Fcontent%2Fcommon%2Fcustomercenter%2Ffaq&amp;ref=https%3A%2F%2Fwww.airbusan.com%2Fcontent%2Fcommon%2Fcustomercenter%2Ffaq%3F__cf_chl_tk%3DDg9wgaa65GkBbgpFsqexrGh8WCUCb8_y_XA2nFXOaP8-1707799549-0-5072&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%9E%90%EC%A3%BC%EB%AC%BB%EB%8A%94%20%EC%A7%88%EB%AC%B8%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0&amp;npa=0&amp;pscdl=noapi&amp;auid=1730718993.1706516677&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%2520A(Brand%3B99.0.0.0%7CGoogle%2520Chrome%3B121.0.6167.160%7CChromium%3B121.0.6167.160&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;fledge=1&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script></head>
<body style="zoom: 1" oncontextmenu="return false" class="lang_ko">
<div id="skipNavi">
<ul>
<li><a href="#contents">본문 바로가기</a></li>
<li><a href="#gnb">주메뉴 바로가기</a></li>
</ul>
</div>
<div id="wrap" class="common individual_2018  individual_2019">
<div id="headerWrap" class="header_2018">


<div>
<div id="header">
<h1 class="logo"><a href="#" onclick="NetFunnel_Action({action_id:'main'},'/content/individual/')"><img src="//story.airbusan.com/content/assets/images/common/img_logo.png" alt="AIR BUSAN"></a></h1>
<div class="hGroup">
<div class="hlGroup">
<div class="groupMenu">
<a href="/content/individual/" class="individual on">
<span class="icon iconIndividual"></span>개인
</a>
<ul>
<li>
<a href="/content/corporation/" class="business ">
<span class="icon iconBusiness"></span>기업
</a>
</li>
<li>
<a href="/content/agency/" class="travel ">
<span class="icon iconTravel"></span>여행사
</a>
</li>
</ul>
</div>
</div>
<div class="hrGroup">
<em class="language">Language :</em>
<div class="global">
<a class="shorcut" href="#">
한국어
</a>
<ul>
<li><a href="#" onclick="NetFunnel_Action({action_id:'main'},'/content/en')">ENGLISH</a></li>
<li><a href="#" onclick="NetFunnel_Action({action_id:'main'},'/content/ja')">日本語</a></li>
<li><a href="#" onclick="NetFunnel_Action({action_id:'main'},'/content/zh-TW')">繁體中文</a></li>
<li><a href="#" onclick="NetFunnel_Action({action_id:'main'},'/content/zh-CN')">简体中文</a></li>
<li><a href="#" onclick="NetFunnel_Action({action_id:'main'},'/content/ru')">русский</a></li>
<li><a href="#" onclick="NetFunnel_Action({action_id:'main'},'/content/vi')">tiếng Việt</a></li>
</ul>
</div>
</div>
</div>


<div class="hShortcut">
<a href="#" onclick="NetFunnel_Action({action_id:'login'},'/web/common/login/')">로그인</a>
<a href="/web/common/join/">회원가입</a>
<a class="none" href="/content/common/flynjoy/flyNEvent/">이벤트</a>
<a href="/content/common/customercenter/">고객센터</a>
<a class="none" href="/content/common/customercenter/">FAQ</a>
<a href="/content/common/sitemap/">사이트맵</a>
</div>


<div id="gnb">
<div class="depth01">
<ul>
<li class="depth01Lists depth01List01">
<a href="#">항공권 예약</a>
<div class="depth02">
<ul>
<li class="depth02Lists depth02List01" style="display:inherit; width:181px;"><a href="#" onclick="NetFunnel_Action({action_id:'flights'},'/web/individual/booking/flightsAvail')">항공권 예매</a>
</li>
<li class="depth02Lists depth02List04" style="border-left:0px; display:inherit; width:181px;">
<a href="/web/individual/booking/group">단체 예매<br>(국내선, 10명 이상)</a>
</li>
<li class="depth02Lists depth02List02"><a href="/content/individual/booking/giftTicket">선물항공권</a></li>
<li class="depth02Lists depth02List05 menuHide" style="position:absolute; width:104px; height:20px; left:-35px; margin-top:56px; border-left:0px;"><a href="/content/individual/booking/regularSubscription">부산-김포 정기권</a></li>

<li class="depth02Lists depth02List07">
<a href="#">이용 안내</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/individual/booking/reserve/booking">항공권예매안내</a></li>
<li class="depth03Lists depth03List02"><a href="/content/individual/booking/reserve/guidebook">전자항공권(여정안내서)</a></li>
<li class="depth03Lists depth03List03"><a href="/content/individual/booking/reserve/refund">항공권 환불</a></li>
<li class="depth03Lists depth03List04"><a href="/content/individual/booking/reserve/loss">항공권 재발행</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List08">
<a href="#">항공운임 안내</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/individual/booking/fareDomestic">국내선</a></li>
<li class="depth03Lists depth03List02"><a href="/content/individual/booking/fareInternational">국제선</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List10">
<a href="#">운항 정보</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/web/individual/booking/schedule">스케줄 조회</a></li>
<li class="depth03Lists depth03List02"><a href="/content/individual/booking/route">취항노선</a></li>
<li class="depth03Lists depth03List03"><a href="/web/individual/booking/departureArrival">실시간출도착</a></li>
<li class="depth03Lists depth03List03"><a href="/content/individual/booking/bookingAircraft">항공기 소개</a></li>
</ul>
</div>
</li>
</ul>
</div>
</li>
<li class="depth01Lists depth01List02">
<a href="#">마이페이지</a>
<div class="depth02">
<ul>
<li class="depth02Lists depth02List01"><a href="/web/common/mypage/">회원정보 수정</a></li>
<li class="depth02Lists depth02List02"><a href="/web/individual/reserve/index">나의 예약조회</a></li>
<li class="depth02Lists depth02List03"><a href="/web/individual/reserve/purchase">구매내역</a></li>
<li class="depth02Lists depth02List04">
<a href="/web/individual/reserve/promotionCouponETicket">쿠폰내역</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/web/individual/reserve/couponInformation">쿠폰 안내</a></li>
<li class="depth03Lists depth03List01"><a href="/web/individual/reserve/promotionCouponETicket">항공권 쿠폰</a></li>
<li class="depth03Lists depth03List02"><a href="/web/individual/reserve/promotionCoupon">부가서비스 쿠폰</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List06">
<a href="/web/individual/reserve/stamp">스탬프 조회</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/web/individual/flynstamp/stamp">전체조회</a></li>
<li class="depth03Lists depth03List02"><a href="/web/individual/flynstamp/stampdetail">상세조회</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List07">
<a href="#">제휴사 예약 조회</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/web/individual/reserve/hotelReserve">호텔</a></li>
<li class="depth03Lists depth03List02"><a href="/content/common/affiliate/rentalCar" title="렌터카 열기">렌터카</a></li>
<li class="depth03Lists depth03List01"><a href="https://acedirect.co.kr/jsp/directM/b2c/common/auth/mobile_cert_b2c.jsp?groupId=701414BAIR" rel="noopener noreferrer" target="_black" title="새창">여행자보험</a></li>
<li class="depth03Lists depth03List04"><a href="https://ap.wifidosirak.com/ReservEvent_ReservList.aspx?airbusan&amp;intro=N" target="_blank" rel="noopener noreferrer">포켓와이파이</a></li>
</ul>
</div>
</li>
</ul>
</div>
</li>
<li class="depth01Lists depth01List03">
<a href="/content/common/service/flynstamp">서비스 안내</a>
<div class="depth02" style="display: none;">
<ul>
<li class="depth02Lists depth02List01">
<a href="/content/common/service/flynstamp">스탬프</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/common/service/flynstamp">FLY&amp;STAMP 안내</a></li>
<li class="depth03Lists depth03List02"><a href="/web/individual/flynstamp/buystamp">STAMP 구매/환불</a></li>
<li class="depth03Lists depth03List03"><a href="/web/individual/flynstamp/give">STAMP 양도</a></li>
<li class="depth03Lists depth03List04"><a href="/web/individual/flynstamp/omitted">누락 STAMP 적립</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List02">
<a href="/content/common/service/customer/">도움이 필요하신 손님</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List03"><a href="/content/common/service/customer/pregnantWoman">임산부/유아동반 손님</a></li>
<li class="depth03Lists depth03List04"><a href="/content/common/service/customer/animal">반려동물 동반 손님</a></li>
<li class="depth03Lists depth03List06"><a href="/content/common/service/customer/wheelchair" style="font-size:12px;">휠체어 서비스 필요 손님</a></li>
<li class="depth03Lists depth03List01"><a href="/content/common/service/customer/together">투게더 서비스</a></li>
<li class="depth03Lists depth03List02"><a href="/content/common/service/customer/child">혼자 여행하는 어린이</a></li>
<li class="depth03Lists depth03List05"><a href="/content/common/service/customer/opinion">의사소견서 필요 손님</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List03">
<a href="/content/common/service/airport/">공항 서비스</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/common/service/airport/procedures">탑승수속</a></li>
<li class="depth03Lists depth03List02"><a href="/content/common/service/airport/linkProcedures">연결탑승수속</a></li>
<li class="depth03Lists depth03List03"><a href="/content/common/service/airport/autoIssue">탑승권 자동발급</a></li>
<li class="depth03Lists depth03List04"><a href="/content/common/service/airport/boardingCard">홈페이지/모바일 탑승권</a></li>
<li class="depth03Lists depth03List05"><a href="/content/common/service/airport/information">취항지 공항/카운터정보</a></li>
<li class="depth03Lists depth03List06"><a href="/content/common/service/airport/declaration">출입국 신고서</a></li>
<li class="depth03Lists depth03List07"><a href="/content/common/service/lounge">라운지 안내</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List04">
<a href="/content/common/service/baggage/">수하물</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/common/service/baggage/free">무료 수하물</a></li>
<li class="depth03Lists depth03List02"><a href="/content/common/service/baggage/excess">초과 수하물</a></li>
<li class="depth03Lists depth03List03"><a href="/content/common/service/baggage/special">특수 수하물</a></li>
<li class="depth03Lists depth03List04"><a href="/content/common/service/baggage/packaging">포장용품 안내</a></li>
<li class="depth03Lists depth03List05"><a href="/content/common/service/baggage/restriction">운송제한 물품</a></li>
<li class="depth03Lists depth03List06"><a href="/content/common/service/baggage/recompense">수하물 배상</a></li>
<li class="depth03Lists depth03List07"><a href="/content/common/service/baggage/lost">유실물 안내</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List05">
<a href="/content/common/service/cabin">기내 서비스</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/common/service/service">기내 서비스</a></li>
<li class="depth03Lists depth03List01"><a href="/content/common/service/dutyfree">기내 면세품</a></li>
<li class="depth03Lists depth03List01"><a href="/content/common/service/airbusanMall">AIRBUSAN MALL</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List06">
<a href="javascript:;">부가서비스 구매</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List05"><a href="/content/common/service/bundleInfo">번들</a></li>
<li class="depth03Lists depth03List04"><a href="/content/common/service/luggagePurchase">수하물</a></li>
<li class="depth03Lists depth03List01"><a href="/content/common/service/buySeat">좌석</a></li>
<li class="depth03Lists depth03List03"><a href="/content/common/service/loungePurchase">라운지</a></li>
<li class="depth03Lists depth03List03"><a href="/content/common/service/airlineFoodOrder">기내식</a></li>
</ul>
</div>
</li>
<li class="depth02Lists depth02List07">
<a href="/content/common/service/bookstore">하늘 책방<br>(e-book 서비스)</a>
</li>
</ul>
</div>
</li>
<li class="depth01Lists depth01List04">
<a href="#">이벤트</a>
<div class="depth02" style="display: none;">
<ul>
<li class="depth02Lists depth02List01"><a href="/content/common/flynjoy/flyNEvent/">진행중인 이벤트</a></li>
<li class="depth02Lists depth02List02"><a href="/content/common/flynjoy/flyNEventEnd/">당첨자 발표</a></li>
</ul>
</div>
</li>
<li class="depth01Lists depth01List05">
<a href="#">로고샵/제휴상품</a>
<div class="depth02" style="display: none;">
<ul>
<li class="depth02Lists depth02List01">
<a href="https://www.shopairbusan.com/" target="_blank" rel="noopener noreferrer">SHOP AIR BUSAN</a>
</li>
<li class="depth02Lists depth02List02">
<a href="/content/common/affiliate/flyNFun/">FLY &amp; FUN</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/common/affiliate/flyNFun/destination/1">국내</a></li>
<li class="depth03Lists depth03List02"><a href="/content/common/affiliate/flyNFun/destination/7">해외</a></li>

</ul>
</div>
</li>
<li class="depth02Lists depth02List02">
<a href="#">여행상품</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="http://www.agoda.com/ko-kr/airbusan?cid=1747996" target="_blank" rel="noopener noreferrer" title="새창">호텔</a></li>

<li class="depth03Lists depth03List02"><a href="/content/common/affiliate/rentalCar" title="렌터카 열기">렌터카</a></li>
<li class="depth03Lists depth03List03"><a href="/content/common/affiliate/insurance">여행자보험</a></li>
<li class="depth03Lists depth03List04"><a href="https://ap.wifidosirak.com/ApIntro.aspx?airbusan" target="_blank" rel="noopener noreferrer">포켓와이파이/유심/eSIM</a></li>


</ul>
</div>
</li>
<li class="depth02Lists depth02List03">
<a href="/content/common/affiliate/card">제휴카드</a>
<div class="depth03">
<ul>
<li class="depth03Lists depth03List01"><a href="/content/common/affiliate/card">우리/신한</a></li>
</ul>
</div>
</li>
</ul>
</div>
</li>
</ul>
</div>
</div>
</div>
</div>



<script type="text/javascript">
	function popup(i){
			var today = "";

			var startDt = "202001201100";
//			var endDt 	= "201801121730";
			var endDt 	= "202001231600";

			var nDate = new Date();
			var year = nDate.getFullYear();
			var mon = (nDate.getMonth()+1)>9 ? ''+(nDate.getMonth()+1) : '0'+(nDate.getMonth()+1);
			var day = nDate.getDate()>9 ? ''+nDate.getDate() : '0'+nDate.getDate();
			var hour = nDate.getHours()>9 ? ''+nDate.getHours() : '0'+nDate.getHours();
			var minutes = nDate.getMinutes()>9 ? ''+nDate.getMinutes() : '0'+nDate.getMinutes();

//			console.log(year+"/"+mon+"/"+day+"/"+hour+"/"+minutes);
			today = year + "" + mon + "" + day+ "" +hour+ "" +minutes;

//			console.log(today);
//			console.log(parseInt(today, 10));
//			console.log(parseInt(startDt, 10));
//			console.log(parseInt(today, 10));
//			console.log(parseInt(endDt, 10));
			if(parseInt(today, 10) >= parseInt(startDt, 10) && parseInt(today, 10) <= parseInt(endDt, 10)){
				$.bxAlert('FLY&SALE 기간(~1/23)에는 해당 메뉴 사용이 불가능하오니 일반예약메뉴를 이용 부탁드립니다.', function () {});
			}else if(i == '1'){
				location.href='/web/individual/booking/easyScheduling';
			}
	}
</script>
<style>
#gnb .depth01Lists.depth01List03 .depth02{width:1166px !important; margin-left:-314px !important;}

</style>
</div>

<div id="container" class="container_2018 container_2019">
<div id="snb">
<div class="depth01">
<ul>
<li class="depth01Lists depth01List06" style="display: list-item;">
<div class="subTitBox">
<h2 class="snbTit">고객센터</h2>
</div>
<div class="depth02">
<ul>
<li class="depth02Lists depth02List01 off on"><a href="/content/common/customercenter/faq">자주묻는질문</a></li>
<li class="depth02Lists depth02List02 off"><a href="/content/common/customercenter/qna">고객문의</a></li>
<li class="depth02Lists depth02List03 off"><a href="/content/common/customercenter/noticeList">공지사항</a></li>
<li class="depth02Lists depth02List03 off"><a href="/content/common/customercenter/newsList">변경운항공지</a></li>
<li class="depth02Lists depth02List04 off"><a href="/content/common/customercenter/info">에어부산 예약센터</a></li>
</ul>
</div>
</li>
</ul>
</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
	$.bxGet({
		url: '/content/cityJson',
		success: function (data, textStatus, jqXHR) {
			$.each(data, function (index, value) {
				if(value.domestic){
					if($("body").hasClass("lang_ko") === true) {
						$('.depth04_d > ul' ).append(ich.ich(value));                    		
					}else if($("body").hasClass("lang_en") === true) {
						$('.depth04_d > ul' ).append(ich.ich_en(value));
					}else if($("body").hasClass("lang_jp") === true) {
						$('.depth04_d > ul' ).append(ich.ich_jp(value));                    		
					}else if($("body").hasClass("lang_cn") === true) {
						$('.depth04_d > ul' ).append(ich.ich_cn(value));                    		
					}else if($("body").hasClass("lang_tw") === true) {
						$('.depth04_d > ul' ).append(ich.ich_tw(value));                    		
					}else if($("body").hasClass("lang_ru") === true) {
						$('.depth04_d > ul' ).append(ich.ich_ru(value));                    		
					}else if($("body").hasClass("lang_vi") === true) {
						$('.depth04_d > ul' ).append(ich.ich_vi(value));                    		
					}
				}else if(!value.domestic){
					if($("body").hasClass("lang_ko") === true) {
						$('.depth03_i > ul' ).append(ich.ich_i(value));                    		
					}else if($("body").hasClass("lang_en") === true) {
						$('.depth03_i > ul' ).append(ich.ich_en_i(value));                    		
					}else if($("body").hasClass("lang_jp") === true) {
						$('.depth03_i > ul' ).append(ich.ich_jp_i(value));                    		
					}else if($("body").hasClass("lang_cn") === true) {
						$('.depth03_i > ul' ).append(ich.ich_cn_i(value));                    		
					}else if($("body").hasClass("lang_tw") === true) {
						$('.depth03_i > ul' ).append(ich.ich_tw_i(value));                    		
					}else if($("body").hasClass("lang_ru") === true) {
						$('.depth03_i > ul' ).append(ich.ich_ru_i(value));                    		
					}else if($("body").hasClass("lang_vi") === true) {
						$('.depth03_i > ul' ).append(ich.ich_vi_i(value));                    		
					}
				}
			});
		}
	});
});
</script>














<script type="text/javascript">
	function popup_time(i){
			var today = "";
			
			var startDt = "202001201100";
			var endDt 	= "202001231600";
			
			var nDate = new Date();
			var year = nDate.getFullYear();
			var mon = (nDate.getMonth()+1)>9 ? ''+(nDate.getMonth()+1) : '0'+(nDate.getMonth()+1);
			var day = nDate.getDate()>9 ? ''+nDate.getDate() : '0'+nDate.getDate();
			var hour = nDate.getHours()>9 ? ''+nDate.getHours() : '0'+nDate.getHours();
			var minutes = nDate.getMinutes()>9 ? ''+nDate.getMinutes() : '0'+nDate.getMinutes();
	
//			console.log(year+"/"+mon+"/"+day+"/"+hour+"/"+minutes);
			today = year + "" + mon + "" + day+ "" +hour+ "" +minutes;
	
//			console.log(today);
//			console.log(parseInt(today, 10));
//			console.log(parseInt(startDt, 10));
//			console.log(parseInt(today, 10));
//			console.log(parseInt(endDt, 10));
			if(parseInt(today, 10) >= parseInt(startDt, 10) && parseInt(today, 10) <= parseInt(endDt, 10)){
				$.bxAlert('FLY&SALE 기간(~1/23)에는 해당 메뉴 사용이 불가능하오니 일반예약메뉴를 이용 부탁드립니다.', function () {});
			}else if(i == '1'){
				location.href='/web/individual/booking/easyScheduling';
			}else{
				location.href='/web/individual/booking/lightingScheduling';
			}
	}
</script>
<div id="contents">
<div class="customerCenter">
<div class="ctitArea">

<div id="path" class="path">
<span class="icon iconPathHome"><a href="/content">홈으로</a></span>
<span class="pathLists depth01"><a href="/content/common/customercenter/">고객센터</a></span>
<span class="pathLists depth02 on"><strong><a href="/content/common/customercenter/faq">자주묻는질문</a></strong></span>
</div>

<h3 class="ctit">자주묻는 질문</h3>
</div>
<div class="qnaTabMenuFull list05 mgt60">
<ul>
<li class="buttonCategory on" cata-category=""><a href="#" title="현재 선택 됨">전체</a></li>
<li class="buttonCategory" data-category="30"><a href="#">영수증/확인서/증빙</a></li>
<li class="buttonCategory" data-category="29"><a href="#">공항서비스</a></li>
<li class="buttonCategory" data-category="27"><a href="#">부가서비스</a></li>
<li class="buttonCategory" data-category="24"><a href="#">탈퇴</a></li>

<li class="buttonCategory" data-category="22"><a href="#">홈페이지 이용</a></li>

<li class="buttonCategory" data-category="20"><a href="#">예약</a></li>

<li class="buttonCategory" data-category="17"><a href="#">인터넷 예약</a></li>
<li class="buttonCategory" data-category="16"><a href="#">아이디 찾기</a></li>

<li class="buttonCategory" data-category="13"><a href="#">환불</a></li>

<li class="buttonCategory" data-category="7"><a href="#">운송</a></li>
<li class="buttonCategory" data-category="6"><a href="#">예약/변경</a></li>
<li class="buttonCategory" data-category="5"><a href="#">스탬프</a></li>
<li class="buttonCategory" data-category="4"><a href="#">서비스</a></li>
<li class="buttonCategory" data-category="3"><a href="#">모바일</a></li>
<li class="buttonCategory" data-category="2"><a href="#">결제</a></li>
<li class="buttonCategory" data-category="1"><a href="#">기타</a></li>
</ul>
</div>
<div class="qnaSearch mgt30">
<form class="form">
<div class="searchArea">
<label class="tit" for="acbfaqQ">검색어</label>
<input type="text" class="inpTxt inputKeyword" id="acbfaqQ" style="width : 300px" value="" title="검색어 입력">
<input type="image" class="inpSearch" src="//story.airbusan.com/content/assets/images/common/btn_search01.gif" alt="검색">
</div>
</form>
<div class="popularityTitle">
<span class="tit">인기 검색어 :</span>
<a href="#" class="recommended">스탬프 적립</a> <span class="mgl03 mgr03"></span>
<a href="#" class="recommended">기내식</a> <span class="mgl03 mgr03"></span>
<a href="#" class="recommended">환불기간</a> <span class="mgl03 mgr03"></span>
<a href="#" class="recommended">무료수하물</a> <span class="mgl03 mgr03"></span>
</div>
</div>
<div class="qnaList mgt50">
<ul>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">기상악화, 태풍으로 인한 항공편 결항 시 항공권 처리 안내 </a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p style="line-height: 1.5;"><span style="font-size: 10pt; text-align: justify; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">항공편 결항 문자를
확인한 후에 수수료 없이 환불처리 하실 수 있습니다</span><span lang="EN-US" style="font-family: 가을체, serif; font-size: 11pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span><br></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span style="font-size:11.0pt;font-family:" 가을체",serif"=""><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><b><br></b></span></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif;"><b><span style="color: rgb(0, 0, 0);">1.
</span></b></span><span style="font-size:11.0pt;font-family:" 가을체",serif"=""><b><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">에어부산 홈페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">모바일</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">예약센터</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">공항지점을
통해 구매하신 경우</span></b><span lang="EN-US"><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span style="font-size:11.0pt;font-family:" 가을체",serif"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">→ 홈페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">모바일에서</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의 예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">에서
직접 환불</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> (</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">수수료 미징수</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">*
</span><span style="font-size:11.0pt;font-family:" 가을체",serif"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">직접 환불 후</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">수수료가 부과되었다면 에어부산 예약센터</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> (1666-3060 / </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">매일
</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">09:00~19:00, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">한국시간 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">) </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">로 접수해 주시기
바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif;"><b><br></b></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif;"><b><span style="color: rgb(0, 0, 0);">2.
</span></b></span><span style="font-size:11.0pt;font-family:" 가을체",serif"=""><span style="font-family: Arial, sans-serif; font-size: 10pt;"><b><span style="color: rgb(0, 0, 0);">에어부산이 아닌 다른 사이트 및
여행사를 통해 구매하신 경우</span></b></span><span lang="EN-US"><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span style="font-size:11.0pt;font-family:" 가을체",serif"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">→ 해당 구매처로
환불 요청</span><span lang="EN-US"><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span style="font-size:11.0pt;font-family:" 가을체",serif"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">지연</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">결항 정보는 홈페이지 실시간 출도착 정보에서 확인 부탁드립니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-size:11.0pt;font-family:" 가을체",serif;mso-bidi-font-family:="" 굴림;mso-ansi-language:en-us;mso-fareast-language:ko;mso-bidi-language:ar-sa"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">※ 홈페이지
실시간 출도착 정보</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">바로가기</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"><span style="color: rgb(0, 0, 0);">[</span><a href="https://www.airbusan.com/web/individual/booking/departureArrival" target="_blank" class="tx-link"><span style="color: rgb(0, 0, 0);">https://www.airbusan.com/web/individual/booking/departureArrival</span></a><span style="color: rgb(0, 0, 0);">]</span></span></span><span style="font-size: 10pt; font-family: Arial, sans-serif;"><br></span></p>
</div>
</li>
<li data-category="22">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">시스템 점검시간은 언제인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>아래의 시스템 정기 점검시간 동안 <span style="font-size: 10pt;">홈페이지 및 모바일 이용이 일시중단됩니다.</span></p><p>이용에 불편을 드리는 점 양해 부탁 드립니다.</p><p><br></p><p><b>매일</b> 23:50~24:10</p><p><b>매주 화요일</b> 23:00~24:00</p><p><br></p><p>더 나은 서비스를 제공하기 위해 노력하겠습니다.</p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공권을 취소했는데 언제 환불 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공권을 취소하시면 최초 결제 수단</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">신용카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">체크카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">네이버페이</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">실시간 계좌이체</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을
통해 환불됩니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><br></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-family: 가을체, serif; font-size: 11pt;"><br></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span style="font-size: 11pt; font-family: 가을체, serif;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">결제 수단</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">카드사에 따라 환불 소요기간은 상이하며</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">아래 내용 참고 부탁드립니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">. </span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size: 11pt; font-family: 가을체, serif;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">신용카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 3~14</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일
소요</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> (</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">단</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">해외통화</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">해외카드
결제 취소시 영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 4~6</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">주 소요</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size: 11pt; font-family: 가을체, serif;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">체크카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 7~14</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일
소요</span><span lang="EN-US"><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size: 11pt; font-family: 가을체, serif;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">네이버페이</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">실시간 계좌이체</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">영업일
기준 당일 또는 익일 환불 처리</span><span lang="EN-US"><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-bottom:3.75pt;text-align:justify;text-justify:
inter-ideograph"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span></p><p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-size: 11pt; font-family: 가을체, serif;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">환불 처리 및 입금 등의 상세 내역은 카드사에 따라 상이하여 이용하신 결제사로 문의해주시기 바랍니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">발열도시락(즉석발열조리식품) 반입 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">발열도시락</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">(</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">즉석발열조리식품</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">)</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">은</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> MSDS </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">상 안전성이 확인된 일부 브랜드 제품</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">(</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">예</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">:</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">바로쿡</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">)</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">만 기내 반입이 허용됩니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">.(</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">위탁
수하물로 운송 불가</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">)</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">다만</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">국제선의 경우 국가별</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">/</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">공항별
보안검색감독자</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">(</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">검색대</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">) </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">규정에 따라 제한될 수도 있습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">.</span><o:p></o:p></span></span></p><br><p></p>
</div>
</li>
<li data-category="27">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">부가서비스(번들, 유상좌석, 사전 수하물, 기내식)를 취소했는데 언제 환불되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">취소하신 부가서비스는 최초 결제하셨던 결제 수단으로 환불됩니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">환불 소요기간은 결제 수단</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">카드사에 따라 상이하오니</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">아래 내용 참고 부탁드립니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">. </span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size:11.0pt;font-family:
&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">신용카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> : </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> 3~14</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">일 소요</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> (</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">단</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">해외통화</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">/</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">해외카드
결제 취소 시 영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> 4~6</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">주 소요</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">)</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size:11.0pt;font-family:
&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">체크카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> : </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> 7~14</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">일 소요</span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size:11.0pt;font-family:
&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">네이버페이</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">/</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">실시간 계좌이체</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;"> : </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">영업일 기준
당일 또는 익일 환불 처리</span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">혹</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">해당 기간 이후에도 확인이 불가할 경우에는 카드사 통해 문의
부탁드립니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">.</span><o:p></o:p></span></span></p><br><p></p>
</div>
</li>
<li data-category="29">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">반려동물(개,고양이) 동반 시 반려동물 검역 절차가 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:10.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국내선 항공편 이용 시 검역 절차가 없으며</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">,</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:10.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국제선 항공편 이용 시에는 목적지 국가의 검역규정 및 준비사항을 확인하시어 검역관련 서류를 준비하셔야 합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:10.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">농림축산검역본부 홈페이지를 참고해 주십시오</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:10.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);"></span><u><b><span style="background-color: rgb(250, 244, 192); color: rgb(0, 0, 0);"></span><a href="https://www.qia.go.kr/livestock/qua/livestock_outforeign_hygiene_inf.jsp" target="_blank" class="tx-link"><span style="background-color: rgb(250, 244, 192); color: rgb(0, 0, 0);">검역절차 확인하기</span></a><span style="background-color: rgb(250, 244, 192);"></span></b></u><span style="color: rgb(0, 0, 0);"></span></span></span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:10.0pt;
font-family:&quot;맑은 고딕&quot;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><b><u><span style="color: rgb(0, 0, 0);"></span><span style="background-color: rgb(250, 244, 192); color: rgb(0, 0, 0);"></span><a href="https://www.qia.go.kr/livestock/qua/livestock_dogcat_quar_con.jsp" target="_blank" class="tx-link"><span style="background-color: rgb(250, 244, 192); color: rgb(0, 0, 0);">국가별 검역조건 확인하기</span></a><span style="color: rgb(0, 0, 0);"></span><span style="color: rgb(0, 0, 0);"></span></u></b></span></span></p><br><p></p>
</div>
</li>
<li data-category="30">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">환불(항공권, 부가서비스) 영수증은 어떻게 발급받을 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">홈페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">모바일을 통해 구매하신 항공권의 환불 영수증은</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">마이페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의 예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">구매내역</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공권</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을 통하여 환불 영수증 확인 및 출력이 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">홈페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">모바일을 통해 구매하신 부가서비스</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">유상좌석</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">추가 수하물 등</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">의
환불 영수증은</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">마이페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의 예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">구매내역</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">부가서비스</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을
통하여 환불 영수증 확인 및 출력이 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><br><p></p><div><p><span style="font-size:11.0pt;font-family:&quot;맑은 고딕&quot;"><span style="font-size: 10pt; color: rgb(0, 0, 0);">단</span><span lang="EN-US" style="font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-size: 10pt; color: rgb(0, 0, 0);">타
사이트를 통한 구매하신 경우는 해당 구매처로 문의바랍니다</span><span lang="EN-US"><span style="font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p></div><p><br></p>
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">부모님(타인) 카드로 항공권을 결제했는데, 탑승 시 결제 카드를 지참해야 하나요? </a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);"></span><span style="color: rgb(0, 0, 0);">결제하신 카드가 해외발행카드가 아니라면 결제 카드를 지참하지 않으셔도 되며</span></span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">,</span><o:p></o:p></span></span></p><p style="line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);"></span><span style="color: rgb(0, 0, 0);">지참하실 서류 또한 없습니다</span></span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="color: black;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">다만</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">해외 발행 카드로 항공권을 결제하신
경우라면</span><span style="color: rgb(0, 0, 0); font-size: 14.6667px;"><font face="맑은 고딕"><span style="color: rgb(0, 0, 0);"> </span></font></span></span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">부득이하게 시스템 에러 등의 이유로 인하여</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">결</span><span style="color: rgb(0, 0, 0);"></span><span style="color: rgb(0, 0, 0);">제하신 카드가 필요할 경우가 있어</span></span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">해당 카드를 여정 동안 지참하시길 권장 드리고 있습니다</span><span lang="EN-US" style="font-family: " 맑은="" 고딕";="" font-size:="" 11pt;"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">.</span></span></span></p><br><p></p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">반려동물 동반 여행 시 어떻게 신청해야 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국가</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">,</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">지역</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">,</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공편
별로 운송에 제약이 있을 수 있으며 반드시 사전에 저희 예약센터를 통한 운송 확약을 받아주시기 바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">예약센터</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : (</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국내</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">) 1666-3060 / (</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">해외에서 전화 시</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">) +82-70-7997-3060</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size:
11.0pt;font-family:&quot;맑은 고딕&quot;;color:black"><o:p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&nbsp;</span></o:p></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><b><span style="color: rgb(0, 0, 0);">[국제선 이용시]</span></b></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">목적지 국가의 검역규정 및
준비사항을 확인하시어 검역관련 서류를 준비하셔야 합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">해외에서 대한민국으로 반려동물 반입 시 농림축산검역본부 홈페이지를 참조해 주십시오</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">목적지 국가의 정부기관에서 별도로 요구하는 서류가 있을 수 있음으로 사전에 철저히 준비하시기
바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일본으로 출국 하시는 경우 국립검역원으로부터 검역증명서 발급이 필요하며 관련하여 약</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 14</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 이상의 시간이 소요되는 관계로 사전에 철저한 준비 바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발 당일 탑승수속 카운터에서 수속 시 농림축산검역본부에서 발급받은 동물검역증명서 지참이
요구됩니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size:
11.0pt;font-family:&quot;맑은 고딕&quot;;color:black"><o:p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&nbsp;</span></o:p></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><b><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">[국내선</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국제선 공통]</span></b></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발 당일 탑승수속 카운터에서 반려동물 운송과 관련한 서약서 작성이 요구됩니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><span style="color: rgb(0, 0, 0);">요금 및 상세한 규정은</span><b><span style="color: rgb(0, 0, 0);"></span></b><a href="https://www.airbusan.com/content/common/service/customer/animal" target="_blank" class="tx-link" style=""><span style="color: rgb(0, 0, 0);"> </span><span style="background-color: rgb(250, 244, 192);"><u style=""><span style="color: rgb(0, 0, 0);">[서비스안내&gt;도움이 필요하신 손님&gt;반려동물 동반 손님]</span></u></span></a><span style="background-color: rgb(250, 244, 192);"><u><span style="color: rgb(0, 0, 0);"></span></u></span><span style="color: rgb(0, 0, 0);"> </span><span style="color: rgb(0, 0, 0);">을 참고 부탁드립니다.</span></span></p><br><p></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">소아 및 유아 탑승시 신분증이 필요한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">소아 및 유아도 항공기 탑승시 신분증을 지참하셔야 합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국내선 탑승 시</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">생년월일을 증명하실 수
있는 서류</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">건강보험증</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">주민등록등본</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">여권</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">가족관계증명서 중 택일</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">를
반드시 지참하시기 바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국제선 탑승 시</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">여권을 꼭 지참하시기 바랍니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span><br></p>
</div>
</li>
<li data-category="29">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선 항공편 이용 시 도착하는 터미널 확인은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top: 3.75pt; margin-right: 0cm; margin-bottom: 3.75pt; text-align: justify; line-height: 0.8;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">에어부산 홈페이지 내</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">서비스안내</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt; </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">공항서비스</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt; </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">취항지 공항</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">카운터 정보</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">에서 확인 하실 수 있습니다</span><span lang="EN-US" style=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 0.8; text-align: justify;"><b><span style="color: rgb(255, 0, 0);"><br></span></b></p><p style="line-height: 0.8; text-align: justify;"><b><span style="color: rgb(255, 0, 0);">[</span><a href="https://www.airbusan.com/content/common/service/airport/information" target="_blank" class="tx-link" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">바로가기</span></a><span style="color: rgb(255, 0, 0);">]</span></b></p><p style="line-height: 0.8; text-align: justify;"><b><span style="color: rgb(255, 0, 0);"><br></span></b></p><p style="line-height: 0.8; text-align: justify;"><br></p><p style="text-align: justify; line-height: 0.8;"></p><p style="line-height: 0.8; text-align: justify;"></p><p style="text-align: justify; line-height: 0.8;"><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">전자항공권 여정안내서에서도 확인하실 수 있습니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">.</span></p><p></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">위탁 수하물은 크기 및 중량의 제한이 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p style="line-height: 1.5;"></p><p style="font-size: 13.3333px;"><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">수하물</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 3</span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">면</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">가로</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">세로</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">높이</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">의 합이</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 203cm </span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">미만</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">수하물</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 1</span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">개의
무게는 최대</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 32kg </span><span style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">미만 일 경우 가능합니다</span><span lang="EN-US" style="text-align: justify; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><br></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">무게를 초과할
경우 짐을 나눠서 위탁해 주십시오</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;font-family:
" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><b><span style="color: rgb(255, 0, 0);">[</span><a href="https://www.airbusan.com/content/common/service/baggage/free" target="_blank" class="tx-link"><span style="color: rgb(255, 0, 0); font-family: Arial, sans-serif;">바로가기</span></a><span style="color: rgb(255, 0, 0);">]</span></b></span></span></p><br><p></p>
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">해외발 항공편 결제 시 통화를 변경할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p style="line-height: 1.5;"></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="" 맑은="" 고딕""=""><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">해외발 편도나 왕복 항공권 결제하는 경우 해외 통화로 결제되며</span><span lang="EN-US" style=""><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">,</span><span style="color: rgb(0, 0, 0); font-size: 14.6667px;">&nbsp;</span></span></span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">통화 변경이 불가합니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.&nbsp;</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일본과 중국 노선은 해당 국가 카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> VAN </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">사의 승인을 받고 각 나라의 환율로 자동 계산 돼서 해당국가의 통화로 결제가 진행됩니다</span><span lang="EN-US" style="font-size: 11pt;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">그 외 국가는</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> USD</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">로 표출되지만</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">최종 예약 단계에서 원화로 환산되어 결제됩니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><br><p></p>
</div>
</li>
<li data-category="17">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선 항공편을 예약할 때, 여권정보를 입력해야 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">당사의 경우 미주노선</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">괌 포함</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을 제외한 모든 노선에서 여권 정보 사전 입력 절차가 없습니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">. </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">사전
여권정보 입력은 필수사항이 아니며</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발 당일 공항 카운터에서 탑승 수속 시 입력절차가 있습니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span><br></p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">여행사(타 구매처)에서 구입한 항공권인데, 환불 가능 한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">타 구매처를 통해 구입한 항공권의 경우 당사에서 임의로 변경이 불가하오니</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">구매처로 문의해 주시기 바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span></span><br></p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선 항공권의 환불 수수료는 얼마인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><b>국제선 항공권 환불 시점에 따른 환불 수수료는 다음과 같습니다.</b></span><br></p><p><br></p><p><span style="font-family: Arial, sans-serif; font-size: 11pt;"><b><span style="color: rgb(5, 0, 153);">&lt;한국 출발&gt;</span></b></span></p><p class="tr" style="border: 0px; color: rgb(102, 102, 102); text-align: right;" nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;="" text-align:="" right="" !important;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">[단위: 원]</span></p><div class="tblColTxt01 pdz" style="margin: 0px; padding: 0px; border-width: 2px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: rgb(97, 110, 123); border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: initial; border-image: initial; overflow: hidden; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><table style="margin: 0px 0px 0px -1px; padding: 0px; border: 0px; width: 687px; min-width: 100%; border-collapse: collapse; border-spacing: 0px;"><caption style="margin: 0px; padding: 0px; border: 0px; width: 1px; height: 1px; line-height: 0; font-size: 0px; overflow: hidden; position: absolute; left: -9999px; top: -9999px;"><span style="font-family: Arial, sans-serif;">노선, 항공권 종류, 출발 30일 이내, 출발 31일~60일 이전, 출발 61일~90일 이전, ~출발 91일 이전으로 구성된 환불/여정변경 수수료입니다.</span></caption><colgroup><col style="width: 189.734px;"><col style="width: 218.188px;"><col style="width: 151.781px;"><col style="width: 170.797px;"></colgroup><tbody style="margin: 0px; padding: 0px; border: 0px;"><tr style="margin: 0px; padding: 0px; border: 0px;"><th scope="col" class="thFirst" style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">항공권 종류</span></p></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">환불 시점</span></p></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">한국발</span></p></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">중국행의 경우</span></p></th></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="5" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발7일 이내~당일</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">60,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">100,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발30일 이내~8일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">40,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">90,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발60일 이내~31일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">30,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">80,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발90일 이내~61일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">10,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">60,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">~ 출발 91일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="5" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발7일 이내~당일</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">80,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">100,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발30일 이내~8일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">60,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">90,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발60일 이내~31일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">40,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">80,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발90일 이내~61일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">20,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">60,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">~ 출발 91일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="5" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발7일 이내~당일</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">90,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">100,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발30일 이내~8일 이전</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">80,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">90,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발60일 이내~31일 이전</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">60,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">80,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발90일 이내~61일 이전</span></td><td rowspan="2" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;"><span style="color: rgb(0, 0, 0);">60,000</span></span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">~ 출발 91일 이전</span></td></tr></tbody></table></div><ul class="ulist01 mgt20" style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1인 편도 기준으로 부과합니다.</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">환불 수수료가 항공권 금액보다 높은 경우 항공권 금액만큼 부담합니다.</span></li></ul><div><font face="Arial, sans-serif"><span style="font-size: 13px;"><br><span style="font-family: Arial, sans-serif; font-size: 11pt;"><b><span style="color: rgb(5, 0, 153);">&lt;해외 출발&gt;</span></b></span></span></font></div><div><font face="Arial, sans-serif"><span style="font-size: 13px;"><br></span></font></div><div><div class="tblColTxt01 pdz" style="margin: 0px; padding: 0px; border-width: 2px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: rgb(97, 110, 123); border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: initial; border-image: initial; overflow: hidden; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><table style="margin: 0px 0px 0px -1px; padding: 0px; border: 0px; width: 687px; min-width: 100%; border-collapse: collapse; border-spacing: 0px;"><thead style="margin: 0px; padding: 0px; border: 0px;"><tr style="margin: 0px; padding: 0px; border: 0px;"><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(246, 246, 246); color: rgb(51, 51, 51);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif;">출발지역</span></p></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(246, 246, 246); color: rgb(51, 51, 51);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif;">통화</span></p></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(246, 246, 246); color: rgb(51, 51, 51);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif;">항공권 종류</span></p></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(246, 246, 246); color: rgb(51, 51, 51);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif;">환불 수수료</span></p></th></tr></thead><tbody style="margin: 0px; padding: 0px; border: 0px;"><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;"><span style="color: rgb(0, 0, 0);">일본</span></span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">JPY</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">3,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">5,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">6,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">중국</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">CNY</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1,000</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">홍콩/마카오</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">HKD/MOP</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">250</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">400</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">500</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">대만</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">TWD</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">900</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1,500</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1,700</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">러시아</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">EUR</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">20</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">35</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">50</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">* 말레이시아</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">USD / MYR</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">30 / 120</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">50 / 200</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">60 / 240</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">* 태국</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">USD / THB</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">30 / 900</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">50 / 1,400</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">60 / 1,900</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">대양주 및 그 외</span></td><td rowspan="3" style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">USD</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">30</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">실속 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">50</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">특가/이벤트 운임</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;"><span style="color: rgb(0, 0, 0);">60</span></span></td></tr></tbody></table></div><ul class="ulist01 mgt20" style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1인 편도 기준으로 부과합니다.</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">환불 수수료가 항공권 금액보다 높은 경우 항공권 금액만큼 부담합니다.</span></li><li class="point02" style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; color: rgb(239, 54, 167) !important; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif;">* 표기 항목은 오프라인 발권시 현지 통화(MYR/THB 등) 사용 가능</span></li></ul><div><font color="#ef36a7" face="Arial, sans-serif"><span style="font-size: 13px;"><br></span></font></div></div><div><font color="#ef36a7" face="Arial, sans-serif"><span style="font-size: 11pt; font-family: Arial, sans-serif;"><b><span style="color: rgb(0, 0, 0); font-size: 10pt;">[면제 대상]</span></b></span></font></div><div><ul class="ulist01 mgt20" style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">항공권 결제 당일 여정변경/환불 (시스템 점검시간 이전까지)</span><br style="vertical-align: top;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">(단, 결제 당일 탑승하는 경우, 탑승수속 마감 전까지의 환불/여정변경)</span><br style="vertical-align: top;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">※ 시스템 정기점검 시간: 수~월요일 23:50~24:10, 화요일 23:00~24:00</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">고객 사정이 아닌 기상 등의 사유에 의한 여정변경/환불</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">항공사 사정으로 변경된 스케줄에 의한 여정변경/환불</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">모든 무상 항공권</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">면제 대상 항공권임에도 수수료 부과 시 예약센터(1666-3060)로 문의 바랍니다.</span></li></ul><div><font face="Arial, sans-serif"><span style="font-size: 13px;"><br></span></font></div></div><div><font face="Arial, sans-serif"><span style="font-size: 13px;"><b><span style="font-size: 10pt; color: rgb(0, 0, 0);">[NO-SHOW 수수료]</span></b></span></font></div><div><font face="Arial, sans-serif"><span style="font-size: 13px;"><b><span style="font-size: 10pt;"><br></span></b></span></font></div><div><div class="tblColTxt01 pdz mgt10" style="margin: 10px 0px 0px; padding: 0px; border-width: 2px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: rgb(97, 110, 123); border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: initial; border-image: initial; overflow: hidden; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><table class="table_01" style="margin: 0px 0px 0px -1px; padding: 0px; border: 0px; width: 687px; min-width: 100%; border-collapse: collapse; border-spacing: 0px;"><caption style="margin: 0px; padding: 0px; border: 0px; width: 1px; height: 1px; line-height: 0; font-size: 0px; overflow: hidden; position: absolute; left: -9999px; top: -9999px;">항공권종류, 구분, KRW, JPY, CNY, TWD, HKD/MOP, USD, EUR으로 구성된 No-Show 수수료입니다.</caption><colgroup><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"></colgroup><thead style="margin: 0px; padding: 0px; border: 0px;"><tr style="margin: 0px; padding: 0px; border: 0px;"><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">구분</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">KRW</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">USD</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">JPY</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">CNY</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">HKD/MOP</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif;">TWD</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif;">EUR</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif;">MYR</span></th><th scope="col" style="margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: rgb(221, 221, 221); border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); text-align: center;"><span style="font-family: Arial, sans-serif;">THB</span></th></tr></thead><tbody style="margin: 0px; padding: 0px; border: 0px;"><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">카운터</span><br><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">No-Show</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">120,000</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">100</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">10,000</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">2,000</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">800</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">3,000</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">100</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">350</span></td><td style="margin: 0px; padding: 15px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">3,300</span></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">게이트</span><br><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">No-Show</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">240,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">240</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">24,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">2,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1,700</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">7,000</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">200</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">850</span></td><td style="margin: 0px; padding: 15px 0px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center;"><span style="font-family: Arial, sans-serif;">6,600</span></td></tr></tbody></table></div><ul class="ulist01 mgt20" style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1인 편도 기준으로 부과합니다.</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">No-Show 수수료는 예약을 취소하지 않고 미탑승 시 부과되며 환불 수수료와 별도로 부과합니다.</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">항공권 금액보다 No-Show 수수료 및 환불 수수료가 큰 경우 공항세 및 유류할증료는 환불됩니다.</span></li></ul></div><div><font color="#ef36a7" face="Arial, sans-serif"><span style="font-size: 13px;"><br></span></font></div><p><br></p>
</div>
</li>
<li data-category="22">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">여행사(타 구매처)에서 항공권을 구매했는데, 예약 조회할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p style="line-height: 1.5;"></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">여행사</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">타
구매처</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">를 통해 항공권을 구입하신 경우</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">,</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">당사 홈페이지에서 예약조회를 하는 방법은
아래와 같습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><br></span></span></span></p><p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><b><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">로그아웃 상태</span></b><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">에서</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">마이페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">] - [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의 예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">] - [예약번호로 조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]로&nbsp;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">접속</span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">후 예약번호</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공사 예약번호</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">), </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이름</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">영문이름의 경우</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">성</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이름
순 기입</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을 입력하시면 예약 내역 조</span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">회를 하실 수 있습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><br></span></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">해당 구매처의 예약 내역에서</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> "</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공사
예약번호</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">"</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">로 확인하실 수 있으며</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">당사의 예약번호는 [</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">K</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">로 시작하는 </span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">6</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">자리] 또는</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">&nbsp;[</span><span style="color: rgb(0, 0, 0);">7</span></span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">자리의 숫자]</span><span style="color: rgb(0, 0, 0);">로 되어 있습니다</span></span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><br></span></span></span></p><p></p>
</div>
</li>
<li data-category="22">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">체크인은 언제부터 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><b>국내선 항공권</b>의 경우</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">,</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">사전 좌석 지정</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">승객정보 사전확인 입력
후에 언제든지 체크인 및 모바일 탑승권 발행이 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span style="text-indent: -22pt; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">아래의</span><span lang="EN-US" style="text-indent: -22pt; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
URL</span><span style="text-indent: -22pt; font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">에서 확인하실 수 있습니다</span><span lang="EN-US" style="font-family: " 맑은="" 고딕";="" font-size:="" 11pt;="" text-indent:="" -22pt;"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span><br></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size:11.0pt;font-family:" 맑은="" 고딕";color:black"=""><a href="https://www.airbusan.com/content/common/service/airport/boardingCard" target="_blank" class="tx-link"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">https://www.airbusan.com/content/common/service/airport/boardingCard</span></a><o:p></o:p></span></p><br><p></p><p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:22.0pt;text-align:justify;text-justify:inter-ideograph;
text-indent:-22.0pt;text-autospace:none;word-break:break-hangul"><b style="font-size: 10pt;"><span style="font-size: 10pt; font-family: Arial, sans-serif; border: 1pt none windowtext; padding: 0cm; color: rgb(0, 0, 0);">국제선 항공권</span></b><span style="font-size: 11pt; font-family: " 맑은="" 고딕";="" border:="" 1pt="" none="" windowtext;="" padding:="" 0cm;"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">의 경우</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">입국 서류 확인 절차로 모바일 체크인이 잠정적으로 중단되었습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">공항 카운터에서 수속하실 수 있습니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span><br><p></p>
</div>
</li>
<li data-category="27">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">부가서비스 환불규정은 어디에서 확인할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><b><span style="color: rgb(0, 0, 0);">1. </span></b></span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><b><span style="color: rgb(0, 0, 0);">번들 구매 및 환불 가능 시간</span></b></span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">스마트</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">스마트 업</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">스마트 플러스</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">최초 출발일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 2</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 전까지 구매 가능</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> (</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 1</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 전부터 환불 불가</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">프리미엄</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">최초 출발일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 3</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 전까지 구매 가능</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> (</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 2</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 전부터 환불 불가</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size:
11.0pt;font-family:&quot;맑은 고딕&quot;;color:black"><a href="https://www.airbusan.com/content/common/service/bundleInfo" target="_blank" class="tx-link"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">https://www.airbusan.com/content/common/service/bundleInfo</span></a><o:p></o:p></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><b><br></b></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><b><span style="color: rgb(0, 0, 0);">2. </span></b></span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><b><span style="color: rgb(0, 0, 0);">사전 수하물 구매 및 환불 규정</span></b></span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">~</span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 2</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">구매 및 환불 가능</span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 1</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">~ </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발일</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">취소 및 환불 불가</span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size:
11.0pt;font-family:&quot;맑은 고딕&quot;;color:black"><a href="https://www.airbusan.com/content/common/service/luggagePurchase" target="_blank" class="tx-link"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">https://www.airbusan.com/content/common/service/luggagePurchase</span></a><o:p></o:p></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><b><br></b></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><b><span style="color: rgb(0, 0, 0);">3. </span></b></span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><b><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">사전좌석 구매</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">환불 규정</span></b><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">구매</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 1</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일전까지 가능</span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">- </span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">환불</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 1</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일전까지 가능</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발 당일 환불 불가</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">※ 공항에서는 출발 당일에도 앞 좌석</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">비상구
좌석을 구매하실 수 있으며</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">예약센터에서는 출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 3</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일전까지
구매</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">환불 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size:
11.0pt;font-family:&quot;맑은 고딕&quot;;color:black"><a href="https://www.airbusan.com/content/common/service/buySeat" target="_blank" class="tx-link"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">https://www.airbusan.com/content/common/service/buySeat</span></a><o:p></o:p></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><b><br></b></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><b><span style="color: rgb(0, 0, 0);">4. </span></b></span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><b><span style="color: rgb(0, 0, 0);">기내식 환불 규정</span></b></span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 2</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 전 취소 및 환불은 불가합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size:
11.0pt;font-family:&quot;맑은 고딕&quot;;color:black"><a href="https://www.airbusan.com/content/common/service/airlineFoodOrder" target="_blank" class="tx-link"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">https://www.airbusan.com/content/common/service/airlineFoodOrder</span></a><o:p></o:p></span></p><br><p></p>
</div>
</li>
<li data-category="27">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">부가서비스 변경하면 수수료가 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">부가서비스 변경 수수료는 없습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;">.</span></span></span></p><p></p>
</div>
</li>
<li data-category="27">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">여정 변경했는데, 기존 부가서비스는 환불되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p style="line-height: 1.5;"></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">여정을 변경할 경우 구입하신 부가서비스는 수하물을 유지되고 그 외에는 자동으로 환불처리됩니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;">.</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">환불 소요기간은 결제 수단</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt;">카드사에 따라
상이합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;">. </span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">아래 내용 참고 부탁드립니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;">. </span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;">- </span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">신용카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt;">영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"> 3~14</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">일 소요</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"> (</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">단</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt;">해외통화</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">해외카드 결제 취소 시 영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"> 4~6</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">주 소요</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;">)</span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;">- </span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">체크카드</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt;">영업일 기준</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"> 7~14</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">일 소요</span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: black;">- </span><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">네이버페이</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">실시간 계좌이체</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt;">영업일 기준 당일 또는 익일 환불 처리</span><span lang="EN-US"><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt;">혹</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt;">해당 기간 이후에도 확인이 불가할 경우에는
카드사 통해 문의 부탁드립니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt;">.</span><o:p></o:p></span></span></p><br><p></p>
</div>
</li>
<li data-category="27">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">여행사(타 구매처)를 통해서 예약했는데, 부가서비스 신청은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p style="line-height: 1.5;"></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt;"><span style="color: rgb(0, 0, 0);">타 구매처를 통해 항공권을 구입하신 경우</span></span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">,</span><o:p></o:p></span></span></p><p style="line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">당사 홈페이지에서 예약조회 및 사전좌석 지정과 같은 부가서비스를 구매하시는 방법은 아래와
같습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><b><span style="font-size: 10pt; font-family: Arial, sans-serif; color: black;"><br></span></b></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.5;"><b><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">로그아웃 상태</span></b><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">에서</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">마이페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">] - [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의 예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">] - [예약번호로 조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]로&nbsp;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">접속
후 예약번호</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공사 예약번호</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">), </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이름</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">영문이름의 경우</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">성</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이름
순 기입</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을 입력하시면 예약 조회 및 부가서비스 신청을 하실 수 있습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.5;"><br></p><p style="line-height: 1.5;"></p><div style="line-height: 1.5;"><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">해당 구매처의 예약 내역에서</span><span lang="EN-US" style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;"> "</span><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">항공사
예약번호</span><span lang="EN-US" style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">"</span><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">로 확인하실 수 있으며</span><span lang="EN-US"><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">, </span><o:p></o:p></span></span></p><p><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">
</span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">당사의 예약번호는</span><span lang="EN-US" style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">&nbsp;[K</span><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;">로 시작하는</span><span lang="EN-US" style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;"> 6자리] 또는 [7자리의 숫자]로 되어 있습니다.</span></span><br></p></div><p style="line-height: 1.5;"><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">기내로 가져갈 수 없는 물품도 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>기내 안전을 위해 반입이 제한되거나 엄격히 금지되는 물품이 있습니다.</p><p>아래 링크를 통해 확인해 주십시오.</p><p><span style="font-size: 10pt;"><br></span></p><p><a href="https://airbusan.com/content/common/service/baggage/restriction" target="_blank" class="tx-link">운송제한 물품 바로가기</a></p>
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">크롬 브라우저 플러그인 무한설치 문제</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>[크롬 NPAPI 설정 방법]<br>1. 크롬 브라우저 주소창에 chrome://flags/#enable-npapi 명령어 입력해주세요.<br>2. NPAPI 사용 항목을 찾아 '사용'버튼을 클릭해주세요.</p><p>*설정 후 반드시 재시작하셔야 적용이 됩니다. </p><p><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAdoAAAC0CAYAAAAzbe0xAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAHoZSURBVHhe7Z0FoBzXebbfZYa7e5l1xWxLlhkSBxyHGdtgw9AkTds0zf+3+ZO2adO0aZrEDTacOHHMKNsySzLIYobLvMy8//vN7l5dsSzfK8vWeezR3Z09c3DmvN935swZXZmAxONxOBwO6PV6+apQKBQKhWIGUKqqUCgUCsUsooRWoVAoFIpZRAmtQqFQKBSziBJahUKhUChmkVNOhsoWGaj6eTolHlXI51AqlWAy6qHXHS/UaSI5eE6Ha1k+fU43eDUPlRo59zhVtiT7JwtzOr8/d87sqGM5+5U+kymeqm5nglKxiGw2q12jTu1anam6VygUM4FckblCEfFUll8MMFss0PF6PanQyi9bxwpHdqXV3iSXy2FiZACpZBxtfjtsZsOZdTRykGxH9xnTIjs2yLQfT5PTOqIaSMot25G2w7ExyJ7aXl3ty1HlqP1e+1s7SlfWVdI5utzHQYJoR1UOPSoN2VFhKpz27XCwyiHy3/TQpPLDVMCpMLUDBX6ReqjtOja/x+w4Q47I2RRSr7Vfjh/iRJw4tBanbM8569MOPOpY+SopynZ6nH5IaRW5TOOxKAYG+uHzunHNlZfBbrNqhq5CoXjhkT7AZDSgbzSEtU/tR1ZnRVv3XFittpMLrVzEv7jriWO9Velr+KeYy6KYjsFYzkDPPafTdUiYo2I7PtMiO514j8exx50ipqN+fi7parVY6201Tn609uvRQWpxHMWJozxmx2FqP03Fd5Jar/1UTV93ktGJk/02G1TOzumcpMzPhWnRTH2slr/CCdI5w+SPSGOK5xZZqVSEw+7AimWLMHdOJ69VGrfHVpBCoXiBMBp0iCfz2HJgFE/vHUShpOM+w8mFVn7atH0/Xd/qjhraERVPB6UsysWCFvZUXfBz6hJeZP3HEdk9jbxXq/AwZ1Re8Waei/A9l7DHgYc/zxieM1q1nFHdnIKjCzIbaRzFsUmcbqISTvNr6cXa0dDg519b5SeFQnHOIJpYZLcciWcwEoggVyjQCeW1ezKhFaKR6El6V/nhLPRQLwJmsxZeEHE7jzhb9ft861XyKSMKZ3tUQaFQnD7a5cmLXeYxlTR5lVuFpxDadDp16h5CXfgKxVlBLle5pVO9bBUKxTmI3G41GA5r6SmFVvYrXlwoj0ehUCjOHZTQvsRQQ4sKhUJxbqGE9iWEDCnm83ltUygUCsW5gRLalwjixUYiEfT29mJ8fFw9X6lQKBTnCEpoXwKIyEajUYyNjaFQKKCjowNms7n6q0KhUCheSJTQvgQQoT148KA2ZNzd3Q2fz3dMOyoUCoXihUH1xi9yahOfxCAyGAzw+/1KZBUKheIcQvXILxFkyFhQM44VCoXi3EIJ7UuI6l0AhUKhUJxDKKFVKGYBZfQoFIoaZ11oZWhT7iGeb/cRp5d7+nb0UK98V8O/L27k0apkMln9plAozndeELU7nsCcTV5IMZN0a+WfvgnKC3ppIBPTHnzwQRSLxeoehUJxPnPWHu+piYs8hvLwww+jpaUFr371q7WZsmdrcQVJP51Oa96GxWKZKu9sCpzRaNTKuG/fPuzduxfDw8NanZpMJjQ2NqK5uRmXXHIJbDablqf9+/djZGQEF1988Wl11DWRfuaZZ+B2u7Fq1Srtu+KFIxwO495778U73vEOrf0VCsX5jeEfiXzI5XLaIge1jruG7H++iJhJhzMwMID77rsPGzdu1NIRgZH9Z0toJR+pVAqxWEx75lQEUATv6DLPBJKWxB8MBvHkk0/iiSee0MRwx44dmugODg5qgjo5OaktNmG325FIJPDYY49p9SR181yEVuISoRYD5nQR0d+5cye2bduG3bt3Y2hoCNlsVjNApF5mg/Cu+7Fz23aEbW1wOiwwzXzVv+BkMhltha7Fixdr58EZUcogFTiEPX1xZHQWeB2z0x7nFGLvHn0+RO/FD//zBtywIw+rUwfLxAH8YlMOK+fXQZkw08iM4OCBEYzG9XA6eV0Zjn9hZYIDGDrYi3FDHTxWOgEvpeuvnEJ4cAc2belFxOSHi9eM6Ry5Qznr2RAhEMEZHR3F448/jk2bNmnemyysIL+dzeFSSUuEXUREDAjxLMXDlf0zKba1uERAxai47bbbsH37dq0e5s+fjzVr1mDlypWaRxsKhfDAAw9oXr4MNz799NOaRzST+TkaEVMR1nXr1uH222/HTTfdhD/+8Y+49dZbNUNo/fr1WnudGTFM7HkUd9x6C/7whz/gltvvxKN7xxCuPH2E0PY78eS9N2LrcAwptUrkiaHQJsf3YPPWgzg0nqrufIlQyiGfGMFAMIPC9HNAV0I2EcVk/wQS2ss8g9j3i3tx39pH8FDvBIKTvdj77KP45q37kakecrYp59NITPZjIlFEXst7CeVcHLFoBAFpplwKidAEYtkCqqf82SEziL00mrcemEQyd2IDPc06PLj5aeyayCJ/9rres0SR1R/CxPgkwqk8zqUV32dVaGsiK2vwSudd82QvvPBCXH311drns7kmrwiq1WqlxefUxFYER8RW/s6k4IsXI16NeIoioCKm7e3tePnLX473vOc9+MhHPoL3v//9eNOb3qTVhYQXA0Q8X1mneDZFVsopnuvNN9+sec/9/f2aQSD1IOL67LPPaoJ79913Y2Ji4jndZyxGQxjf8RjuueMn+Pd//xb++Z++gX/79n/il/c8iT2hHC8DdkvsqLLpJLJFdlCVwxTHpYxSsYBsjh22iM5LiFIqiIldG/HUYAKZ4rSyleMIDOzDsxsOIVLi2RLbhB/92IFL3v1/8d1PvgHXd1kQTaYRZSf6wtRIGdkwPcfNG7EvmENGMlHKoxTrxaG+/dgdKqMYHsfwji0YimeQPZuZLBdRyBeQo+VystOlzHOqkKPIst99YepwFtHZ4G2/AJdfdSmWtdphP0e8WWFWs1ITHBGQDRs2aEOjy5Ytwyte8Qrt3qQIykwK3OkgeZKhURFb+SwerYiMLPgwUwInxoWIqxgXMqS7YsUK7X70ZZddpg0nzp07FwsWLNBEVvb39PRoQ9riyYrhIcfPBlLXUl65V7xlyxZtWFuEVIacZZRB0pX71yLE0l4ixJKv04Kd5MjDN+On37kND5WX49VvfDPe++53483XvwoX2cKIjo/S15V71haYmJ5Rz7o+hy6EcxGd3sD6MvA8nT3D6+xTQjI6if3bY7C6jixbOTWEickhjFq9cOppgI/vxS1dK7Dqujfi9XMaUFdnRVlvhN1iOGaE+axQpsgHx3Bg1Ay7VQ+TXKY0CPKJIGLxCDIsSy4RR3giiaJORskqh50d9DAYjTAaZHJldddxKLPP0xtNMJ7dzJ0ljLA4/WhuaYJfho3PoSLOWlcnIibitXXrVjzyyCPavciFCxfiZS97mSYyMnR7tkVWkDRl+FiEVjYRVxETMQJqqys9H2rifejQIW3iV0NDg1bm1atXa8sjShoi7GKAiHctnrUInPyVe+Ry/Gwhnrt4rSKwko6kKXUgwi/D2TIBS+4NX3nlldoQt5Tj9O7R52npP4gN6/+Ah8aasez6j+Pv/uZv8Dd/9xX87Zf/Gh959TK0W9IQydbO/bIOenYIxy3qyU6JU54uz/N8Ovun40mo9hL8w5qqfH6OvACXFzlVokFEowEczHThwiYHrNNsylT/GA29Anyr5lJozTxhixh7XRecnnIl1uneb41TlvHUlXDa9ZQOIEIjIeK7EHPrzLDKPh6bT+thMRjRXM8gBR3yhlb4rRbYtYPOIlIQHYX0hTFDFCdhViZDSRzimYnYyDCkdO5yT/a6666bmuQjYaSzP94mPF8RlvhPtAk1cZN8ysQoEaHavlqYM0HqUMork5/kbToisFdddZUmqlJuKZfEL39lmPiWW27RJkiJ8NbyIhOa5JjTEf5aXk81GUrSljDiyUpa0q5SZmmX5cuXY9GiRZohJJvEIUPd9fX1WpwyUetkXnY5E0P/vT/CulgdLvr81/AXC12wTGkDLW1PA3xeP1xs2+C2e9EbjMPc83I0ZBKIjPRiMBBByWilV01Dg8UpJCNIJUPI0ltIDAxjIJiDzm6DXWY2pIIIDveib2gCY+MTmAwEAacbNpOR3QsPzsUQTaUxkSvCGD+I3v5xDI2kYHB74DAVEafHtPdgPyaCEYQKTvicRi1NrT/m32IihPE9+9FPw3CCW8baAKfluUmd1K+c+6c1GYrnQSmXQDwSRjieQiqTRU7HujBmkZwcwIExE9z1HjTVFREOxPh7gXoj8wxkFj8PL/HcTUp75pEvZBCJJGj2mGHm7/pyAel4FNFwFHEak8l4GgUW0mCmcSdJF3lMOoF0qYws6yzJPETTeZQocgyCYjJMYYkilkiBV0fFY5K60pB7kzFEwjH+nkAinkeZnpKZHriO6RazKUTjbDe2i4EVPHVYuA+j/QPYZVuKS+f5YJ2KMIH+nYcwHrOjc8U8eMKb0bvpCfxoWxmr7Fm0+xvhLExgz75DuHOoBZ974/yK0IHnyGAfhvoGMcj2iiTTKLu8cEyr9nIhisnhAezvHUYgHEe0YIbDGMFQSs/8Ms/0PnPhcYzu249enovRaAlWrwOm6flmedOT/eg/1I/0nEuwvIHXcDqOEMs/2tuHUKIAi9+F1NgABkdLcDTaYRJDWvo0xi/1HA1FEE8mkMwWUDKYYWLZGQvrMY1EpogCr8d8KooIDfFEOkevmJ6nUY6vZiHHNowxf3HWN9s8S1E3VesXmSHs70sjb/aiq93KoAnEYnEkU0XoKfpSFiEdYP0PB5FrW4Z59VaYtXrKMF6mG2V4tnWa146B16KMGxwu//HI85xJsmaKPOdTiPE8S/A8yuRoeNhM2jVT5rmQlfOnyDLz7EtM0vvnuZhKZ3nN27RRgVoaMqydjY4jxPM0yXbM5HUwiiMiERVzyPG6SmZK9FuTWr3H4kmkeT3QatfOO8aAYp7HJrIo0/AxiHevxfzCM+NCWxMRub8nk2ykw5G3ycgQqXhM8rsIiIQ52TaTHF2mGtIJincrIiQC93xnIku+RVBlxqkMu0p8r33ta9Ha2jpVL4KkKTOfZeKR3JuVjlnSlfxI3Uh48SpnUmhFxOXRIXnsRNr08ssv1zz5JUuW4MCBA9pEtZoBJCMQcq9W7jGL0SD5qaurq8Z0NAXkk8PY9tMgL+qL8ao/W4GWozVZVymbXC+hbWsxmI6wYwY2/fO/4Jvf/S/c8Ps/YdxBkV+6AH46MuPrf4H1D/4CT1MgN/2/b+Mf7g2g4aKVWNFkRWjjj/HDr/01/v4/f4H//dWvcePvf49E93VY2tMIl0zMHbwXNz32OL757CTanv0s/vLvf4If/HQLsPRyXNwyhjt+9K/4xJe+jp/fdB9uGezC9S+bA5+ZXYpWjUkM3vkTfO9Df4kv/+73uPHGG7Gn9XW4bK4P7ufw1sHnJrQlTGx7EI8/eC/WPbMHOw6NYgKtWNZuRCpEoR3lRZobwMSB9bjnwWexY88wRtNudHZTpPQliuwIdq9/CvtoPIwED+HBB3chaGrB/HYHhbIXz973ANatW4/Ne3dj6zM7MJIywtXahjozr8P4GA49+RC2h2Lo270fWx+6H49uH0VMV496VxaTz96Dtesex5PPbsfuuB0efwMaHNVh23wMoZ0P4I4HnsCTm7dj81MDyLq98LXWwV4KIbL7Cdyyth/Gnjb47eapGcLh3h3Yt3cMhkUXYQnbkzpSIboNW3aFMOFYhgs6JrHjl2/C+76+AWNPPoonbrsRw44lWN7ThNDAXtw2OE1odQN49PNfxNe/9m/4N7bZPU/tRnLxW3FNWy1iepi7foPvfPOr+MLXbsDv1z6LRwL1WJj/BT67uR4r2tvQbmV6P/9P/Nun/xb/+Nt78dATacx93RXoolpXTmW5buMYO7QPO3cU0HPFSjTmx7Bv3V1Y99hGPDswSaNvHP179+HgoQGMT/Sid2gUk7pGGqsenpdhHHrmMTxw20N4esdmbO2lQWBqRrPfAZuhiNzgk3ho2wj6ewdYp+vw0PpnsGnfIMbgZxgvnNUJ5+mBLXjm4bvx4MZN2LTtAPYOleHvoBFrZ3+VGcT+fvbV5TwsqV14YN0TeHrTNmx7dhym7hb4PRR+xpEJ9GOMQpudLrSRrXhi3cNY+9jT2LZ5Jw4MhnnMYjTZxEw+EVInI9hw4yOYoCFz8OBurF/7MJ7dcRD7D2bQsGoO3BKmNIEdD21gXsdBUxKbf38Hnti9Ezt27UbIvRjNdRbWQSXGDI2AHWt/i7s27sa27TuxexBwN9aj0cWzJzGIg1ufwYPbE/CXt+DOtevx5FPbsHvPJLIOD5qbPSxfBsH+bdi4bjdS/hZ4PBaanOcGMyq0cqxsIrJ33HGH5qmJWIiIiPckHb3MqhWv6njb5s2bp7w7eafqmSDpS55leFaGg0VMZAhU/h5vk3xJeBEi2URspHM8Xl2cDiK0IlwiVhLHG9/4Ru2e8NHGg3wXQZ83b57m9cr9WtnkOVjxMMWbPB2Do5bH0/Fo5d6szDSW9rjgggs0AZVHjaTOZWhfxF/qQAwBeewnEAhodbN06VIt7HEp08oe2Y7fr48h2HEh3nZVY7VzOj7p/odw52+fxsb+uVh01cW4/OXLscQ5gAfGnLB1LsfF7TbkDq3FnT+7GX98opmd2uW4/JVrcPGKHlif+S6+efuj2OS8HK955XW49qo1uGyJCVt/Mwjb3AXo7PHAGt+Bh2/6EX5521b0XPwGXHLRNbh0TgkPPfAn3LaLFnfjMrzq4tW4aJEXeOY3GOh8FZa31dHbzaHvF9/Euj88jci178QrXnUFLr9kAfDED1FovRyNzT5QY06L0xbafBaB3Q9j/Z4wcnULsHzxXLS43XDS03R2+WGaZMe+bwCjpTo0dS3E3E4/RSyIkUMRWLsXsgNi22cmcGgLRWpnFOXGOVi8oIseTT3sFOcdG57GjpADjQuXYsm8TnTUl5AcG6fY2tDQ6oO9EMYQO6/N24NgAliwsBvNljz7tM04OBJA1NaG1q5udDfrEewdQ1rnopD6mL8AxvduwiPbk8znAiycOwddnihGAlnEDX50eLNIHdqC+5+Oo+WixWh3UVC1AocwcGAEfQEXlq+eh0Z7dTSBpA48jgMxCyxzVmJJo4ECbEWdoYwHbJfgva9/NV7/8iuxoD6D/v0HcHvVo7Xw+ui/904M29kZX3olLr6sBy3s9DfdGsaSt65GkzGP4r4/4Rt/3I19WIp3vvbluOLSZVjo6Md93/4Z7qt/Nd5zaQcae3+GuyhKQ93vwVtfdwGWL/PRK5+LuTQELNqNvhIzOIr+/hHsz/Xg5ataYBFvl1aCxaajN2qH1TcPly73wmIoIde4HCsXzcWc9iYaGUmM76AY70nBMm85ls7vhN/I+pkYR9bmh6eOnnNgFzZvegYHkk74e5ZgbrcfbkMK44MxGDx+NNZTJKN7cWCM15ilA51dnWjzmpAb6cUE67uxiedmcQKDB/Zgu0wwMzdjXvccdHe2o6lwCLtG9cxfA5poieYoZiMitO0U2gYKbXIPHr1nK8bMDehcuBDzO33w6mPYuyuLhkU0Xnn+nrgXnMTOdRuwbbAMc2OHdo41eW3ID23GPuM8tqMDBl0EvZufxZZnhhAz+zCH53hXRyuaHDEc2BmC0VcPv4+ef2IIkyOHsBtzsWRuB1rqbcgO9SKsd8He2AivbgKje57G/dvZJ9k7sKCH51yrH3W6IMYD9N5puMzxGxAd2Y89WydhnTcfzT4bLNWcvtDM+KNo0rHILGN5ZlREVr5LBy5DqSJqJxMvERaZlCPHycQh+S4C8VyQ+OX42rOyp4MIjxwnm+RRNhHHM0XSF3GXIVfZJN7poiliJqIoYieiJsjvtc9SZpmUdLK6eq5I/FIuMS7ECBHRvfbaa7XZx9JeHo9Hu3crk7guvfRSzfARJC8nbYNSgZ5RCPvr0ii0mzSr+aToiiik9HAsXYmrPvtarKbeYaQT/Z/di9DWEaQv8UFvkslSLjgbF+LiT34Y17bJgUE88pMt6M0txzUf+SK+uNJTFfQD8G36a9xJI61lVTteZmTnYdLD425D95VfwnsWM0elJ3Bg6ftxT2Ixrv7gO/GFhTTVcwfwZPQP+EZ/AnHako3siu/dMYadHdfhU//0CSzW4gaG/+syfHnPAPxzOvDKtpm0j9khJ0exf9tBRBzLseqqK7DCx925LBJjY8jS0y3zPCnrDLDW0yhZuYSeF5AYMKJ8/24MBTJY3ESPSEevy0SP0e5C67yVuGKenLdxjO7ux352sL6Fq3HN5V3waafSPPgfeABPDOzCofmtcLoMMJlZ1wY32hbSyJnrgS60Hevv2o3HRh1YseJCXLrAyTYdh27wTgxEg0iU5qEuMoHx3lFkGtfg6pcvRqNmS7RBf8cmjPQNIUAv0dW+HFdcWUKHg/HLz0J6GNF8AZmGhWinm3b4Gc48jYccDOYmtPMcMpvr0XnZF/DJOhO+cu9F+NCHLsUlHgYLb6w+UnOYcrERyz/6XrxBm5lEu+OZm/B/3nMzDuQ+huWmLAYf/xG2BF+JS9/1eXz+ispgc/ngjfirXzngtprp8eRoFDyAPlsdFvwFw7RLiDFs3cR61a5ZZrJURj4URIrXpHXBfIoPd1tcaFq4Bk2dLhQtSZZpJS6aP4G+zTvgbb8WVzVJPAUetwvP9LIv8q/Eq169BPWyO3EQO9c/hV0jk2ho8mIODXIZ2nU0dmLeqtWYyybMjm6G4f5NmOA1GS3Uw8bzxdzYg8VLW9GpXWQ0Wso34d5YHFE5f0X4y0zP2AhP5wpcttJfuT7mFTB2Uz/GhzqRbO6SPVPw1EG69ynsTTVi8eVX4cqOap8X3oXbf/kYDgSY3wbjlMd5LHqePzL614D2hSuxpsvOpgyjX3cQv9o2iuSyBrYlzzEjz0+2T13DXKziucirj4ZLI7I33o+hMRpHrawDVrPZ3Yi5PcuwQguQQFf+d3gkFcNYEuhmpRuM7F9sTjjaVuLyC6TjYHJjm/D44/sxvq8f8QWLtdsbJotJm2w5c73n8+ck5vaZIR26eHVtbW2aUNS+T78XeKJNPAC5RyjPl04XpueCHCfCKUIm6Z5sE1GvzbatHStiJ57m80GMi5poiugeD0lLDAER5NqkIxE6GaoV4TupJ3SG1OpUxFY8VvFiZbKW1IV4YWJcyBCx5EeQ9pNynDQvDKNnGGfSAEfs1I8MZOJZzKXn8fo/vwBdLtnDI1pX41VJP+aMJbQJU5lEFs0Lm/DGj6/B4gYJQ3I7sC5xCY2TN+MD7PwPX/vz8O4v9GBLZhxbRmkQZJLIda9G3ds+jZd1VfOtb8EVjivxsQspOl0maGZDwY6ONZexY9KhJJEFtuKZxm7spKDG1q/XZoyvX78RYw0X4f7BIA6GKnUyY5RzyET7cCjaiPbuLswVkRUofM7OLvil06TEGV1zsbCDAlTRCDicTeicY0U+l+G5JW3KnXobWnvaMUd6aCEdQiyeQr6J19Wc5qrICj509NAjcrLzCsYRzxbZARrhX7oIHc0UWQlC8bG2LICveQF6POxItePc8HntcNHO0OtKiMdSCEd0qPeV6EEMaYuvDA7zVMgmYEqOYSJrh617Da67/mLMdde82RIyAxNIZwtwz/HBpN14q0LveyDuhsHSiFZnNbMlqkcyg3JW7i2nKucV/5neecr5Oef1r0TjwD7seOQxPLZ+AzYeDKBuYV47vFyIYNdjI7hsXgeuXl6tQKJruRIf+PQqmO0G5PIGCthi1BuKCD3+MB57chu2DdVjJS1Au6OSWqmYRYheU4IG4twu1rG0TTKAsaH92L+3F8FMBLHUBAY2H0Jv3ySK4WEKSITZpwDHQohSWgxUq/wQ64l1NTwZQYr1Hg6nkYzlWQ72BZ756O7oRk91BpXeQmOj2cDzPI+MDCp6FmNuA9shOoihQdZX7xgSNLB0ch9STugyw+laeA4swpqF3sPXR/0qLPMVYMqyvWmklKvGu8iQnlfC5KEJOFq8MOfClXZkQw4FS/C5RzE4xnyxIuOBcYwMME1Jd3AEIxNJFKoXeqFgQ8/yOehsr2acotowfwnqWPaknJzcSkULjZL5WHpJVWQFSycuXObQ7qmGeC7B0YH6tkWYl+zDwADzcWgICQNPODGgZBKcxKP3wN+6HFdXRVbQ++aiu8mD+vyYmIMzL2gzxIzmSzpy8dbk0Z3Xv/71U8Of4i295jWvwec+9zl89rOfxWc+85kTbh/96Ee1+5O1odzniqQnQ7Yyw1cE+0RbU1OT9lfuH4soCyIoMgtXxFeoCdNzRYRL4pXjZRj9ROWQ32tpSBi5L3rXXXdhz549My600inVhFTSlEeJ5BEeMX66urq0fWLoyGxjGUqW72KASPhafRwXvZFi4MX88Rzq94cQru4+GXqjeFIst3bNS/kp6CLY1W9ah8rym8wy0UF2kHCAlncB47yQK57GYYxtc2G0OlGUBwjlN3qBOp4DuVKtW9ax4zHCwXQN0x4yLOsN2ERjIy3NEw/CsPkWPPStL+BjH/sIPvKRv+D2IXzoK79HeiIG2+HZXTNDqYhiMoSExQ2L1YGqRB7LMbNI2UVq461S1uoeKTL/0XYLuTxyCXnERMIeNkkEq90Ep8cKfVkmLFYi0BmOehRl6p56bSe9CV0aqQwNQ5nLoMsgODmKXY88gHtuu01bkOWOO27FI7sGMF7iUXr2A3KYpK8dL8Rx8FAWyYQHC+ZUJsHUKA5sQchXByuNc7+UT3bSo9fa8iT9QJnikg6P4Ol/+xq+9t4/w/vZbn/xN1/H7w7soTDy9+Ik7afFoO+Jenf1IEFn5jktk+dKKOjtcF/yGVzT0ojod9+Gd3/yK/jbX29GIJ1n/y45KaKUD2A4XERYvxBLxSUtJREbeBrr1t6H29duwa4tz2LPo7fgtkc2YtO+Pjx55+2476GdGIyzHQo0iAJ7sefptbj9DtbV7Xfw70N4eAuFMqeDVSwZaQY5Z8XFnNYO0iYyWUqQiWvpgR3Y+tDtuOO223HLbWtx/+ZxjI7TCKkO3PEM4DXL6/GI2dlsS/4r17PUYiVO+Uf+zSCe1iOyZwOeuOsOxiv5uw0333U/NgWMPEaeTIji0MaHsfbmW3DrrbfgltvX4r71A0hodSPwuqXRNHXuSZvxnKt8readm0EeVZt+KrJ9tUe7GL4sbV0qIBMaxt4H/8iy3Y5bmYe1m0cxNEEDV25f8nzkWcpzi+WrRqHBPMq5Km2pla+6nWvMcO8h9VbWhEvu68ksYxEcGcaVCULiwck9SfFuT7bVxEC2M0FERcRW8nGyTbw1yVNtiLn2fO2ZerSSrniwLpdLm7Urn8VzlPhrXvPxkLzI/WtZ0ENWkBJxnmmhlfjEe5X6laFgyZusDiVpySpVb3nLW7R7xdKp9fX1aX8lX/LojxgtJ8YBs7MNS9t2I5t6CE8mDl9cJ2o9GRIt5KV9qzukw5P21i5+ItcfReCIMBT7erMVfl5oR981KicnscBpQ6O1cgnqZNiVdX74/JGLsEjhpbhV90jmSqyHeDaLguw0WJGdcxkWvumD+PxnPolPfuLj+MQnPoEP//U/4dt/fiVe1noSY+NMkLJaWHcWGyy1c+OYCqtcA9PHCbTrgj2K1BSjmEKKOlVctrWR57+endvRURak0yqyba0ykiOdaaWOp46VI7R9R6XLmssXSvRw2ImWjHDSuGpfegFWXXwJLr7oIqy6YA2uuf56XHnxMnQ4KrOaj6DYh8G8Dil7E7rK4qkdZnRnEBaHE3WNNDemF+qESBjmLbMdt35tHfoaL8d1X/kivvDpz+Av3ncdrmoSz5kh9DSaW31w+a3Ve3XV8jANM8VBkipJ4xu6sPLaD+N9n/gSPv3Oy7As9gf8/e+2oS8uo1EFFCIjiNGrlXvg2pRAnQX2hgVYsmQlFjTVo7urGysvW4m5czrhq1uKNZetwoUrutBgM0Gbu+tqQ+v8C3HZJWtw0epVuODiq3DVNa/A9ZfMQYfbyGtRJILnaLUtKlTaWcSFpzySvZuxtS+KTJMcfzkuv/hCrOj2wKxj/tieU7BQU6KnQTFN5JDOHRm3Fj+sMBuLcLQvwIILL8bFa9ZgDfN3yaWX46rr34qru9iHwo5GeqgrmPc1axjmopVYudAPy/Rzj9fqYftV0tFOUK2ValSv7CmkD8jE4shnC9RlXpeBfdjxzGaMtVyDS5nWJRdfhJXdXjj4W1ZWutIOl0iP9FrLZZYtk0U8qclwde+5x4wLrVDrpGWWscxuFeGSSVD333+/JriCDJXW7ocevYkIPF8kDyfapBORNGSylBgB8lm8NhFIyav8fqZIXOLJy7PC8lkmeMlwsCDCLmJcQ8RXDAK5Hyv3tEWURRDF234+eTgekpZMlJIheolbxFbKL2IrK0NJngURfBk6lrxLfcgCI+L5nwyzuxkrr2uHK/0Q/vCDddidqFwXUyUND2BkfBRRfjx8X+454lqEK6x7MLJ/Ax6P5iCjaRUm8ehvdqKlZEVXvURead9TUw0jBo14AD2L0G1y4NLOlXjXhz6OT37qU/gUt09/7OV4xYIuOKu3AmYMvQkmbzP8hRGMDI9hTE55yb48chMKIile5Zl2HU4XbF4H9MEhjAfC0+oqi5GRIIaDJrg9JlgtND+mefgnR4Rdrh+KrM0KX70NZt98LFy2ChdJB81t+dw5aKGh6tZnkQv2YdeOXkzSC5YUinuGUDBZ4O1ugWG6a5M/iO1RL7yuOrQ7p3lGJ0OuIXbmpeEn8Z07YtC/9i/wwY99Cp/4yAfwzkvqaDxVjBC9sRkLrshi69goNg1rB3IrI9O/Ad+/fR/iqTwFN4PsWAgxw2Jc/d6/wpc+8268ZdkE/nDXXvRHaIBTBENDUWTzZrQtqrrFegusvm4sWbgYy7u60DNnHi5cdQEWzOtBc8dyXHrxaqxY1AofDQ6j2wO71Q6vn3m58KLq8+rLsWppExr8FpTlgjhZE2j34LMY3rUd/WE7mldcTLG+AKuXd6HOzHNSzl0pFs8nYzGIUHAcg2kxKyuUA9twIE2nwuKCR3p7XhuSnFwjJRoBLS12GrheNC9cjpWrL5pqyyUeG/za88t2NM1bjBUX0UigQXXR6uVYsaAeVhlGOQ2kv9Pr8ghN8LwbmjJzUcyOYufBIsx2G42TDMb6DuBQbxTui1Zr6VywjEYNDecS67/SZ7JNiwmkIgM4FKnEQRVBIdaPoWCMBlwzmlhqbZS5+uu5xKwIrSANKd6hLNYgs2mlskRMZDauDFvWPDYJd/Q2m0g+JA0Rk9qKUCJ28uYb+ft805f4ZKhc7jWLNy/eoayMJfc/xLiQcks6IugSVu7HyiM+srCHeL5ynAzfikEw03i9Xm2oWFaiknKK2Mp9WhmyFsGVmbK7du3SwsokLnn0R8Ke0rs2etB82dtw2fwWxNb9Ajff+zie2kQLfOtmbHpyI55+4insHglDe0MrPQPxqirDvLJD/mFeZFKVGEGyq5RnGFkHd5pPpevAlYuLSE6sxe9uvRsbntmKHVufxqaH7sStj3kxp74Vc2TCTLFAzyuHTEHOpcqhIr5Fdvh5WsbiNdSQe2+lfBHlAjtU0wpcb5rEvI1/xC8eOIjdrIedO3Zg11MP4+nBmDbhZGYxwmJrRnd9GoHe3di6+RDCwQkMHhxAX38ACelcKCbSRrUh3grsIOmZy7KMUhT+q4WR7XBdUbjqGtCkH8Mhtuu2fWMIsp0nD2zBwYEo4s4OtLitsNITknOwyN5pKglGqsXPfYerip/ZPkWGz7MeLP56+BrtCO/dxvgGMRYM8poewoF9AxieSKFcjCNx6Cncd/dTOBCna0mvat/+JCxmN7rarEcOIQ5sRq+dhgzz6zzCCmPiPA8ybJ+p8ou4sq3SWbk22PHm9MgsCvAaexI7DxzEgc33Y/2mZ/BEf16cdlaxGV3XLMT4wJO4+6bb8Ozundj6zBN45OmNuG3DOIwUJ5u5gOD+Hdj40IN4fN8+7N/Rh9HJOejuqYfbrqfdwzYZL/OcasBSTy1/TJvXRImGSywlowIO2PXyzGoCabn1ZJIVmsRjtsLkbqGHn0V6cB+e3h9GMBRGeIjicHAf+kIppEqMSwTi6HaWdpB21dqZ1wHFXZenYxAM8DwZw3B/L/YPhRHPVMWL4fXFGAJjh7BnzyEMj45jbHQY2x7fgVAd27ujCbRjtDYsSZuzfqR9HfOXwx7sRf++nTjIdgzSyBvpH8SBnf0I8TygzNHjZHnYX5lkMhINTq1sWqK1uKZdp/KB+RUvvXb+6PTy/OwI+nbuQl9gAqNDfRje/hT25jrR2k5vn/ZCnvXA5kY2EOW5OoZJ1te+Qbn3Ld4xU+OmL2cotP3YtXM/Blm+8aFh7N68n0aqHf7F8+FEJS9FOWeY+LTafMGZVaEVsRBPSWa3yjKEIm5PPfWU9oypeK4vFJK2iKwInwieCKPcV53ubZ4pNaGW+9Ti0Yuoyoxr8eZFxGoetNSFePePPvoo7rnnHm3xChluF2tOPMnZEFrxqEXE3/CGN2jDyOLlSn6l3JKe5E028e7F833Vq16lGQunhla3cykuf/cX8LHrmxD47V/irz73KXz0Lz6Kz/3N3+OGrSkUvK2QKQxlAzsfizw/KR1MDRnqrDycL/t08jC/xaY97H84jAmtL/sAPrDaB/vdX8fffe6j+IuPfQGf/dJaGN/xdrz6yh4KC4PREzQbLdriFoe9I8Zvt8BsMU3bxwvXSLExy/1I6Si8WPGWt+HCRVnc+sUP4ROf/AQ+/ZnP4MOP0hvxWOE/PJdmhtDRy/BhzgVrsNgdxcj6u/CnW+/A/U9vxwF9A9ziMUgHJ/eVp7l50lZaxzdVf1IOeTj/yLpy1c/D8gvmwp/Yj6fvvg233XkHbr17G0aN7Vi+ZiFarAzPJKSuD3ecRO4Jy0iLtMXU9VDrbLmPnW/Z1oDmeUuxwNSLHY/cjTsZ9y1/XIvdEV7TPnrSjLhEYyebpcFU5jH5IfQmndDbfWiyTW+XMsb39cHR2ACX13bsaIfeDIe0z1Q2xLvjPuZdOl5d69X4xNxH8Pj3/xIffP8H8NWf34/t3mvw3hVWLa4S68Gz7M34wAVjSK39HD745x/DJ//5f/C92Ap85Z3zcHlrAz1aimRjCnvW/xIfee+f46Of+Q5+cm83vvThVZjvKiIfGsJkmUaxvx3eI3pLGnSlDBKy/pPeDn0iiFQqCn2dPMpXDSLXhaUBc5fNR5tlAs/eeyvuuO1m/On+TXhyQMpmh9PIuqJnKdfm9HaW8km7ynPG5SK96fmtcJX68OwDt+Lmux7HYzuS8DR54POaq21HSXR2o4FeoK7/UTx07x2446578VBfHRauWISeZpvW2cs9e70sWCJVKBrmX4nLl1uQP7QRD7Idb7/1Fqx9bD1667rh1jNPWtwnQsf2kBm+084fgdegzDKW00fqoly2odFbhiW7B3ffejvuvud+PPBsFM1rLsLCVhn+tsLX1IQWfwhb7mId3fUAHtiShrvRjYZ6sxRNi6hsYj/Na8Y6/CDW3XcHbrvrQWzoNcDbuRyrutkGUgdyL5iGzrm2bOlZeU2edNbiIckQpYiLeHEiJjIzWbyl5+tFni5SNimP5EOEToRGPFm5NzuT+ZB4RMDlXrN4qTIcK6tEyaxied5VnrOVYWLxYuWerCzsL56jCJt4kc8lL7X2OtVztDUkXzIULIZFzROS++ZSF/J6PjE65NGqa665Rhs2PqU3O4UBNn8r5s1pgCkdRtbRjsaWVnTNnYclV16HK5Z1okFGX3nxOlsWomPuYjS65DV5kn/p3J1oWtGuPS5hZhhbYw9a565Ai9c5tcqU3tWCngYPPLoisrZGNLR0M/7L8PbPvB4XNtsrkyR4kRscrehun8d9Tli13ls6aCeaL1qE9i4/PScREe41OeBoXoIrO71wsGMwNcyBu9kNXSwBS0cnOri1XPkOvHdlg7bAw+ly2s/RslOwuOtRR89JxA52dpzNLWjtmYs2mcSpM8Hqoqg11U29Jk/kVW9xwl3H8rvoYbBDMZgdqGuUoUj31L0zMSJcdV525PKZnpvXA6e3DT1Ll2BJJzsrCcdNjnU3tqDRR09M61XZFqwXj4/p1rtg11Y0YKr0/hz1rQzngYMGi4V5rbNRJPQ0VhxuOB116Fi0gPXuhY150hkdcDJ8Z2czTP0PY1PADX9nD+b4KahaJ8jeMzOCx9fug3PFBZjT7DrqOWWGYZqWuk5c3sHyW6XjlrLX0QvqxCXzfTBZGzDPFETG4IPF24wFF12Dy1/+WrxhaSM88y9Bm5N1Y23E3GYdRGZS+g50LV6BJVdcjXfYfoWnTW/DJXNb0cETM0+jIJEx8XxahqUXvRIffEMXXIUYxnY+i748z7mFC9Hjnt6WvD5F+C0u1Pk9cNGA0LHe/KxLv43lr7aDTmeE2cW6pwDq6bXZ3U446lrR0rUAC1pYZq1Zee7JGr2Nfm24WY6ttLMNTl8zfC62t1vmlNBQNFhgczWiqW0OlixspcHcghafm+3EI2xtaGvyo83HRjfaYXd60dBzAdYsa2P91S4iPSwuH4WtBfV2MdCscLNNeCbxPLFr/bKvoQmdy1agk+U4ydlLWH4aKv72Vvjdtsq5x8zLuWLm+dDa6mKsCQztGkLe4kH7hd0UWz3PXR/qWhbggtVi8EldyfPINth4AhRLzI9X8jcfyxc1o5HXQwP7AK8ujPGRIAboBV+xzMbL3MF68KG5exGWLpqDlmrb6LRrxofG1obKawC1vS88Z+XF7xKnXCTybKbMUBSxlQk4MstYxF08vLOB5ENEVp4Vlc9yUomwyOeZEtkatTKLAIo3K2IrE4/EY6x50lLfMpwr3q8suShev+SpNjnrdKgJ7Zm8+F3uH4voy8QtMQRkbWbxqsUTP/kEKMXJkFsj0uZvfetbNU/l/CaNnb/5MbY0XMKOdTUWUQQ026eURr7/ftxwqxFXvPtKLGuhkVA5YOYol5AdH0DC162tODbF6MP4hy9+AvE/uwWfvWYx5jir+4+giFTwIJ5ZuxFh/1KseNlqzJnJx6jPC8ooFobw5M2PYhjdWP3OK9BT/eW5UeRFtV+bLHV/aCU++q4lOG6TncOc3GCZIWoTkKQTv/7667VVn8Tbq4nE2UQEUMS9NsN4NkRWkDKLtygi+u53v1tbIUoETLzHzs7OqRWh5NV5H/rQh7QJCDJk+1xE9vki987f8Y53aB6szDr+0pe+pLWPEtnnz2ycUy8+pA4CGEt0YU5rK1p9h4eBy4UiEoEQXBcvRZvLMSsr+Mi99+T2h/HUM4/j0UF5xrUPfQe2YcMt6/A/T34R163qQucJe+wcHYA4kvb5aGjuUCJ7xsj9ffb/dKa02f1ngpxGPG/kXrX0qWfHLZtZzopHW0OEVYbVJM7avVHZdzY7pZoASjlrXudsUotfyi2beLOSBxmqFW9HRF8E9kwFvxb/mXi0itlBRkxkTel3vetdWjuf3+SRCGVhcFphMcujWVXk/amZOBL0TZyWyr3ImYceVWYY63/weXzn53dj7YgLDrSgvvFj+Ifb/gyvne8+8fPLkEk1OaQyZe1RKZvlfG/HM0E82gFsuPEhDJU6ccF7r8WiM6pG8Wj3YdvGp3H35AX4+PtXVB6zehFxVoVWqAmcJCuCd7apCdPZFHeh1uFOr9+ap1/bzgQltOceYkwNDw9rzyzPtiH3YkDO7ePXg8wMlbuRs0e5lENwxwN4avNe7IvJUoceuH2X4c3v6oHrNCbMyGWpmvDMKZeTmOwbR4omja+7Ce4zqks2Qi6G8GQAI1kf5vfUnTMvCzhdzrrQygUn2/MRlxcjtY5meodTK//zqYdafEpozx2kPcWIVPdnzwF4aZXyKWSyOeSKlYk3eoMNLpklpph9qtdCZeENeTb8DJFHu2Q0sizL2+pn1TibDWZlwOZkSCdU8+TOJ6S8tbLXtto+xUsLMX6UyJ4jsEfWm+2wu7zwej3weFxKZM8mvBa09xg/H5EVNAPJCNOLUGSFsy60CoVCoVCcTyihfYlw9JC/QqFQKM4NVO/8EkCGKmsLUMzEAiMKhUKhmDnO+mQoxcwjQisLY8i6xbLkpSyzqO79KhQKxbmBEtqXCDK5KhAIaI+VyFt5ztZqWwqFQqE4OUpoXyKIVysvS5AlHuW1eyK8CoVCoXjhUUL7EkOas9qkCoVCoTgHUEL7EkK82umbQqFQKF54TktoVaetUCgUCsWZcXpCy/9kVVKFQqFQKBTPjdMS2mwmi1JZTa5RKBQKheK5ckqhVSgUCoVCceYoVVUoFAqFYhZRQqtQKBQKxSyihFahUCgUillECa1CoVAoFLOIElqFQqFQKGYRJbQKhUKhUMwiSmgVCoVCoZhFlNAqFAqFQjGLKKFVKBQKhWIWUUKrUCgUCsUscsZLMKZzBYyHUtCrN/soFAqFQnFCzlhog9EMnt4zDqNRCa1CoVAoFCfijIU2XygjnixAObQKhUKhUJyYMxbaXL6EaEIJrUKhUCgUJ0NNhlIoFAqFYhZRQqtQKBQKxSyihFahUCgUillECa1CoVAoFLOIElqFQqFQKGaRc1ZodToDDAY91KRmhUKhULyYOQeFVqS1jFIhg1Qqh6I8fKSeIVIoFArFi5RZF1qdwQyL1QijfrpY6qDTG2GymrX9FWnVw2BkWKcJ1sI4hv74ESye+99YO5EDPCY4LCaYxMPlcUbtuEpMh6EiixfMOKwmwxGecFnHuE0mWCzGExeYYfRyLOM+ejObmK4Ivt6g5dlQzXMNHfcbTQx7bKYUCoVCcZ4ze8pA8UE+ifDaz+Flq/8dv3xyDCm7CQYdhRIRhDb/GF+6cBlu2BBDuGiGF9tx3//7c7zG40XXklW49i9vRDz5FXz08rlY2uBF/cs/g6/cuxkjW3+O/7n4MvzvTgNyJR1q+m0wW5Dpvwu3fmsVLv3qAxgtlJgHCiKF3h3diBv/+ct4xZu/jQ0pc+WAaegosLrQNjz1g9ejs70J87pbuDVjwYIOzGt/Pz77f57CuDeL1K7f428u+Cz+tCuGKEthoKdttOoR2XUTfvqFNbjkf3cizXRFiBUKhUKhEGbRBZOo6SXmh7B9VxjBVAEwiQCJN1hAITGGvj07MRorQjQxp2/F4td+AJ/9z+/j29/7FX7yx/txx9334Dc//RH+/Vv/hW99/j1462o/8oFhjG7fgvEUUBInVkuLMDldMY5EaAt2jqZQlu+yn/8YuX9ysI/5GEGMaVVycZhyiTvtbei++lP4p3/+N3ztG/+Kr//rDfj89TrYGg/iID1pd5l5TgXQt/egVpYiY9D+o6gW0gGM927BLmZKhrqnx61QKBSK85tZElodDMYindoxbP/tNn6/C8FEHpksYDFqN12ZshFmGGCi46srl5FHPXpe9kq89k2rMTeyFg8/uBYPrL0fD66Lo+mK9+HD774Sr+iZA4/dAYfZBtO0nJdhgsWQQXRsEJvXMv4d+zBStFIEKfTa7zK0a4HNSo+6csiRlPIoW+vRtPK1+MhHP4APffj9+MgH3oK3rulGx4V+WBc2orFQpnhLni3V4W4pBxFhFS/d4oDJ5YHHY4XXbYLHa57avG561ZbjpqxQKBSKlzizILR6GClo+sII9t39LXznjhC89u1Y94dv4c6HBxHU6WEzVoNOQ+5zlib24/F7f4F/+83d2LJ7B3bu3IGt9/4I3/vPX+GG3/4JN970Lfz4D+uwxWKqHMOtrDPD4dUh+eytuO+/bsUt+7xoCvwSP/iPu7AzTDk006PVV0XxhDCmchHFbA6xKDe6vYX4Xtz+4ABCmSYsndsOc7FYDXsUcigYPhpF/sGf4wf/9d/4z+98H9+lZ65t3/4v/MePfo0fbQlo0qy8XYVCoTi/mGGhFQ8yjfjwbjx202/wkxtuxeCFH8e7P3U1PH2/xp0/+w5ueXgMQwmZ+kRxAsWtpDmF0FM7i4cewBMb9uOxrp/i9rV34/619+DhnyzFwRtvwve++U387++/h5/d9DC2mU0VwZJ7pJlx7NtxB370vd/g5nVFLLj2Q3jvn+mx92ffw49/fyue7EsjXWAxSwXkC0WmegoYp8GaRfiun+KHz+jhbVuDdy02I5U/jtDKBCqdAfb6HsxbtAyrRu/GL3/6A9xww/fwo/+pbt//Dv7nV7/Fr3bHYDIZ1f1bhUKhOM+YWaHVG2HFMHb+8V/xtU/9EHev/iMeePJf8C//8gg2PPkU3q3fiNv/6cv49T4DHA4PfA3NcFsqE5rkHUI6pw+eFGB/dAMeHp7A7oOj2HkoCaNzPl754d/iFzcNYMPv/gHviyU1wZShXOfkA/jmJz6Pr+6tR8fta/Hkg/+Bb3x9O3be93o8+Z/vx4/+9AQOZP2o89ehqdENJqcJ+3F9XIqsDllkAg/hhx//IUJLPonXvv/duMwHbeLVkbDqCnGERkeRsK7EK/7hcdx63+N4YN0GPPjQBjxQ257YjEf+8Gv88VonxkaCiOdKx09boVAoFC9JZuc1eYyypCmnftqiE2Xulo1ipgla9bv2m6CHyQ4MPXoDfv53n8O/P1PdjSvwyR/9Nz72jguxyBPE7ptvwK/e823Y7wvgEytKcBjpGZeq8TLvUx7jVB5EyJmalvbJJI7eqSmLfOxx/Hje6/G11PvxVzd+GR9723z4EuJ2TyK45SZ8/uUP4GUP/RBvvrgRDdtvwP/75rfw7Vt7q3GcDBnuvh7fWPcjvPvCRvh1eRROlh2FQqFQvCSYFaGVyUEGSwbpsYfw0wveh+/nC4gaDDBOCSx1i2FcPi8+8v2n8IE1dai3FFCkWBZzSaQTUaT0dpi1sDZ4G1xw2KBNZCpk8kgGY8jbXTBr84sYp9EER+kANv76e/iHT38Pz7jslE0KrIhuqYSSjvEU52Dl1R/E3/z4i7jCkZMDD6M3w54bxL5HvodrP/R9hOPvwddv/1u845puNDAPpTLzfpTQvoliWV8IIRSJI5os0Jk3wcxMHvHwEJPXFVmuXBrJvHy1wtPog50Z108zMRQKhULx0mXWXvyuo7gV83EEdx3CBJMo1gJSYE3lACa23Ix//8sf4uI/juOTVzegxZpHvkRBs2UQ3fc4bv/Y1/HbXAqpYhEFCnWpSMEsUz4NJjQtXIw///tf4XU9ZVgMIoQUVWQpwBMYGZhAkl70FAYL3OFH8dMf3Iff7lmEHz7673iVsyK0FakzwOyKYei2H+F7H/g6bpj/GXz/Hz6K667pRJ2RZkGhpBkFRwvtGy+oR4OeAq43wO4EMpNP4ubrPoHvF8GcaAPLKGfTyK18PS7/9Dfws6utiKfLKOTyldWuFAqFQnFeMEtCSy/TQOGMH8CGf/k57o+FEJaHZTUXTw9DOYn48HY8/sgevOPGMXz+ZY1VoaUIO6IYefxX+MG1f4ltH/4XXNFthEMTU5nNnML4s+uw5fdP49K1UXzmAhk6pohDxHsC/U8/jDt+uxZ7KMwFiq+G3DdO7ceGR8cx7Hgd/uex/8BrXNOFlvkxpxHeuxVb7t2BodWvw3te1g5Tlp4oFVELcxyhfROFtl7HMlnSCG6+D3f824/w4/B8vP3aTpiM9Fclv+YQBnbsw45DXqz48lfxj5e3sH6ZrhJahUKhOG+YJaE1ULxSSIzci+/Ofyfuv+q9mD/fD5+Jnqnc7pSBXXqmTq8bV7/rr7Gmwwa7sUgxpWDaoxh+4jf4xav/FnVPJvHFVThiOHb88Rtwwyu+guK9AXxcu0cr3rIZ9tIOPPz9/8Y/fPVu2P78zZhvLU0Nz5aYSaOhBd0Lr8Sr3ns1upmPIxCP2GyC1cG0cmXEUvkjZyefUGh1MLgnsfen/4Kvf/Q7uP27/ch/tpOyf5iBn38Jf/Oh/8CNX92I8S9eoD2Dq907VigUCsV5wSwL7Vr8YP7b0fvl3+HVl3Wi3Zqj11oNIiJI79bZuRLzGu3as7Wa0Goe7a/xw2s/h/6v3ojXLDTDpYmwDCsnMPLE7Xj0O/di8X1hfHrlUUL7g5/h21/bjTW//iqucOVhYN5qmlYu5WBxetAy7yI020/wTOyJ0IR2AoFnb8RnXrEWL3/wZ3jrqkY00KPVMU9jj/0Jv//7G/C/HW/D/3njPNhMei2/JmsAhx5+GA8+GIX9q/+Bn17XCRnVlhWtFAqFQnF+MEtCKzN4M0hPbsDvXvFJ/DAWxiQFdvq6EeVyEQaTFVd87SF8441z0eXWIVfUa2Ia2HI3fvWmv8JPSlmkRROnjqt4gw1zF+MT330E71lUglWGlSm01tIhbP7TT/Cvf/0/2MhMHS1muUwCnRe8Ap/63t14T8/0oePTQBPaIMK77sHX37cel/zmG3jVEh/qdAUUS0aY3Xkk+9fhV2vei/8o65HhIVotZpLIrHorrv7Sf+He19UjIDOiFAqFQnFeMWuToSqI4NK7rX47HmWZlSuP51S/a8h9XKPMzD0xxUL+KDGtPt5jkDf3HE9C5RGfEkpM74w9Si1fepQLx4njuHkWl7rE/2U95zNNVKFQKBQvZmZZaAkDnDQIkz+uBJ3iuGq2j4LHnCI/xz/u9JFngE8Yx4nyfKIyKhQKheIlz+mp6vNBROZkWzXYMRwv7LTt+Bw/7PTt+XLSOI5Ka2qr/qxQKBSK84/ZF1qFQqFQKM5jlNAqFAqFQjGLKKFVKBQKhWIWUUKrUCgUCsUsooRWoVAoFIpZRAmtQqFQKBSzyBk/RytHVQ9VKBQKhUJxAs5YaBUKhUKhUJwapaoKhUKhUMwiZ+TRZjIZ5HI5behYliRUKBQKhUJxfM5IaMPhMGKxmLpHq1AoFArFKThjoY1GoyiVSsqjVSgUCoXiJJyR0CYSCaTTaeXRKhQKhUJxCs74Hm0+n1dCq1AoFArFKXjek6EUCoVCoVCcmFOrqkKhUCgUijNmFjxamRx1vui3lL9U+ahQKBQKxXGYYaE1QqcbgtG4gfGE+buhuv+lSAGlUjsKhTfyc7ayS6FQKBSKo5hhobXCYHgcVus3+HcffzdV95876Fi82gNJZTqjUoLp+0rTHNTp+4+mVMqiWLwKyeSNNC5i1b0KhUKhUBzJjAptuWyDyXQf7I7PUqD6q3vPLQoZIDQKpL1ABzc9lTQfBfYyu01zgXrHYXEtM+zoEDAwzvA5+usWwNPE4zqAOjPjKlyGRGI9hZYRaOhYfzyaCl462gahams/8bdj7JPniI5x6WgiSP1rUemYLjftuxa5TnZp++XP4f2nQ/VYcvrHKBQKheJEzKzQgkJrvB+G8hcQDe1Hlh12XSPgpEDJrcx0BAhTsBxuwJKXhS+YLsWsxHAWCpzPB7hsgEE6+iKQoH5N0lk02gE/f7MbGZbHJSUe/pbkZx332Rmfn6JpY9aj/C3JY/0N/H6ckev4MPDELcDQGuB9qxmGaYW3A1//GfC6zwJXzwfEDy9ngYPPAk9tAXbzmFicYZmOjyK7/ALgKh5vL13N/Y9QmERoRczyyKQK0FnssDJfh6EI5tPIML9GixlGgwjlmSFCnZe615lo1Bg08UYxh2y+zLowsv4NjLuEQj5Pj7uIYpkCbzDCrIU9VapShiINCBoDMGjxn2k+FQqFQlHB8I9EPohwms1misapu9ZCoaB14sdigtlwCJFD9+GuX4fwAEVK1wy0UWyNFK59jwK3PU2x9DDoQeD2m4H7NwI7dgN7eoEsxcnnpxDTW5TR2GceAX5JUdwbABrbgQYn06aQbl0H3HoH8PAmHrcP6B1jeIq5nWK+icfct5VpLqTYisAfRWIEeOxGptkGXLuAAs99EQrt//s+sPh1wMpWVgr35ejJ/uG3wLYQ0EpPt5F59jNviUPArp2AexXQ7ehCJvsh1lmWm4jbJPr3jyBu8MJrp0jVqpJ/s2N96BuNQeekCJtNmuhJXR9T3yfaT2RXMZdBZHIcoYwBZosNFj3TjU5idCyEtMEMm9VCQyXFMJM0ZCKIZ3Molgyw1gT+RPHzu17iyscRCUWRopVko9VjoC113GOmHy6/VT/KD9rnaccclZJCoVCcV5zafX2OiDcaGQDW/Qb4yQ+B3z8EDFIcxRPtf4ZCex+FchAY2QHccQ/FtJ/iUQAOPMHvdwJbKHAMihTF88kHgd/8CrjlTxTGPnrS3F+gZ7mL4nz3wxTZSQoincltTOMuxrWN4r31MeCme4HhlJadYxAnXO7Nap6gwL9yL9ZCxaVjqKUh5IIU7W30julJv+UDwKc/A3ycfy/m9yEaC7sowIcVRD6UaHyEMdw/iMGRIHLTbvbqykkERgfR1z+KaJqeJn8ribepbdOHkulRlmr7i9x/5IiBlg4rMhcNYHIigmS2IEcgFaHQDgxgJJxAWpLNJxEJTCIUSzEfEoIwLlky87jp8kOZ34tFxp2LIxoJIsJji0xOPOhafirHSAVKPqvxyuHM89RQuTZsLr9PO24qIYVCoTj/mHGh1WAHbaf3aWOnv5Mi+BQ9wCjF1ECP1chNRE5Ht9EoXuV7ga/8HfC2HoojPdFNFOk8neXhA8AoBXoePdn6JDBAjzcicYimURQblgFv/wTw5U8Bl7ro9T5J0aY403GDiWlIsGNgvBnGeYDiPkwhLVT7f3HU8vS4H6T3/L/r+RvTs9MTv/QCht9Pg+G/gB98D/hver0PUvBbLgNW1PPAo/VD7sOa7DBGhhCgYhe133UoRUcxlqPHyP8MLHwxEcL4MIW3rxe9g+OIJDLaQ0LFLAVyfBiD3N83OIbJSAYFKlitLBKdwWiCy2mGvphCPp9hGlnEUgX+zfF7AZlcGcUkBbZghMXuhs/pgMNiRC4VR2hiDGMU/IGBfgyOTiCSqoh+Ph3RDIF+GgnDY1EksiXN+CgXMkhGJjAyQG+8j8eMTCCcSCPDSgyMh5BkhoqsuOjEKCYiOYp4HoXYJMYCMXrUYxT/ynGjoQwyBfFuK+VQKBSK84lZEVrxGC1eiuRSoIOe5UaK1+5xOmPTOlr5KJ25yUpRo1DK/VcdhbTAY0sxYP8uIMjvl1HUOuuA3kP0gsUzruZY7s1a7ICDm5WRlekGiyd8sr68wLwMbKa3TeHfLoJa9XpFAOiUYZhivmeY3jQFxEAj4O2v5Y8U5Vtvp8FAT3vjrfSa9wLL3wlcTs/22MQopgYbfJYkhieTmmcnhYoMB1DwOGCiBSADqeVCDtl0EqlkEqHRUYyH40hnUohRsEaGxzEZiiCWSFI0xavVoq0g0RkMMLtsMCGHdC6LbD6OVFEPp90CI7/n6TFnEvwLMyzGEr3dCKLxFBL0eocpsENjAYTo7U5KukGKajKK6OQIhkco7PweiySQ0oS7iHQ8jLGRIQxPhBChlzsxOoSh0QDCsTgNhREaE0WWI4yhQ4e0YfFCNo/EuIj4KAYHRjARlnIkNM+7WFZDyAqF4vxkdjxaEQQb0LYauGINEN8NPL4FCOWqHmmVcpSe6EbgtpspYpP0FBdSxOjB5ijKeyhw6QYK2iuBZQt4LIWuT2YL8zgDxTg1Qg92HY9dS1GmwvYsZzh/RaiPR4EH9j8NPEAPu9xJj5jx38W0g8yTaJkI/nUU0I+9nMI9yPww3MYdoBfHHynqrfS4ffTCc/S4D3L/g4+wTBTdIx4VlnKzSj3NdqTGx5EQlzkXpoGgg7fBTm+7MrnI5HDB7XbD7XLAXEpSjDIIT1L8gnHkLXVo7uxBT1cbGutsMNIDPjzyyg96AwxWF6z6AsU5i1QsgVzZDJfXA3s5g2w2hpgMKZsssNJ6qQxFy5BxHjlaKSZPI9o7WuB3GlFMUWjDQQpnDmV7PVo7u9BW74bDXEaB3mwsSpFO6eBq7UZPN/PjNiAXjSKSNcNcTiMeSqPI8kXS9IqTESSLOXq8WejM9LKTOejsPjR3dKPdb4fNWD52JrZCoVCcB8ya0IreOVqAC64ClliArY8Cmw5SKGUOlaiNdLriuW4C7qdoBZqAK18DXNwFRCiCe+ldTsQphBTjCP8OcZ+IbyRDoeKxcg93yxPAYxQ93XzgFfQ+V9bTqz2O0NI5Q4Ti+YSIMr+//ePAO2kA7KRX+7gMa2dlSJZivZj5ZRw5pv3wvcDdzwAuCv+8ZiAhE67410eRHmK6N/P3DRLZ0cPUdI9NDU1wpycxnsghMTmKiNGHeifFSRPlAnKZJOL09BKpLArFLHK5EqKhOOJ5E6yeJtT7/ajzOGG3yAIgWqzTMEBvdMBp1iFHgY5NplAy2mDlMSK+2VQAwUyBYmeGzSYTshiBFgdF1u6Eu94PX5MPHoq4qUzPl151rmyC3etDI/fX+V1wOJjRYpoedRYlkwv1rY3w+Rrg93ph08kQtQUuux5pet65RBplmx+2UpyGVAKxohVenwcel4WeOz3uXKHi2WsNrlAoFOcfsyO0gvSrFKFmeqnXXEThPUBR2wyM0rOc0g56vc1zKG78/ZUUyldcSS+YojxIQR6k9xrj9tSTlWdcQxP8y/1y37bMeM0eoJOe7qU85lXXU6TpPdfz2ON6TQUKM4+bpKCueBPwfnqub+W2ygXso1caYZ5En6kr2mQoBwV1kXjIFwKvpvhftIgVxTBe/l31emDNCoo6f1/AcNqBR6CHzlqPZncewfEQRofDMNbVw2kyUiJlZm8KgZERTFKES0YLbBRT2V+ghVDSRNSo3cOWSUdSlMrM3UrMgtyxNejNcNpNKKUTCIcz0FksMLu92iNFuRg9VObVQBfdTr3UJn0xonJZD6OJYi/ibWQezUZ6y/xNJm3p+JuRaesZUEtPhnkrBdMb9DRCJEOy36Ado2dZLDQcCtEAvfEybL56eIwpROgBp3Ue+F316OxohsdUYBsOYGAshmSufHgCmkKhUJxHzJrQyn3aIj1JkxtYSjFc3UivlcI5lqj+LpufIvY64OPvB95wOdDBsEUK6m6KX9JKsaOn2tIKzOXfOQ4ey/0HRyiaFBR3DwWWYvnnbwZeRtHzUrRl9rI4T6IdR8AO3k5PdTVF8t1vZ1w+prUSeB/TXsQ8mKpiVA2K5lXAm/8MeNO1FFMZZm6giNPjbmYZOuhxr3kl8MH38ncaCHTwaocSfuL/Oljgb3GjHBjGSMwIn9+hCZkWTpdBJBxHjp5iXVMDfE6r9tyuVcQSWaQTYcRTKWSyeW1yU7FQoNd7eIavFr9eDys9RgO9yGi6AJOVnrDZBgdd5lKCx+aMMJvtjE8EcupI7XNJs0QqW1lPcaXg6pFnuvRGYykkuaVTBf5mgYmiX86lEAvEkKaoJ1IJpBmr1WWGwWaDIRNDMGtAXb0DblsJ6ckEirSA7DorXD4/6utcMGcjCNJbT1NoNe9aoVAozjNmXGilX9cmOZnp0NKjkklL7m7gOnqdF1Gk3PxN84r4mwylyiQm7ZGUKoEB4NAQ4KeIffCvgX/8O+Brfwu8i99tFOHeYSDONCw8tkAPdAqJQ+IWb5dpT/eedPxeT2F+2SsolBRwDYZtWEKBvw5opcDrGKfIT43MIHDbn4Cb7gO27AJ2bAd27gQ2rAX+9Af+DTCQHHCEdtBTZMKymevb4NdFUHS2oMGhh0nKLL9RhB12K4z5hPY8bECEkZaBzeuDx6ZDPjqKkaEBevQBClQE0VAIkXiOYjstKQqtzuGgB1ukd2+GxWyB1WCE00FxFO+U381MQwRZW0WKB1Y8Y9l4fG1ikkHu47pgN5WRDo9rE5jGJuNIyVC6yc74nLCW05jsY35GhjERS6Nsr6NxIAtjyGzmIj1YO3wuHexOC8qZIsxOG0q5GCZGxxCM5dn+Ns37NklbS5oKhUJxnjHjC1YYDIdQzNyHVCGEFgrZEgqci+LmrmNi7Gk9bcAlayhuFgost0XLgIX0WjWvkkQppGNRoHM1PUd6qnUMI4tVybyiPL3WpmZ6lh56sPQwFy4GeuiR1ihRIGSlKQu910t4fENNVE8Gi5HoBX5LAb34jcBy5o9ajQzzcc8T/Mt8r2F+57bTE55DzzMJjAcrhsBSbxcymdqCFTLZJ49sxoS6xjpY9PQoSxkYG7rQ4JTFIvLIJPVweBvgZb4KMus4Tc/UZoWDleOt98NLQUaeXqXMOC7SA87Sw43Sw9U54aSQ0fmsIIIJ/s5KMdo98Nd5KXoGGGTRjLIBFg/FsM4Jm76AfJHCa7HxWB30JhPsFGgbP5fkmVhYKaYUWgt92kwa6Swrg2EdLi98bje8dQ76rwVkEnFt6Ndk86GprRUNNqNmmOhYeXpnA1rr7NCxcXN5M7wsuxMxBFhJkUQaBZMbDa1NqBMPXEmtQqE4D9GVq6sizOQSjGbDF5DP74e8U8BKoZSZxjKUnKFIZXmIVZZZZJ9eWZKQ32UlqGocRYplWm6UyrEMJ7cHpX/W7p8yvHjCcitRHFjt2Jr4EJn0xKyBmgC7nVGcuiia0Ia3Av/3x/RuvwC8fIGWNOjIYdsG4NHH6cnSy44y7xYnhZ7e+eqrGO5KesnlqxGdWoKRxzADRYqfQXuMh98LeRT1psq9UOZYljbUGwys9MpiDiXtvqfopkG7Fyr7S0V5FIb7WGnJwAQmJmMwtXSi1UfvkurGn6qUmRbjEMnlsdryitV4yxIf21HPX7Wh4oobWx1tkLCSVxlGZl1qv9Xyw48i4vSCxfuWrcz92kIV2k8Uc7mXq0XH4yWv3GdiXrWFLVh2efxIz0rVlnGsxmcwGrXnhxUKheJ8ZGaFtvZSAfvn2L/2Vfee+xRlQYwJwNdCz5veZk0S8twfDAChOD9TkEXkZb1jWUe5TrsnfDniiSdY1orQypGa3tXqRUSrKnC13+RLWdsv32u/Hb2foemNxgIBhCJZOJsa4bFbaWAcWd9Tow9yrPahcqyGtq/2XX49flgtr/yg/SdBpn6v/Kalof1eDTvt91r6lfJWj+evWrrTv8sxtYMUCoXiPGNGhZb+ZfU1ef/MeOTZF/ENz33knnJFMujbTbtffLKqKJfk0ZwrkUz+joIy86/Jk7WTc9ks8gXAbLXQKz51uygUCoXi3GOGhdbI44cptk9SKML8/lIWhyJFuQ2Fwuv4OVfZNcNUJi/RJ6b6K4dQoVAoXpzMsNAKBu638K/E80LLQ8VPrY5wnpBKOWpDncei/S6iV/lSLZWEL3JLa5+P5ARDpbU4yPHrbjrH5ufUx5wB0/IkzGgaR8UtnFH8EsnzyNbUEHuVWalHhUKhOAGzILTnGMyj5PNEOa15jYIW7ogyVX7Tfq7FId/lLznhS9yrcR7RvVfjrgQ/ebzcWYl3KrxQCV/L6wk5XnzVfcccq+3nf1OJnGYapFJP1TJU0fbV0pW4tfiPpFJumTxV+eXotI6IQ6OSvyPCVeM9bj5raVbj0OKr7atyZB7kc2W/QqFQzAYvcaEtIp9NIx5NIq89O3pUxy/PnFrc8MqjJ7oSUrEIUtm8Nuu3ggFWtyxJaEM5EUe6UILJ4a6+gD6LlDx6U5CuejpMR2+Eo74O9mpnL+QTUcTTWe1tPGWdETaXC3arBbpMDKmCQXsEx2qWlZLLKOQySKVSyOYOv2JOW5VJHr1hXsyyspO291iK6QTzWXmkxyLx6eRl9FnkiwZYbJbqS+dlODqPXDqJJPOUrxZY8m3icXY7j5XnrU7QvFL2bDqDvNmjTR4TysUCUokESlY3HHIsyxVJMm6W97CoMQ+sT6ddz/pI8zczHG555y1/kzCMN5NMIGeuh9cuRgzrqpREOFyC0+eCuaqIunQEwZxVe4uRieWpIelkEzFkYITZatOWi0ynEkhoryasBTLwNzscViMK2QxKJoazmI5Yg1uhUChmkpkXWgqWvDotkymyX7VWlhhklLLerTyrWZTOnB1xgZ+zmYI8XVPp/GzS4Zm1Dk/HTjsrabBjNlKMLEYD91EYtGc989oztTq9ASaztfISdRENmRVs4nfjYTEtl3NIhMdwaHcvwpkcikYnbCb+Tk80RyEr2X3wN83Fkm4vzPoixg7uxFAwgWxJHo0pUqAA78IFmNfThuKBXRiIFeCdvwI9jiKysRDGDu1Gb1wGySspig6USrLesBmdL1+DOcy3QX4oxDG87wBGomnmvYxiUQdHSze6O1thGd+FvrgLrqZWtPpMMCON0NgwhkYmkciVUGKkYiCUZAlFqxfNXR1okedbj3jU5zDp4X3oj1LAmjvRVsf6M0Qw0j+KSMaGpo5WeGys4zLzHw9ifHQUk2F5Zpd5l9j0JlhcPjS1tKDJ54CJ+45Jg3WXjU5iuG8IyfqVWNKcRTIm7Z3G5PAw0L0S8+uM0E8ewM7hMBIUs2y6CJ2J7Whxon5uN1hsBHYPIpL3Yd6SFhhiUcTyrLtUGIHBQYTrLsCSJgot29hmn8CW9SnMu3IpfNqjQzQeBp7G46FWLJvfALfj8IQ7vcGIyb3bMFp2wt/WiVZjAEO9vegblzUpZWlL1r3eCm9DOzrqTIiOjyDl6UB7oxeuaefN0ZRyWeS0V09VQuhNIvCHjajnBc/1PK+lnM5C8dfOliry+JXUK2DlNSCPWp0ryGz5vLQrz0+9GHQ0/NTTWwrFiZnhBSvk2cscPcNhHDo4gkDKCLvLDqtJTy8oh+DwACayZepvDqEBdoADYwhGwggGQkjQCzPb7BRCIz0WikD/QfSF0vSQ6AHRE9OlY+yEe9E/NIYxhg+H6U2y/xTDoJQMIhBM0ROqg8d6uMOU50GNRoq9xCki71+KJXObUOd0oEAP09S+GD3N9FDNsnqSDma7E15/AxobG9HQYKc+ihg7UdfgQ3lyFMFUAZb6FvhNIgKy3q8HPoZvaKhsjY318HlNiI3EYJ3TTmEQwdahOL4XeyYo2m3s1NtbUG/OIDiZgN7hgikToBFghplxuR00QnL01iYmEMoa4ZKF/H3c76KBYKRxkE6haPYynHi1x5eFbHgcwbQeJifrgp6jXp9GJERPPWeE0+uGjW1slJe7T45hPFaCrb4NXZ3taGmqh9tmoKcZo8DzeJcXTjFKqvFWEE84i1h4goZACDmTAy6zvCZvGOPBIKKpPEwUsQYnDQZ6jU5PHbyOPKKRPOyNnZjT1URBo7ZkYyx/lIaUEw11OiQHD2HfcBAxGnsJMaSyCcSjEcRS9GTrCxg9kKFAt8DB3lzaSRfqx4GEC031Thpah8VJx/pOjA8hUjTDzrTd+jgCIXrZZj+6uzvR0tKExoZ6+OvcMNI4k1W3slYPvE47LPJw9jEwLaaZoCAHkrJMJfOXyjI+OadlgZBqfmpb7Zjj7ifad2kT7Qv/Y/2mo4iM0rDKONHkNVeea9bC5Siy4xgYSGtveTIxvVp8FdE98XV6OO2qAB7OwIl/q+4/0tA+Mjz/lz38XEQqGqy8bcro0F5+oUYEFIoTM/2qmhnEoy1RbNlhxwJjCFGsZAEJsdDzFIoUPcu8eH3ZgraqUROFp8GpQyYs7zylsNGTTDNcLBpGJBxlJ00vUFxYdox5cVvNPtQ3taHJY0YxFaJHxg45zU4pTQv7OC8X19YFpkfgsNDzYc9itVjpWVWGUI0UHVltSTuG/xjFQ7bauMlfWeuX1SPvjk0l6UkXtMUhtOjpleqMJljdfvj90zcffD43vepquCpZliVrlDfjUMDrG9HUVg8bve0c4y7w90pHxr8SmF65zenUlkXMpWKIRlkHsRiSdDvl9XhuB72paYt0HAk9Nm6FQl4byq1Jx+GOtVY/1cUm6KXpWQ6LrVJeM0VLFrkoyEIYx+iOLJCRQSJCIycYQdbA+ozT6AnrKYbNaG5qgtsiZoUcyHSsDm2pSUOuwG9FeoQUJhkSpxAe3D+MiTAFS3pnkw12fzPamimADY3aa/U6W+q0z01NdfKOf+34bEreJkRh0qKXcnCTbB3NVBkFBqZBJMtM+nw+tg/T8NEAcTJfPC8qdSJ/tcOORRtFiWsvS4ilKIg8p6Pc0tJuJVmgQ94rzHNaW5u6sq8koyv0gLPpNM9jbtr5LplmndPYzKYTSCZTlf1yXjONPPfFkxmewykkpZw0NmQESDzalAi7VmjWv4wUMa1kUupC3oqk5fJISkUUJFxWwjItuS7ylePLvC61NbQzkme5bZDRRoKEItsmzbgTiYQ2aiRx6+Say+d5rUre5P3JacYlC6rItUMjiwagrComdXe8rCgUigoz7tHq5J5gJkmvJ1O5UPVm2OwOWAxlJMNBZMQLchmQi2VhqWtFZ3cr6gwZTWTL/M3vBo8Ns2PLoixDxnoLwztgLrPTSXKfsw1tHa2ot5WRjieQKsrKQxQIiobRTY9Su7dXzQ7FLJ0MYGRgHBHpROS+YrracSaSFDoxCoxax6ungRAa6sXQ2AS9oAjzwy2ao5dE4cnGERpn3g12eBqb4aNHW+k7peM/vJVkdaR8AuMDYZi7pnm0MXqPaSucLoqkXt7dGsZkKAebzw97nnnJUehc9NzNEgfjZRvoGF9ROm6tLIyHguTyeOF1WbUVryrieVRbldIIhyYxGcnB4nDC47bSoMiwPikOWXkRAdtBW6VJDAi2U1yEI655kjEaOiEaNqmiBW4fRc5ng2na8LR00ul4CBPjUeRZD75GP5wGGlQZPRz+FrQ2uJCPhVD2NMNPz1ifi2J8eBgjo3EYnGaUeH6l4zSaKNAmq472SxFGiwcNbU00KgwwFnnOJMU4kDpgm7K8dY1ikAQwcIDesxgABook4zZEh9CXcqP5aI+W5UpOjiJepmGlebRJhCNJGjM2eD12bXWqkvaoFNOneEiZszznnDQ0ZO3sY+ozHUZgYgRDExHWH8VGu92RlwebtXW683F6dROTPF+iSGZphrFaZZ3n4GQQwWAYUZ7HkQTPWQONGCaQjzO+8VFMyAv2kzkUdfS8jXntXv9EhumnQwiwDeLpPAw2C/RleTuTAfX19MBZA5FxGjYTQYQiUSQY3kijcXr5GYN2zz/KOhgIUDDDPBfY9sm8EW63GeXYMA4OJ1BIBDEelPaO02Bywmk1IRMcwijjDrNOwkkWUW7lZBmO14K25nY4wDJFGBevM6ud7VWkAZGH3iF1IQaaQqE4EbNyfZTZUZrMNrg9VpSTEV7QSXqb1R9riJBoFj4tb1kx32CsvOGGHkSKHY3eRe9PXnzODliGE+U9s5r4yDtOM9y4Q4ZvjbX7QzVFmEI6bPEu0kjmKID0Bj2WAr2BBL2BPL1Rr/aidPGEC/JidIpulN7WaDCGOL0NWfLR7q2D184OTzpYWvLi0Z4aCTM9XBm2+lZ4yiEEx4cxPDSEgb4J5LQhcRssIpgMJQtUZFhXk6PsiEM0Amhg2F0eeL0UV69HMwaM5bT2IoKxsaBWJ9ptwxpy75RCGKegylqU+XSMnbE86yuiTY9Q4tY6aXpfRSM7Ugc7+SIy9JajkTgS/BuLJJClSIlhZKXBJBO3qpFr8cv6yPKSAE9rN7pp7LS1N8NrLdCYSWlGi83jZx3LfWmmHw9gfDyAtK0BbT096PTr2M5lGPydWLB0Dtrq7TSORPRo5CWiGO3vxcB4BPEYDZzgOEZ6D2EwkJHThMjiHfS+5O1M8rVGtfw1o6NSk8dB2y1hqmGrn8tFGm8RihGFMSEe4hGH8/yRSV+xMFIympHJoCj3+cU7pPeXjFGEKHwTFMYYDcjJsXEEAiEt7+MjIxid5H4aMOHJCbZnDCkKVJneq4yOJOJRhAKTmAiEkWZeykVeByKQNAZTTC8gBkogeXgCV6mAXHQCoyM0AimyMaY9OjyCiSjrncdXRiqqWzaB2EgfDg1NIsbzNhmloTk4igjzXUpQaA8Oacel+VtsfBC9gwEaVzRi8nIt0HBN0kAaGkUgxeuCRuo4z9fhSTF800iEJQ/ysggpvxgUAUS162KqKRQKxXGYHY82xU47qYOz3gsLhTKS1MNgpVfDzj4jb3Nx6ZEJsZORhY/pqYYmZPauFZ56P6yZKIL0yPSeJvjo4WWSaeSMTjjoWeYTvOAz0uGzo2AHEqWoWChGLgM7sBwt/GkebZkiKxM20ikTXHVeenduCn9FuDz865bv4kVa9cgV9bTKdUiEAkDLIixaMA89bc1oamZ8vgY0NrfBUWJc7Iwt9N7kHu20BaSm0F4swLyND0Zho6fupYelWTI2Dxxl1oN4OFF2urCjsasDjT6671F2XFmKm8dBQQ8iMDZGr4ZiI8Inw8bTN5k0FGfZKTg2t8xaNlctJdaN3MMeHkcCXtS5TPSs2HGCHo+NAk5PKjhBr4udvcxe1omxwrZI0KsqmOvQ0NKCZp8DRnbo1EttEhLY+ZdkHWOzSetEdXozrA4368MJc5GdbCiurT1tstm1twjJcKnewnayy/1O5oeCkSjT65zTgQZ64m47zy0aPTmdiSIPpOjVZcsO1LfUoURxFa9Q5+9GT4sPTrsRJXrbaWsjmj0JGicmLLz8QnR6xKhiGSLi0brQ5HfArC1oXRlREIsrMTmGuLwhqebR0sjL6+gds34NbGMtHAskM7vF8wvFKFYlA5weeblCrT4F1ltBRIxGV0leviC3HGxwuFvQ2WJFIU6hDBdh9fM88cibi2iMsfKMPO+KMMHR0oN53c1wsbUT9PoNNh/8LiPrkB6k3QZDkWJFg9HodsIgw/GGesxfthg9DTaUGfdoXAefF4hHjfDTYE2OHEBfwgJfSyua64zIRGgAmBkXjTA7U5ThZW3pSxqqUXrTMUsrll+0DB1OIDIyinR9B/z5UfSPA63LVmHpvBb49AH098Xh7GjgOcO2c9AYpeefmxhHxu2Dh3kPhpnHhi7MWzQfXe4S4vSQ5bySmfd5Gg5GXktOk6ky6U+hUByX2RPaGODy+cB+mQIW4SVLbzWXQslkp9DqkJUF8yfoAUTjyMKJxrY2tDRYEA9NYDJGO93mhI3ilmJE4mU5LToUErSw6QkEY+zkSxa4GtrQ5mfHT28glqUXPSW0orQpREPDOLC7H2OBAL0W8VwObxPj4xge6MdwMIFkwYx6djDp0BhiZXrJMjs1m6zcL6MXU9LRMIiFmIZMHmIHdVKhjWFkKAVvZws7ehk4JsyOxWGHzduIru456OpoQR09ZXk0JR9mZ0+htTgoeA1+tDQ3oZEGR528z7X+8EQrbWtqRmtHN7raGuG2mqZEocx6io4MYCSmg7u5GZ2tdpS0+9dpgIZEkVaI3taEeYs74TWlMdHfh8Fx1r2MFOSSiEdYP+ycxZPP5+kFxQKIxLPQUVjcXgqw1GclJZToMUUn+rDvAD2qYAAB1mVA6neC4jA6iYynBfUOGg7sqOsb6rQJVXm5Vyj3mG00bGSMNidD1gXozB74612wUZh12QgG9+9H73gCiUQaZcbT09PILj2Iof48fF2NsGn3U0Voh9EXNdDQ0LO+ZWZuZVhXDKZ0cAIpvXVKaCORGJJZGgRGHcuWRVq7ZykecuWxJ2vbQiyY24l6eSNRtZQa5RzCo/2aBxiMpxGNM19JnhMZWjklim8moQ1LJ2kkRGP8rURxZZvazHqUjQ74vT40uHjOZ1PIl2msmMwwJIfR39uL/tEgDakUigYbXDReLHl6svZOzG+0aucQ8lFMRotw1BuRotD6eG6GJwYRiIk3HKHxkECOcdrrGuA26VCkkaU9pkWXXF9MI80CZ5zdWNhs1eY1lOJBpLxtaCiOYSDZgNUL/ZBkzO4MxvdFYOryA6O96OsfwoicF/TEy+5WNOrY1gUnjat6lsUGmzGDBMuaoeFC+0ubC6CEVqE4NbMmtFGZ0crOxuW0w5ARj4UdQToNvdOt3aPNRnMUrS4sWLoAXS2N8LntMOdD9LzGMBFgx0FhC1Nko3Ivy0hvys5Oq6jjhd2FOfMXYn5XAzszJ3WkgCy9n0RuutBKPniMrU57VKVFZgNXRUtmFDc10Vv2uOmF0LecdyGWdtXDzg4rGR7ThvSCIsQTNATGJyjsCZTt9IZKaaTS9GDqmzRLP5mQxxvY4U5tlWHqdJoCPpilEeDhMcyT3GeWSTeJA9i8L8b6oAFBkdRqmUJciIeQKNpg5X4X3QRTJozJwV4c6B/GKMVLMwxEyMZGMDYeRLxMAdFmch8Wv3KOHTM9D7NXyueFxWihdyaPUGVR0udRyMtzpDRW6P24ZKa0TDoSz0ibXc1OtJF109ik1UtzSxs6OzvR3s46YjpHzrtivcrjWfRc3dL5HlGfLop7HHqfCK28sYhhmbc8yzNKcTnETnxU6pTb2IS8IL4Oja3N8MhkGoNFe5a2lIyj2LQSy3t8qHM7YNIebwlhbKSIhjnNsGuGC/9LBjEalJnmYkBV4pwYH8NkUkZNYiha7dr9bLcxp3nzE5MhnlPSppMYp4EVirPtaLyJ4UdF1oblTRRPeVxF2qQy89cAm4t1WSrD6GuE1+mAk2Vum0fPzm9EPkkBNfnRuWARFszrQXc769NnRZmimaDRZ+N57rZS3CnOqRxkMJ3n/DiCeQ9aF8zTXjVYlGvO5YY5FUZY50WL3wa9TDgLBzXjy+fXIykebZ0NmSiNGPd8LFrM9Ho60dFBIaQRlKXR03tgH8U7hDjF3spzqyz33s006mi4FmmEJFlP6ToKbWEUfUEzOtrrtTdKFTMT6B+kEdOSw8DuIIwtc2nczIEtHUbeWY96GRFI0kgRT9dlgT4XoUGWQMHk0p6VLhRySmgVitNg9oSWFrlNOjsKrdlQQio8gXCcV62nnp2oHllewTqbeDRe7VEJ9m/I0ZudCBdg9ndibk8H2tta4KXAykQa/s+E6fnwGE8dNxs7RB4kr6LLxKNa53ZYaCUvld8NBXpsQwewc2ASsah4A2GE5GXqkSjSRSNcLZ1odpk1YbA6vfBXBUfb6F02i0h7nChGg/Roy7A3eqCPHcLu7b0Y0Trvakc/Mc5OnN74pAyp5thBhhGI69Hkd2kznPXpMRwcL6OB5bVZD9ezwUqBZfwyXMpgrEKGlUUj3B7U1cks5spsWS+9RGM+w07Op03skeeBK4j4sYOlZ+SmOFm1xSwYh4nelXT2MnqQSCFbMMFJ40KGR2X+TDEdxcTIMEbkvl+IHT3rJBSSiTj0NG3Mk0yc0m5+T0dEXTzaQ9hzcBSRaPTI+iwZ4GhshZ8iIh25zGwO9e3DUMoMX9sczO1qo8fO9rfreD5EkCyz/mmQ0I+j151CfHwAw9E0MgkaXJqXLPXJcDkbWqaElrmwuuCl4dRYaydtk5nPfhjSQaTp0drdbjhk9rjDSyOrYgzIJrOjG5sawCbX7g0X7TRc6Bnnx+nRTWS0iT6V51lZi3LexinGMkTPupDFPOr8XlCXkaOgR+XhX5MDdps8VyuP+/BcTNK7zVBopT0otDn5znO3JCd4Jo4EHPDVmXk+TSKS1sNOA8UUH8eoaL7TgkIyhJGxCEruFjS6C4iF9aj3OaGnxz9J49TsdsJhk9EMnTapzWKzwU3PVuqigXlzl2WEIo6YqR5djYyPxm2C52mKQttYGMahoRR03jptfkKg9yDGy42Y7ytgdDQDW3ML/BaK68g40g7WkzHN9o2wPs2w0XBLBGgER0EDugVuQwGZHOuL17gSWoXi5EjXPsOI2FLgZCai9Io6ed7Ui6Z6h7Z4BcoUAYqMvJdVftdm7Mqkm3IWiXQWOaMD7qZGCnA9BaYBzfUUFnZ8pWyWXllZ6/C0iTn8XHnsQYSGcWnx1cRHkPt2FF2KXo6dTU7vofd1eBi2SYZY53ShSQRbwjEeeS5WhmynP7JTr3Ws7Ngkn9pmYifagLbuLs3zO3LrQlfXAixdthhz5XuzVxPZGjq5l0rvUu5nal5wlsJJz8lAVTLK8KnUS56ec5ie1xi9aU1oRMzHMRmKIMF+vfY+2SNgR2iXoWlzbfiT+dSZYKEnbrfJqleyq1I32r/0vFPhAMJUAM3Yaag8X+qj1wJ5xlVmxcoSzpXQRyKPr8gM3JJ1qi41z1bqs6tTq09DtR2YCxRYTu1l9HaKt9ulPRLitDKf8mhMVmbesv0kb9IGzLPVQ0GsedjNjcyXg171UfmgR+2hETK9neR8qaeHZzFVlw+RttLqwMU2nRZWzisaajKELSG1auE/JRox6Yy8kWl6Wga4KNKNTKtJRgH8dXBqGmxn+ozHXkRi7BD27dyBXfv7MRKSx7Xo8ctCJWIUVDeD0QSTzQW7vOowNYnh3hF61SUKtxgkBhjlPnMxjtGDe3GgfxwJgxetrZ7KDHGePwYawO5meqSWFAJ9e7Fru6Q3gEAyCxONqTpttIbtJ4YWG1vP47RH06Ru5XyhEBrlJJATh3/Tg/uwZ+9+9IdMaOpqgcPViqY6E9JjvTjUF2bb6rUyyHXKrNMTH8PAvj04OBLXRgDqZba3zBTXrjmmUakshUJxAmbco60gnYeNFjq9Wblg+d0inpR4b/TUZGKM2VCZ3Vqb0COzbuW5ThM7RrcMI3OnCJtcyNJRmemdOGTCBi16OztqRssAlfS0VaJo2Ttk6cCjF3KgcKXFu8xb4KIIiEBLvPKYhwi1zuihByPiUEnv6E0Tc/6WCocQz5Vg9bejieXyyDOz2ozgYzeZbKV9dtNX07LDzigXxPBYDJlsGrFYVPMCQ/QkQzIEGs1AZ6DXwDKaUgGMjYxhTIbszOyg2dFqAizPu9IQ8NbJIhC1l8kfRstv9fMU2o4MPZwEMkUzXF4XO0ijtpJWNp3UliYsSUevFV4mmRUpitIGbpbBBdvxVksqZpFORBBKGuBkPmr1KW8YklnJRfqnLjs9nKo1ICMcsgpXgmWOsA6DLG8wLAsdOOGjF+anFydNWcwkEAtOIkqDyGMpakaV9iL9EvOfMKJ5mkcrBZveRlMb60m8roRMhuJ55pKFSLhfmyg0fWMMMlEuQY+8YGM7OWXJSZmJzfNThpGrlStlk2etTRQuM8VK/uq0clKz5DElYy03NJRkVTK7nc4vz22zBRarPKvNcsk5yt+0Z5WZHxF3nUEmVXlR5+W5LDPPmbbBZmeuaWzRiKjTxN3GsGx3Hc8LhxUGizxGU5vMxTYz83qQhTaYh2L1epRNHjEr6Xm9MC8Oeu0yo56ZZdksMKXH0R+1Y47fhDyNEJu3CW0tPi2/Zhp6YvDqTDQ2mS+ZQOjK8bpJV9ISI87k8KK+0Y86p1yzUg5j5ZlzCm6lJhQKxfGY+SUYRVREGEQoeeFWvE7pcNnJiGiwo5L1e8XS1rwY6VArISrWN5VJ67RrUUtc2iSYytfKQv7SYVa+V46TNPlx+nEaDJdmBz7ejwPBjNZxTkfuDbpbFmNOowh/LR/HIuVJyMpQ6SLszZ1oNB9vQYeTwfxlRnCwdxIRuec8vd5YniLFvr29FS1yfzU+hN6+MYwXnaj3iYcmnasWkNGws6Ox4nXZpzr5kyP1kkI4EEYqT6+IHpmDHaYsSiGzlIPj4inLAgyV/MjMYrvbT++0gd7RsS+a1+ozn6QgDqNvOI7c0ZXADt7un4P57e5KvrlLV84iPDyI4YkIkjL0L/JhtMLb3I72Jj8cBgoE9xZTUQQGDmjLXEq+D0Mjyu5Hz+IOuKaE9viIwRUb7UekTLGnF6rd/63+Nh1pT1k8JRwMIMe4/R551EnOsYoBJsWWvzIsLgs4HBc5L7XztXpuisCxPrQy83vl3Jc8sQ0kPCMtayM9kid+lu/8Xc5nEU7NLuGB2m9yjYhnraVREXyJV8/yyYhOJT4JI+e7/DINuc4kjPyuZUDi4HFFeuzRIewPOLF8YUslPR5bLMrCFwwj3mn1OF6dlbjCg+gLG2D3+dHglWfNK/UjBpWWV25iKIjxZ6ARohVIoVAcwywI7TmG1iGwg9N6lqNg/iteU/X7SdCGAfn3jN8NW82DdE7HwHxonghFyJCYxNhwPw5OyL1eyZgcI0H4WWap1ndjQZes8SuvI6wcfnIqaWpxTM87d1REovJbhaoAaCJxosgZXgRGylLdc5iqSEgHP0U1/PR0tHo/LEwakh8RhGMjlYxronI6xa20U7UcJztA0pMMaeGm5aOKjNocPHgQY2Nj2u/HbbcXDVI+qX8ZuZGFUE6jJqVOWJeHR3okFmnNCrU6kdsGc+fO1Txb2adQKI7lpS+0CoVCoVC8gJxaVRUKhUKhUJwxSmgVCoVCoZhFlNAqFAqFQjGLnHNCK3NOjtiq+xUKhUKheDEy+0JbFczpHP29xnH3K6VVKBQKxYuY2Z11XNQhl9YhpSvBboX2zk95bVsipIPOXIbdLY/6V5CFHdIxPQJBHaJJQB7tNNsBn7+EOoaTF7Qf8wyGQqFQKBTnOLMmtDpGU4wYMLDFjC3GPFYsK2C+V6e9tu7hXxlhn5PHqlflYa9GUU6YsOUhE266yYiHtwKhAtC6vITXvCWPt7wih576MgwMq7RWoVAoFC8mZnnomLIoQ7/cjhgBPmo4WFb02bPOiIFAGW/9vync/lAcGzck8Id/ymOJ04DHdpowFJFF1KsHKBQKhULxImHWpatQBFJFHfKa5lb80WMnOumQy+iQzQNWTxnNbWW0c2v0gl4sveCsTlu96UT3dhUKhUKhOFeZNaGVNV5zBQP6evU4sNOAZIIqWUuNf83WMqyWcsVLLRfRs6oIa1qPX/0fKz74Tjve9jY7PvBVEx4+VML8zgIa3bJ0XOVwhUKhUCheLMyK0Mr9WdALjYwbMEJxdCf1SMT0iNGhlfushX4d7v6ZGd//gxm7AjoYzSW0ryyiqQFwyL3ZrhIW9JRh9lCQ60pY2lVEs7ciysqpVSgUCsWLiZkXWlHCog6hQSN29urgWlzAVcvLiB0yYt+AHhkKb5nebR+93O37DRgfNuKZR0z41Y1GPLpTB0NjCRdcwmMuL2JJexmJXgPu/r0Zt93F48fpJTN+JbYKhUKheLEw47OOxZvNBUx4ZqMJm7JFXH9NHp16I9b92oTJ1gIuuhIYuscA74IcLr42j8wWK771XTN+/SAFmMeK11oqyCvSy9o7V0VUUymgZ3URH/nrLF5PAaZziyPez61QKBQKxTnKjAutkcf37zHj2S3A3MtyWDCnBAvd0NiwGfeuN6BxLr3UbTq4u/K48JV52HmMvBpNJjrJm+BKstWi5T7JTm22sfx2kieKFAqFQqE455iV52hLRR0KBQqkqTrZiYiI5umpFnJmPH6jAY7uqtAyCnmvZTFowmN3mvGLX+vx1B4dQhRZ39wSXvf2PN77thyWtpRgZtjTeZWmQqFQKBTnCrMitNpjOLLx56kgVe80mzTj4d8YYZ8utHoDtv/Bgt2jZTRcVkCTswi9vHE6ZsKz/QaEPXm8dnUe8/1l5IvV+BQKhUKheBEwo0IrX00mwE71PP4zr/RosyY88DMT7HNzWPPqPGzafj3Gn7Zg/XoDdoyWMBkqI0Whdbj08M8pYfnlOVyzqIg6YxnJNL1fJbYKhUKheJEwo0IrInvwoB733WfExIQeBnmWZxoyRFzI63FgkwFmXxHtC4owSRBR5aQB+7Ya8fh6YCJfCS9zoueuKeHS1QV015ewhOEvvayIxsayEluFQqFQvCiYUaG1WIBnnjHge9+zoK9PB6O8COA46A38h4fKfdtaDKK1sl+Sl8lRGvxRJkDJ/V6LFbjiijze8Y48enrKyNfEWKFQKBSKc5hZuUf7fJkadhYxrn5UKBQKheLFyKlV9QVA9Fvbqt8VCoVCoXixck4KrUKhUCgULxWU0CoUCoVCMYsooVUoFAqFYhZRQqtQKBQKxSxyRrOOs9nsrM46VigUCoXipcIZCW0ymdQe8VFCq1AoFArFyTkjoR0bG0MgEEBJVpNQKBQKhUJxQqaEVqFQKBQKxcyjJkMpFAqFQjGLKKFVKBQKhWIWUUKrUCgUCsWsAfx/aRbtBPl7V4sAAAAASUVORK5CYII="><br></p><p>3. '사용중지'버튼이 보이면 크롬 브라우저를 재시작하세요.</p><p><img src="data:image/png;base64,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"><br></p><p><br></p>
</div>
</li>
<li data-category="30">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">탑승확인서 및 탑승 후 영수증은 어떻게 발급할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">에어부산을 이용하신 후 탑승확인서 및 영수증이 필요하신 손님은 당사 예약센터</span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1666-3060 으로 연락주셔서 본인확인 절차를 거치신 후 발급이 가능합니다.</span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">본인확인 시 신분증을 팩스로 요청할 수 있으며, 탑승확인서는 본인에게만 발급이</span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">가능함을 참고하여 주시기 바랍니다.</span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">만약, 공항 현장에 나가실 수 있는 손님은 공항 지점에서도 발급이 가능합니다.</span><br></p>
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">PG999 오류는 무슨 오류인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>당사 사이트에서 결제가 불가능한 카드를 사용하신 경우에 발생합니다.</p><p>일본 PG사 카드승인/현금결제 오류로 확인되며, 해외 온라인 사이트에서 결제 가능하도록 등록된 </p><p>카드인지 해당 카드사로 문의하여 주시기 바랍니다.</p><p>만일 등록 후에도 결제가 어렵다면 해외 VAN사의 승인이 어려운 관계로 다른 신용카드로 이용 부탁드립니다</p><p><br></p>
</div>
</li>
<li data-category="20">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">유아의 요금은 어떻게 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국제선의 경우 유아의 항공 운임은 통상 성인 공시 운임의 약 10%를 지불하셔야 합니다. </span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국내선은 만 24개월 미만</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">&nbsp;유아의 운임은 없으며, 국내/국제 모두 좌석을 점유하지 않고,</span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">성인 보호자가 유아를 안고 탑승하셔야 합니다.</span> <br></p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">해외출발 항공권을 신용카드로 결제 후 환불했습니다. 환불은 언제쯤 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>해외출발 항공권에 대한 신용카드 결제건을 환불할 경우 대략 15일~한달까지의 기간이 소요될 수 있습니다.</p><p>이는, 국내에서 취소 후 해외 은행으로 취소 내역을 발송하고, 현지 카드사에서 확인 후 다시 취소처리가 진행되어 국내 신용카드의 환불처리 기간보다 다소 시일이 소요될 수 있습니다.</p><p><br></p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">신용카드로 결제하고 환불했습니다. 환불은 언제쯤 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>신용카드로 결제할 경우 국내선의 당일 결제 건은 당일 승인취소가 됩니다. (체크카드는 은행마다 다름) 국제선의 당일 결제 건은 보통 1~2일의 시일이 소요됩니다.</p><p>당일취소가 아닌 경우 일반적으로 신용카드 취소 건의 경우 취소 후 익일 카드사로 전달되며, 전달 이후 약 2-3일의 처리 기간이 소요됩니다. (은행영업일 기준)</p><p>정확한 입금일은 상기 기간 이후 해당 카드사로 문의해주시기 바랍니다.<br></p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선 환불 규정은 어떻게 되나요</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>국제선 항공권은 종류별로 환불 규정이 다릅니다.</p><p>예약전 - 예약 단계에서 운임 상세보기를 통해 확인 가능합니다.</p><p>예약후 - 로그인 후 예약조회 탭에서 본인이 구매한 항공권의 운임규정을 확인할 수 있습니다.<br></p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국내선 항공권의 환불 수수료는 얼마인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><strong></strong></p><p><strong><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국내선 항공권 환불 시점에 따른 환불 수수료는 다음과 같습니다. </span></strong></p><p><strong><br></strong></p><p><strong><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">환불 수수료(1인 편도기준, '22년 1월 18일부 적용)</span></strong></p><div class="tblColTxt01 mgt20" style="margin: 20px 0px 0px; padding: 0px; border-width: 2px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: rgb(97, 110, 123); border-right-color: initial; border-bottom-color: rgb(176, 187, 196); border-left-color: initial; border-image: initial; overflow: hidden; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><table style="margin: 0px 0px 0px -1px; padding: 0px; border: 0px; width: 687px; min-width: 100%; border-collapse: collapse; border-spacing: 0px;"><caption style="margin: 0px; padding: 0px; border: 0px; width: 1px; height: 1px; line-height: 0; font-size: 0px; overflow: hidden; position: absolute; left: -9999px; top: -9999px;"><span style="font-family: Arial, sans-serif;">명칭, 개인 항공권(예약취소시점,수수료),단체 항공권(예약취소시점,수수료) 특가 항공권(예약취소시점,수수료)입니다.</span></caption><colgroup><col style="width: 240px;"><col style="width: 120px;"><col style="width: 233.766px;"></colgroup><thead style="margin: 0px; padding: 0px; border: 0px;"><tr syle="margin: 0px; padding: 0px; border: 0px;"><th scope="col" class="bdr" style="margin: 0px; padding: 15px 0px; border-width: 0px 1px 1px 0px; border-top-style: initial; border-right-style: solid; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: rgb(207, 218, 227); border-bottom-color: rgb(176, 187, 196); border-left-color: initial; border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); width: 125px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif;"><span style="color: rgb(0, 0, 0);">환</span><span style="color: rgb(0, 0, 0);">불 시점</span></span></p></th><th scope="col" class="bdr" style="margin: 0px; padding: 15px 0px; border-width: 0px 1px 1px 0px; border-top-style: initial; border-right-style: solid; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: rgb(207, 218, 227); border-bottom-color: rgb(176, 187, 196); border-left-color: initial; border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); width: 202px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">일반항공권</span></p></th><th scope="col" class="bdr" style="margin: 0px; padding: 15px 0px; border-width: 0px 1px 1px 0px; border-top-style: initial; border-right-style: solid; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: rgb(207, 218, 227); border-bottom-color: rgb(176, 187, 196); border-left-color: initial; border-image: initial; background-color: rgb(250, 250, 252); color: rgb(51, 51, 51); width: 185px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif;"><span style="color: rgb(0, 0, 0);">실속/특가</span><span style="color: rgb(0, 0, 0);">항공권</span></span></p></th></tr></thead><tbody style="margin: 0px; padding: 0px; border: 0px;"><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 20px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center; width: 124px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">~&nbsp;</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 61일 이전</span></p></td><td rowspan="2" style="margin: 0px; padding: 15px 20px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center; width: 202px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">1,000원</span></p></td><td style="margin: 0px; padding: 15px 20px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 1px solid rgb(221, 221, 221); border-image: initial; text-align: center; width: 185px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">2,000원</span></p></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 124px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 60일 이내~</span><br><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 31일 이전</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 185px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">4,000원</span></p></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 124px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 30일 이내~</span><br><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 15일 이전</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 202px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">3,000원</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 185px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">6,000원</span></p></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 124px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 14일 이내~</span><br><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 3일 이전</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 202px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">5,000원</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 185px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">9,000원</span></p></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 124px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 2일 이내~</span><br><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 30분 이전</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 202px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">10,000원</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 185px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">12,000원</span></p></td></tr><tr style="margin: 0px; padding: 0px; border: 0px;"><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 124px;"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">No-Show 수수료</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 202px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">15,000원</span></p></td><td style="margin: 0px; padding: 15px 20px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; text-align: center; width: 185px;"><p style="text-align: center;"><span class="point02" style="margin: 0px; padding: 0px; border: 0px; color: rgb(239, 54, 167) !important; font-family: Arial, sans-serif;">15,000원</span></p></td></tr></tbody></table></div><ul class="ulist01 mgt20" style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">환불 수수료는 항공편 출발 30분 전 예약 취소 시 부과됩니다.</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">No-Show 수수료는 항공편 출발 30분 전까지 예약을 취소하지 않고 미탑승 시 부과됩니다.</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">No-Show 수수료 징수 시 환불 수수료는 별도로 징수되지 않습니다.</span></li></ul><div><font color="#666666"><br></font></div><ul class="ulist01 mgt20" style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif;"><b><span style="color: rgb(0, 0, 0);">[면제대상]</span></b></span></li></ul><ul class="ulist01 mgt20" style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; color: rgb(102, 102, 102); font-family: " nanum="" gothic",="" dutom,="" gulim,="" arial,="" sans-serif;="" font-size:="" 13px;"=""><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif;"><span style="color: rgb(0, 0, 0);">항공권 결제 당일 환불/여정변경(시스템 점검시간 이전까지)</span><br><span style="color: rgb(0, 0, 0);">(단, 결제 당일 탑승하는 경우, 항공편 출발 30분 전까지 환불/여정변경)</span></span><br style="vertical-align: top;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: top;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">※ 시스템 점검시간: 23:50~24:10(화요일 23:00~24:00)</span></strong></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">고객 사정이 아닌 기상 등의 사유에 의한 환불/여정변경</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">항공사 상황으로 변경된 스케줄에 의한 환불/여정변경</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">모든 무상 항공권</span></li><li style="margin: 0px; padding: 0px 0px 0px 9px; border: 0px; line-height: 20px; background: url(" story.airbusan.com="" content="" assets="" images="" common="" blt_square01.png")="" 0px="" 7px="" no-repeat;"=""><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: top;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">면제대상 항공권임에도 환불/여정변경 수수료 부과 시, 예약센터(1666-3060)로 문의 바랍니다.</span></strong></li></ul><p><br></p>
</div>
</li>
<li data-category="13">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">카드로 결제하였는데요. 현금으로 환불 받을 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
신용카드로 구매한 항공권의 경우 현금으로 직접 환불받으실 수 없으며, 구매시와 동일하게 카드 결제일에 맞추어 해당 카드로 환불이 이루어집니다. <br>즉, 항공권 환불을 신청하시면 3일 이내에 카드사로 환불 요청이 전송되고 카드사에서는 고객님의 결제일에 맞추어, 환불하여 드립니다. <br>취소하신 날로부터 최소 1주에서 2주 정도 소요됩니다.
</div>
</li>
<li data-category="16">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">아이디/비밀번호를 잊어버렸어요. 어떻게 찾죠?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>1) 로그인 화면에서 '아이디 찾기' 또는 '패스워드 찾기" 버튼을 클릭합니다. </p>
<p>2) 대한민국 국적자인 경우 휴대폰 번호/아이핀/이메일 인증 중 선택, 외국인인 경우 가입시 등록정보로 인증 받은 후 찾으실 수 있습니다.<br></p>
</div>
</li>
<li data-category="24">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">회원탈퇴는 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>다음과 같은 절차로 회원탈퇴를 하실 수 있습니다.</p>
<p>&lt;홈페이지&gt; <br>1)&nbsp;마이페이지&gt;회원정보&nbsp;수정을 클릭하시고, "개인정보 수정"버튼을 클릭합니다.<br>2) 우측 하단의 "개인정보 변경하기"버튼을 클릭한 후 비밀번호를 입력합니다.<br>3) 좌측 하단의 "회원탈퇴"버튼을 클릭합니다.</p>
<p>&lt;모바일&gt;</p>
<p>1) 모바일 우측상단의 "MY" 버튼을 클릭하시고, "회원정보 수정"탭을 클릭합니다.<br>2) 비밀번호를 입력한 다음 하단의 '회원탈퇴'버튼을 클릭합니다. </p>
</div>
</li>
<li data-category="1">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">회원정보를 변경하고 싶어요. 방법을 알려 주세요.</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">다음과 같은 절차로 회원정보를 변경하실 수 있습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size:
11.0pt;font-family:" 맑은="" 고딕""=""><o:p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> </span></o:p></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif;"><br></span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">&lt;</span><span 맑은="" 고딕""="" style="font-size: 11pt;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">홈페이지</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span></span></span><br></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1) </span><span style="font-size:11.0pt;font-family:
" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">홈페이지 상단의 ‘마이페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">회원정보 수정</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">'</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">를
클릭합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">2) '</span><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의 정보</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">' </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">우측의</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> '</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">개인정보
수정</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">' </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">버튼을 클릭합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span></span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">3) </span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">원하시는 내용을 변경하고 우측 하단의 </span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">"</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">수정</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">"
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">버튼을 클릭하시면 완료됩니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size:
11.0pt;font-family:" 맑은="" 고딕""=""><o:p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> </span></o:p></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><br></span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">&lt;</span><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">모바일</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><o:p></o:p></span></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1) </span><span style="font-size:11.0pt;font-family:
" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">우측상단의 ‘</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">MY'</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">버튼을 누르고</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> '</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">회원정보수정</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">'</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">탭을 누르세요</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">2) </span><span style="font-size:11.0pt;font-family:
" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">원하시는 내용을 변경하고 하단의</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> '</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">저장</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">' </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">버튼을
클릭하시면 완료됩니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size:
11.0pt;font-family:" 맑은="" 고딕""=""><o:p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> </span></o:p></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><br></span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1</span><span style="font-size:11.0pt;font-family:
" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">회에 한해 직접 변경이 가능하며</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><o:p></o:p></span></span></p><p style="line-height: 1.2;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span></p><p class="MsoNormal" style="margin: 3.75pt 0cm; text-align: justify; line-height: 1.2;"><span style="font-size:11.0pt;
font-family:" 맑은="" 고딕""=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">추가 수정이 필요할 경우 고객문의 글을 남겨주시거나</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">예약센터</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(1666-3060)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">로 문의해주시면 확인 후 수정해드립니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p style="line-height: 1.2;"><br></p><p></p>
</div>
</li>
<li data-category="17">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국내선 항공권을 인터넷으로 예약만 하고 차후에 구매할 수는 없나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
인터넷을 통한 예약은 예약과 동시에 항공권 구매를 하도록 하고 있습니다. <br>인터넷 동시발권은 국내선의 예약 부도율을 낮출 뿐만 아니라 실제 이용하는 고객이 좌석을 이용할 수 있도록 하기 위함입니다.<br>인터넷 예약은 특별기간 다양한 인터넷 할인을 제공하며, 24시간 운영하고 있습니다.
</div>
</li>
<li data-category="17">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국내선 항공권을 인터넷으로 구매했는데 항공권은 어떻게 받는 건가요? </a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>국내선 항공권은 항공권 실물이 없는 E-Ticket으로 별도의 항공권 발급 절차가 필요하지 않으며 아래의 방법으로 탑승 수속이 가능합니다.</p><p><br></p><p>- 공항 키오스크(자동 탑승권 발급기)를 통한 탑승권 출력</p><p>- 사전 좌석배정 후 모바일 탑승권 발권</p><p>- 출발 당일 출발 30분 전까지 신분증을 소지하여 공항 카운터에서 탑승권 발권</p><p>(단, 카운터에서 탑승권을 발급받는 경우 별도 수수료 부과)</p>
</div>
</li>
<li data-category="30">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">구매 영수증(항공권)은 어디에서 받을 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;; border: 1pt none windowtext; padding: 0cm; background: rgb(250, 250, 252);"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">홈페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">모바일을
통해 구매하신 항공권의 영수증은</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&nbsp;[</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">마이페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의
예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&gt;&nbsp;</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공권 예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">변경</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">환불</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을 통하여 영수증 확인 및 출력이 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-size:11.0pt;font-family:&quot;맑은 고딕&quot;;mso-bidi-font-family:굴림;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">단</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">여행사</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">타 구매처</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">를
통해 구입하신 항공권의 영수증은 해당 구매처로 문의해 주시기 바랍니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span></span><br></p>
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">인터넷 예약 도중 이중(중복) 결제가 되었는데 어떻게 해야 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
예약센터(1666-3060)로 연락주시면, 카드 결제 및 발권 여부 확인 후 처리를 도와드리겠습니다.
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">인터넷 구매시 카드 승인은 정상적으로 이뤄졌으나, 예약 조회가 되지 않을 때 어떻게 해야하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>예약센터(1666-3060)로 연락주시거나 홈페이지에서 고객문의를 남겨주시면,&nbsp;확인 후 처리를 도와드리겠습니다.</p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">인터넷에서 일부 승객 예약 변경은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>[예약조회 &gt; 항공권 예약조회/변경/환불]에서 '탑승자 분리' 버튼을 선택하세요.</p>
<p>&nbsp;</p>
</div>
</li>
<li data-category="20">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">비회원으로 예매를 했는데 예약번호를 잊어버렸습니다.</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>예약/결제 시 입력하신 이메일 주소로 항공권 구매 완료 안내 메일이 발송되며, 받으신 안내 메일을 통해 예약번호 확인이 가능합니다.<br>안내 메일이 확인되지 않으실 경우에는, 예약센터(1666-3060) 또는 홈페이지 고객문의를 통해 내용을 말씀해주시면 확인을 도와드리겠습니다.</p>
</div>
</li>
<li data-category="20">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선 전자항공권 여정안내서는 어디에서 출력이 가능한가요？</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>홈페이지에서 로그인 하신 후, [항공권 예약조회/변경/취소] 페이지에서 출력을 원하시는 여정을 선택하여 들어가셔서 여정안내서를 출력하실 수 있습니다.<br><br>※전자항공권 여정안내서는 출입국 심사 시 확인 요청을 받으실 수 있기에 반드시 여행기간 동안 지참을 해주셔야 하며(국제선), 출력이 어려우실 경우에는 출발지 공항 수속 시 직원에게 말씀하시면 출력을 도와드리니 이점 참고 바랍니다.</p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">면세점에서 구입한 캐리어 탑승구에서 수하물 위탁가능한가요? </a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><strong>▶ 국제선</strong></p><p>새로 구입하신 가방이 기내 반입 사이즈 (삼면의 합이 115cm, 10kg 이내) 캐리어라면 인도 받으신 후 휴대 수하물로 기내 반입 가능하며, 기내 반입 사이즈 또는 기내 휴대 수하물 허용 개수를 초과하는 경우에는 탑승시간 30분 전까지 출발장 내(탑승 게이트 앞) 저희 직원에게 문의해 주시면 위탁 수하물로 보내드리고 있습니다.</p><p>다만, 위탁 수하물로 부치실 경우 탑승 게이트 위탁 수하물 수수료가 부과되며 (무게/개수 초과 요금 별도 부과), 자세한 내용은 [서비스안내&gt;초과수하물]을 통해 확인하시기 바랍니다.</p>
</div>
</li>
<li data-category="29">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">출발 당일 언제까지 공항에 도착해야 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">출발 전 탑승수속 및 출발수속에는 시간이 필요합니다.</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><br></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">그러므로 출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> 1~2</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">시간 전까지 여유 있게 공항에 도착하시기 바랍니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">. </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">탑승수속은 항공기 출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> 30</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">분 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국내선</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">)/</span></span><b><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">40</span></b><b><span style="font-family:" 맑은="" 고딕";color:red"=""><span style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">분 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">(</span><span style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">김해공항 및 일부 해외공항</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">)/60</span><span style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">분 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">(</span><span style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">인천공항 및 그 외 해외공항</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);">)</span></span></b><span style="font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">에 마감됩니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">. </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">해당 시각 이전까지
탑승권 수령 및 수하물 위탁 등의 모든 수속을 완료해 주시기 바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><b><span style="font-family:" 맑은="" 고딕";="" color:red"=""><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><br></span></span></b></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="" 맑은="" 고딕";="" color:red"=""><span style="font-family: Arial, sans-serif; color: rgb(255, 0, 0);"><a href="https://www.airbusan.com/content/common/service/airport/procedures" target="_blank" class="tx-link" style=""><span style="color: rgb(255, 0, 0);"><b>[탑승수속 안내 바로가기]</b></span></a></span></span></p><p><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국내선 탑승시에도 신분증 지참이 필요한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공기 탑승 시 신분증을 꼭 지참하셔야 합니다. </span><br><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">공항 탑승 수속 시 직원에게 본인 확인 절차를 받게 되며, 이때 탑승하시는 고객의 신분증이 필요합니다. </span><br><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">아울러 공항당국의 보안절차에도 탑승권과 신분증이 필요합니다. 필요하신 신분증은 아래와 같습니다.</span><br><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">- 성인: 사진이 부착되어 있는 신분증 (주민등록증 또는 운전면허증) 지참.</span><br><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">- 유아 및 소아를 동반한 경우: 생년월일을 증명하실 수 있는 주민등록본 (또는 가족관계 증명서, 건강보험증, 여권</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)을 지참.</span><br><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">- 개인할인사항이 있는 경우: 할인사항에 따른 증빙서류를 지참.</span></p><p><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">유아 및 소아의 무료 수하물 허용량은 어떻게 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>성인 정상운임의 75%를 지불한 유아, 소아의 무료 수하물 허용량은 성인과 동일한 대우(국내선 15kg 무료)를 받습니다.</p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">액체류를 가지고 비행기를 전혀 탈 수 없나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"></span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국내선 이용승객의 경우 액체류 반입에 전혀 제한이 없습니다.</span></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">
</span><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국제선 이용승객의 경우 홈페이지의<span style="color: rgb(0, 0, 0);"> </span><span style="background-color: rgb(250, 244, 192);"><u><span style="color: rgb(0, 0, 0);"></span><a href="https://www.airbusan.com/content/common/service/baggage/restriction" target="_blank" class="tx-link" style="color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">[서비스안내&gt;운송제한 물품&gt;기내 반입 액체류의 제한]</span></a><span style="color: rgb(0, 0, 0);"></span></u></span><span style="color: rgb(0, 0, 0);">을 참</span>조해주시기 바랍니다.</span></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">기내에 반입이 안되는 물품은 어떤건가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">홈페이지의<span style="color: rgb(0, 0, 0);"> </span></span><span style="background-color: rgb(250, 244, 192);"><u><span style="color: rgb(0, 0, 0);"><a href="https://www.airbusan.com/content/common/service/baggage/restriction" target="_blank" class="tx-link"><span style="color: rgb(0, 0, 0);">[서비스안내&gt;수하물&gt;운송제한 물품]</span></a></span></u></span><span style="color: rgb(0, 0, 0);">을 참고</span></span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">하시기 바랍니다.</span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">그 외 운송제한 물품이 궁금하실 경우, 아래 URL 통해서도 확인하실 수 있습니다.</span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><br></span></p><p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><u><span style="background-color: rgb(250, 244, 192);"><a href="https://www.avsec365.or.kr/" target="_blank" class="tx-link"><span style="color: rgb(0, 0, 0);">[기내반입금지물품 검색]</span></a></span></u></span></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">초과되는 짐의 운임은 어떻게 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">▶ <b>국제선</b></span></p><p><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">무료</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">수하물</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">허용량인</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> 15kg</span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">를</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">초과한</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">수하물은</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">별도의</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">초과</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">수하물</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">요금을</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">지불하셔야</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">합니다</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">. </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">각</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;"><span style="color: rgb(0, 0, 0);">노</span><span style="color: rgb(0, 0, 0);">선별</span></span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">기준이</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">상<span style="color: rgb(0, 0, 0);">이<span style="color: rgb(0, 0, 0);">하오니</span><a href="https://www.airbusan.com/content/common/service/baggage/excess" target="_blank" class="tx-link"><span style="color: rgb(0, 0, 0);"> <span style="color: rgb(0, 0, 0);"><u><span style="background-color: rgb(250, 244, 192);">[서비스안내&gt;초과수하물]</span></u></span></span></a><span style="color: rgb(0, 0, 0);">을</span></span></span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">통해</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">확인하시기</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">바랍니다</span><span lang="EN-US" arial",sans-serif;color:#666666"="" style="font-size: 10pt;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">.</span></span></p><p><br></p><p><br></p><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">
</span><p><span style="font-size: 13.3333px; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">▶</span><span style="font-size: 13.3333px; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><b><span style="color: rgb(0, 0, 0);">국내선</span></b></span><br><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">무료</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">수하물</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">허용량인</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> 15kg</span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">를</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">초과한</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">수하물은</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">별도의</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">초과</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">수하물</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">요금을</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">지불하셔야</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">합니다</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">. (</span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">초과</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">수하물</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">요금</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">: </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">국내선</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">전</span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">노선</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> 2,000</span><span style="font-size: 10pt; color: rgb(0, 0, 0); font-family: Arial, sans-serif;">원</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">/KG)</span><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">임신 중 입니다. 비행기를 탈 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
&lt;임산부 고객의 항공 여행시 준비사항&gt;<p>&nbsp;</p><p><br></p><p>임신 32주 미만</p><p>- 제한없이 자유롭게 여행할 수 있습니다.</p><p> 단, 임신성 고혈압, 당뇨 등 합병증이 있는 임신부는 탑승수속 시 서약서를 제출해야 합니다.</p><p><br></p><p>임신 32주 이상</p><p>- 32주 ~ 36주 : 탑승수속 시 <span style="color: rgb(255, 0, 0);">서약서를 제출</span>해야 합니다.</p><p>- 37주 이상 (다태 임신시 33주 이상) : 임신부와 태아의 건강을 위해 탑승할 수 없습니다. </p><p>- 다태 임신의 경우 국제항공운송협회의 임신부 탑승 가이드라인(IATA Medical Guideline)에 </p><p> 의거해 단태 임신과 탐승 기준을 구별하고 있습니다.</p><p><br></p><p>임신 37주 이상</p><p>- 고객의 안전과 항공기 안전운항을 위해 탑승이 제한됩니다.<br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">반려동물을 기내로 동반할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">아래와 같은 경우에 한해 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1) </span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">반려동물은 개</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">새</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">고양이를 지칭하며 기타 금붕어</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">거북이</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">쥐 등과 같이 살아있는 동물은 여객기를 통하여 운송할 수 없습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">2) </span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">반려동물은 반드시 별도의 운반용 용기</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(PET
Cage) </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">내 보관되어야 하며</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">꺼내는 행위는 엄격히 금지합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">3) </span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">기내에 데리고 탈 수 있는 반려동물 운반용 용기</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
(PET Cage)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">의 사이즈는</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 3</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">변의 길이</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">가로</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">+</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">세로</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">+</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">높이</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">의 합이</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 115cm </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이하이며</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">높이는 최대</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
24cm</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이내</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">무게는</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 7kg</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이하</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(PET Cage </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">무게 포함</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">인 경우</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
1</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">인</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 1</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">마리의 제한이 있습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">4) </span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">운송이 인수되는 반려동물에 대하여는</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">여객의
무료수하</span><span style="color: rgb(0, 0, 0);">물 허용량에 관계없이 당해 동물 및 용기의 총 중량에 대해 초과 수하</span><span style="color: rgb(0, 0, 0);">물 요금을 별도로 징수합니다</span></span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);"> </span></p><p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">더 자세한 내용은 홈페이지<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif;">의</span></span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 10pt;"><span style="color: rgb(0, 0, 0);"> </span><span style="background-color: rgb(250, 244, 192); color: rgb(0, 0, 0);"><u><a href="https://www.airbusan.com/content/common/service/customer/animal" target="_blank" class="tx-link"><span style="color: rgb(0, 0, 0);">[서비스안내&gt;도움이 필요하신 고객&gt;반려동물 동반 손님]</span></a></u></span><span style="color: rgb(0, 0, 0);"> </span></span></span></span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">을 참고하시기 바랍니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">비상구 좌석이 넓어 보이던데 좌석 지정이 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><br></p><p>서비스안내 &gt; 부가서비스 &gt; 좌석 구매 (<a class="tx-link" href="https://www.airbusan.com/content/common/service/buySeat" target="_blank"><u>https://www.airbusan.com/content/common/service/buySeat</u></a>) 참고 부탁드립니다.</p><p><br></p><p>다음에 열거된 하나 이상의 적합한 기능을 수행할 수 없다고 판단되는 손님은 비상구에 앉으실 수 없습니다.<br><br>1. 활동성,체력 또는 양팔이나 두 손 및 양다리의 민첩성이 아래의 동작을 수행하기에 충분치 않은 승객<br>- 비상구나 탈출용 슬라이드 조작 장치에 대한 접근<br>- 탈출용 슬라이드 조작 장치를 잡고 밀거나 당기고 돌리거나 조작<br>- 밀거나 당기거나 하는 등의 동작을 통한 비상구 개방<br>- 날개 위의 창문형 비상구를 들어올리거나 분리된 부분을 옆자리로 옮기거나 다음 열로&nbsp;<br>옮기는 등의 동작<br>- 날개 위의 창문형 비상구와 비슷한 크기와 무게의 장애물 제거<br>- 신속한 비상구로의 접근<br>- 장애물 제거시 균형의 유지<br>- 신속한 탈출<br>- 탈출용 슬라이드 전개 또는 팽창 후 안정유지<br>- 탈출용 슬라이드로 탈출한 승객이 슬라이드로부터 벗어날 수 있도록 하는 동작<br>2. 15세 미만이거나 동반자의 도움 없이 상기 항목에 열거된 하나 이상의 역할을 수행하기에 불충분한 승객<br>3. 글 또는 그림의 형태로 제공된 비상탈출에 관한 지시를 읽고 이해하지 못하거나 승무원의 구두 지시를 이해하지 못하는 승객<br>4. 콘텍트 렌즈나 안경을 제외한 다른 시력 보조장비 없이는 위에 열거한 기능을 하나 이상 수행 할 수 없는 승객 <br>5. 일반적 보청기를 제외한 다른 청력 보조장비 없이는 승무원의 탈출지시를 듣고 이해 할 수 없는 승객 <br>6. 다른 승객들에게 정보를 적절하게 전달할 수 있는 능력이 부족한 승객 <br>7. 승객의 상태나 책임, 예를 들어 어린이를 돌보기 때문에 상기 열거된 하나 이상의 역할을 수행하는데 방해가 되는 승객 또는 이러한 역할을 수행할 경우 해를 입게 되는 승객 (장애인, 노약자, 임산부,유소아 동반 승객 등) <br>8. 비상구 좌석 착석 규정을 준수할 의사가 없거나 비상시 승객을 도와 탈출할 의사가 없는 손님</p><p><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">기내에서 물건을 두고 내렸습니다. 찾을 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
내리신 직후 알게 되었을 경우 도착 수하물 수취대에서 에어부산 직원에게 접수하셔야하며,<br>물건이 발견될 경우 에어부산 직원이 직접 연락을 드립니다.
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선은 출발 전 언제부터 탑승권, 수하물 처리가 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-family: &quot;맑은 고딕&quot;;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국제선 항공편 출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 2</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">시간</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> (120</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">분</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">) </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">전부터 탑승 수속이 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">. </span><o:p></o:p></span></span></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-family: Arial, sans-serif; font-size: 10pt;"><span style="color: rgb(0, 0, 0);">항공편 출발</span> </span><b><span lang="EN-US" style="font-family: Arial, sans-serif; color: red; font-size: 10pt;">40</span></b><b><span style="font-family:&quot;맑은 고딕&quot;;color:red"><span style="font-family: Arial, sans-serif; font-size: 10pt;">분 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">김해공항 및 일부 해외공항</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">)/60</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">분 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">인천공항 및 그 외 해외공항</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;">) </span></span></b><span style="font-family: &quot;맑은 고딕&quot;;"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">까지 모든 수속을 마감하여 주시기 바랍니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">&nbsp;</span></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><b><span style="font-family:&quot;맑은 고딕&quot;;
color:red"><span style="font-family: Arial, sans-serif; font-size: 10pt;">탑승수속 안내 바로가기</span></span></b></p><p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><span lang="EN-US" style="font-size: 12pt; font-family: &quot;맑은 고딕&quot;;"><a href="https://www.airbusan.com/content/common/service/airport/procedures" style="" target="_blank" class="tx-link"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">https://www.airbusan.com/content/common/service/airport/procedures</span></a></span><br></p>
</div>
</li>
<li data-category="7">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">기내 반입 수하물은 크기 및 중량의 제한이 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
수하물은 기내 안전을 위해 손님의 좌석이나 기내 선반에 보관할 수 있는 <br>가로, 세로, 높이 삼면의 합이 115㎝이내(단, 각 면의 최대치는 20cm X 40cm X 55cm 로 제한)이며 무게가 10㎏이하인 수하물 1개만 허용됩니다.<br><br>단, 여성용 핸드백, 지갑, 적정량의 독서물, 외투 혹은 모포,소형카메라, 쌍안경, 비행중 사용할 유아용 음식물, 유아용 아기바구니, 소형 서류가방 1개, 맹인 인도견 또는 농아 보조견 1마리, 개인이 소지한 책, 외투, 우산, 지팡이, 목발, 1자형으로 접을 수 있는 소형 유모차 (기내 보관 공간이 가능할 경우), 노트북 컴퓨터 및 보관용 가방, 소량의 면세품(사이즈 제한은 상동)은 추가 반입이 가능합니다.
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">탑승자 이름을 바꾸고 싶습니다. 변경 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>항공권은 타인양도 및 명의변경이 불가합니다. 영문명, 성별 등 여권정보와 상이한 정보로 예약한 경우, 탑승이 거절될 수 있으며 결제 후 변경 시 환불 후 재예약하셔야 합니다. 단, 원하는 항공편 및 좌석이 없을 수 있습니다.</p><p><br></p>
<p>탑승자 이름 중 동일 발음에 한해 동일인 확인 후, 일부 글자 또는 영문 스펠링이 틀린 경우 성/이름 상관없이 <span style="font-size: 10pt;">수수료 부과 후 변경이 가능합니다. 단, </span><span style="font-size: 13.3333px;">이름 철자 변경으로 항공권 재발행 후 해당 항공편이 비운항 </span><span style="font-size: 13.3333px;">처리되어도 이름 철자 변경 수수료는 환불이 불가합니다.</span></p><p><span style="font-size: 13.3333px;"><br></span></p><p><span style="font-size: 13.3333px;">자세한 사항은 예약센터(1666-3060)을 통해 문의 바랍니다. <b>에어부산 홈페이지가 아닌 여행사, 포털사이트를 통한 구매 건은 구매처로 문의 바랍니다.</b><br></span></p><p></p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">단체예약은 어떻게 합니까?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>홈페이지와 예약센터를 통하여 예매하실 수 있습니다.<br>단체예약(10명이상) 문의는 1666-6265번으로 문의하여 주시기 바랍니다.</p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">예약센터를 통해 예매해도 인터넷 할인 받을 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
예약센터를 통한 예매인 경우에는 인터넷 할인을 적용 받으실 수 없습니다. <br>또한, 예약센터, 공항지점 등 인터넷 이외의 지점에서 예약을 하시고 인터넷으로 구매하시는 경우에는 인터넷 할인이 적용되지 않습니다. 인터넷 할인을 받기 원하시는 경우에는 예약과 구매를 모두 인터넷을 통해서 하셔야 합니다.
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">예약을 했는데도 잔여좌석이 계속 "9"석인 이유는 무엇인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>예약인원수에 따라 개인 예약과 단체 예약으로 구분됩니다.<br>개인 예약은 최대 9명 이하의 인원으로 예약하는 경우이고, 단체예약은 10명 이상 인원이 국내선 2구간 이상 동시에 여행을 예약하는 경우입니다. <br><br>잔여좌석의 표시는 실제 좌석이 10석 이상 남아있더라도 최대 개인 예약 가능 좌석수 9석까지만 시스템에서 보여지며, 남아있는 여유좌석이 9석 미만일 경우 실제 잔여석 수 그대로 표시됩니다.</p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국가 유공자입니다. 이용시 유공자 특별 할인 내용을 알고 싶습니다.</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>국가 유공자 할인율은 공시운임의 10%, 국가 유공 상이자 할인율은 30% 입니다. <br>독립 유공자 할인율은 공시운임의 30%, 독립유공자 유족인 경우 10% 할인 가능합니다. <br><br>동반자 할인의 경우, 국가 유공상이자는 상이등급 1~4급인 경우와 독립유공자인 경우에<br>대상자 본인과 같은 할인율 적용됩니다. 두 경우 모두 수속하실 때 증빙서류를 제시하셔야 합니다.<br><br>* 할인대상 증빙서류 <br>국가 유공자증 또는 국가 유공자 유족증, 광주민주화운동 유공자증 또는 광주민주화운동 유공자 유족증</p>
<p>&nbsp;</p>
<p><strong>(※단, 국내선에 한함)</strong></p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">실시간 계좌이체로 구매한 항공권의 예약변경/환불은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>예약변경<br>실시간 계좌이체로 결제한 항공권은 홈페이지에서 변경이 불가능 하오니 환불 후 재구매 하시기 바랍니다.<br> <br>환 불<br>환불금의 입금 기준일은 환불 요청 당일이 아닌 해당 은행 영업일 기준 익일에 결제하신 은행 계좌로 자동 입금됩니다. <br>계좌이체로 결제한 항공권을 환불하실 경우 아래의 사항을 반드시 참조하시기 바랍니다.<br> - 실시간 계좌이체로 결제한 항공권은 반드시 발권일로부터 180일 이내 환불하셔야 합니다. (발권 일 180일 경과 시, 홈페이지에서 환불이 불가하오니 예약센터 1666-3060으로 문의바랍니다.)<br> - 탑승일이 지난 미탑승 항공권은 홈페이지에서 환불이 불가하오니, 반드시 탑승 전 환불 바랍니다. <br> - 왕복여정 예약의 부분여정 환불은 불가합니다.</p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">이름은 개명하였을 경우 개인정보 수정은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>개명을 하신 경우 주민번호와 이름의 변경 전/후 내역이 확인 가능한 주민등록초본을 예약센터 1666-3060으로 연락주신 후 팩스로 발송해 주시거나, 고객문의에 첨부파일로 남겨주시면 확인 후 수정이 가능합니다. <br>FAX 발송 시 변경하실 영문명을 적어주시면 함께 변경이 가능하오니 이점 참고 바랍니다.</p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선 항공권 구매 후, 돌아오는 항공편(리턴편)만 사용이 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
국제선 항공권은 예약하신 여정 순서대로 이용을 하셔야 합니다.<br> 출발편을 사용하시 않으시면 돌아오는 편(리턴편) 사용은 불가합니다.
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국내선 항공권 예약은 항공기 출발 몇 일전 부터 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
국내선 항공권 예약은 항공기 출발 예정일 354일 전부터 접수 가능합니다.
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">어린이 혼자 비행기를 탈 수 있습니까?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>어린이 혼자 여행하는 경우, 저희 항공사 직원이 출발지 보호자로부터 도착지 보호자에게 어린이를 안전하게 인계는 물론 비행하는 동안 승무원의 보호를 받는 UM(Unaccompanied <br>Minor, 성인 비동반 소아)서비스를 제공하고 있습니다. 보호자는 만 18세 이상이어야 하며, UM적용 대상자는 UM서비스 미 신청 시 탑승이 거절될 수 있습니다.</p>
<p>&nbsp;</p>
<p>이용대상: 국내선 만 5세 이상~만 12세 이하/국제선 만 5세 이상~만 11세 이하</p>
<p>*만 5세 미만 어린이는 어떠한 경우에도 혼자 여행할 수 없습니다.</p>
<p>*만 12세 이상~ 17세 이하의 고객이 요청하시는 경우 에어부산 국제선 구간에 한하여 비동반 청소년 유료서비스를(YPTA:Young Passenger Traveling Alone) 제공하여 드립니다.</p>
<p>&nbsp;</p>
<p>&lt;신청 및 이용절차&gt;</p>
<p>1. 여행출발 7일 전 예약센터로 신청(1666-3060)</p>
<p>2. 접수- 필요한 UM 서류 작성</p>
<p>3. 출발지 공항- 탑승수속 카운터 (담당직원 동행)</p>
<p>4. 연결지 공항 직원 연계 및 도착지 공항 직원 안내- 마중객 대기장소(담당직원 동행)</p>
<p>&nbsp;</p>
<p>*여행 당일 보호자와 함께 공항으로 오셔서 필요한 UM서류를 제출 또는 작성하시고, 담당 직원의 안내를 받으시면 됩니다.<br>*서비스 신청 시에는 출/도착지에서 어린이를 인수/인계할 보호자의 인적사항과 연락처를 알려주셔야 합니다. 또한 필요한 UM 서류 (UM 여행신청서, 보호자 서약서)를 작성하시면 됩니다.<br>*어린이에게는 공항 직원이나 승무원이 쉽게 알아볼 수 있도록 UM 봉투를 제공하여 드립니다.</p>
<p>*서비스 이용요금 및 필리핀/다낭/괌 UM 이용 고객은 홈페이지 [서비스안내&gt;도움이 필요하신 고객&gt;혼자 여행하는 어린이] 페이지를 참조하시기 바랍니다.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">제가 발권한 항공권으로 다른 사람이 이용가능 한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
항공편 예약은 반드시 탑승자 실명으로 이뤄져야 하며, 예약/결제 후 다른 사람으로의 이름 변경은 불가합니다. <br>타인으로 변경을 원하실 경우에는 본인의 예약을 취소/환불하신 후 실제 탑승자의 이름으로 다시 예약을 해주시기 바랍니다.
</div>
</li>
<li data-category="6">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">제 아이디로 로그인하여 친구나 친지 예약은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
인터넷 예약시 탑승고객의 성함은 실제 탑승객의 실명과 일치해야 합니다.<br>인터넷상에서 타인의 예약을 대신 하실 경우에는 다음과 같이 진행하시면 됩니다.<br>1) 회원님의 아이디와 비밀번호로 로그인 합니다.<br>2) 원하시는 여정을 선택합니다.<br>3) 탑승고객 정보 입력 단계에서 탑승고객 몇 입력란 위 ‘회원 본인이 탑승하지 않는 경우’를 체크해주시고 반드시 탑승하시는 분의 실명을 기입하여 주십시오.<br>4) 그 외의 예약 과정은 동일하게 진행하시면 됩니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">FLY&amp;STAMP는 뭔가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>홈페이지 및 모바일을 통해 항공권 구매 후 탑승을 하시면 노선에 따라 스탬프를 받을 수 있으며, 일정 수를 모으시면 국내/국제선 스탬프항공권 이용이 가능합니다.<br>또한 탑승뿐 아니라 구매나 양도, 별도 이벤트 스탬프(MINI STAMP) 수집을 통해 추가 적립도 가능합니다. (유아/소아는 스탬프적립 제외)</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">FLY&amp;STAMP가 기존 마일리지 프로그램과 차별화된 혜택은 무엇이 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>우선 성수기와 평수기 모두 일년 내내 스탬프항공권 이용이 가능합니다.<br>또한 탑승을 통한 스탬프 적립뿐 아니라 스탬프 구매 및 양도를 통해서도 스탬프를 추가적립할 수 있습니다.<br>그리고 국내/국제 연결 항공편을 이용하셔도 각 노선의 스탬프가 모두 지급되며, 홈페이지 및 모바일을 통해서 언제든지 쉽고 편리하게 스탬프 적립 및 사용, 조회가 가능합니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">FLY&amp;STAMP 별도의 실물회원 카드가 발급이 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
별도 실물카드는 발급되지 않습니다. <br>하지만 홈페이지 회원가입 시 자동으로 스탬프 적립 및 혜택을 누리실 수 있습니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">FLY&amp;STAMP 적용시점은 언제부터인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
스탬프 적립은 2014년 1월 1일 탑승 항공편부터 자동 적립됩니다.<br>2014년 1월 1일 이후 탑승회원 중 2014년 이전에 항공권을 발권하신 회원은 자동적립이 되지 않으므로[나의 스탬프] &gt; [누락 스탬프 적립] 페이지에서 별도 적립 부탁드립니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프의 유효기간은 얼마인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프의 유효기간은 탑승일로부터 1년입니다.<br>(예:2014년 1월 1일 탑승하여 적립한 스탬프의 경우 2015년 1월 1일까지 유효)<br>유효기간이 만료된 스탬프는 자동소멸됩니다.<br>단, 아래의 스탬프는 유효기간이 상이하오니 참조 바랍니다.<br>- 구매 스탬프 : 구매일로부터 60일(60일 이후 미사용시 자동환불, 환불수수료 없음)<br>- MINI 스탬프 : 적립일로부터 6개월</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">회원탈퇴시에 스탬프는 소멸되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
홈페이지 회원탈퇴시에는 기존 적립하신 스탬프는 모두 소멸됩니다.(재가입시에도 복원되지 않습니다.) <br>홈페이지 탈퇴시 유의하여 주시기 바랍니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">유아 및 소아도 스탬프 적립/사용이 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
유아 및 소아 탑승 손님은 FLY&amp;STAMP 이용대상에서 제외되어 스탬프 적립 및 사용이 불가합니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">홈페이지를 통한 항공권 구매시에만 적립이 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프 적립은 홈페이지 및 모바일웹/앱(APP)을 통한 항공권 구매시에만 가능합니다.<br>예약센터, 공항 및 오프라인 여행사, 온라인 여행사(예:인터파크투어, 웹투어 등)를 통해 구매한 항공권은 스탬프가 적립되지 않습니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">홈페이지를 통해 구매한 항공권은 모두 스탬프 적립이 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>아래 항공권은 스탬프가 적립되지 않습니다.</p>
<p><br><b>국내선&nbsp;</b>이벤트&nbsp;항공권, 특가 항공권, 할인율 50% 이상 항공권, 스탬프 항공권<br><b>국제선&nbsp;</b>이벤트 항공권, 특가 항공권, 스탬프 항공권</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">노선별 스탬프 지급기준은 어떻게 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">노선별 탑승시 지급되는 스탬프는 아래와 같습니다.(편도 탑승기준)</span></p><p><br></p><table class="txc-table" width="554" cellspacing="0" cellpadding="0" border="0" style="border:none;border-collapse:collapse;;font-family:굴림;font-size:13.3333px"><tbody><tr><td style="width: 494px; height: 36px; border-width: 2px 1px 1px; border-style: solid; border-color: rgb(5, 0, 153) rgb(204, 204, 204) rgb(204, 204, 204); background-color: rgb(247, 247, 247);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><b>편도 노선</b></span><br></p></td><td style="width: 59px; height: 36px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204); border-top: 2px solid rgb(5, 0, 153); background-color: rgb(247, 247, 247);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><b>적립수</b></span></p></td></tr><tr><td style="width: 494px; height: 38px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204); border-left: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">국내</span></p></td><td style="width: 59px; height: 38px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">1</span></p></td></tr><tr><td style="width: 494px; height: 38px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204); border-left: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">오사카, 후쿠오카, 나고야</span></p></td><td style="width: 59px; height: 38px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">2</span></p></td></tr><tr><td style="width: 494px; height: 62px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204); border-left: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">도쿄, 삿포로, 칭다오, 시안, 옌지, </span></p><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">장자제, 타이베이, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">가오슝, 블라디보스토크, 닝보</span></p></td><td style="width: 59px; height: 62px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">3</span></p></td></tr><tr><td style="width: 494px; height: 39px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204); border-left: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">홍콩, 마카오, 선전, 청두</span></p></td><td style="width: 59px; height: 39px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">4</span></p></td></tr><tr><td style="width: 494px; height: 78px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204); border-left: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">세부, 클락, 씨엠립, 다낭, 냐짱(나트랑), 울란바토르,</span> </span></p><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">싼야, </span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">하이커우, 비엔티안, </span><span style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">하노이, 코타키나발루, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">칼리보, 호찌민, 방콕, 괌, 사이판</span></p></td><td style="width: 59px; height: 78px; border-bottom: 1px solid rgb(204, 204, 204); border-right: 1px solid rgb(204, 204, 204);"><p style="text-align: center;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">5</span></span></p></td></tr></tbody></table><p><br></p><p><br></p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공권 예약시 스탬프 적립방법을 알려주세요.</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>항공권 예약시 탑승자 정보입력 페이지에서 탑승하시는 회원님의 이름과 전화번호를 반드시 기재해주셔야 적립이 가능합니다. </p>
<p>회원님의 성함과 전화번호는 기존 회원정보 상에 기재되어 있는 성함 및 핸드폰번호와 일치하여야 합니다.<br>동반탑승하시는 분도 회원이시면 해당 탑승회원의 이름 및 전화번호도 동일하게 입력하시면 됩니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">제 아이디로 타인예약을 한 경우 스탬프는 누구에게 적립되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Gulim, 굴림, AppleGothic, sans-serif;">스탬프는 예약 및 결제 여부와 상관없이 </span><b><span style="font-family: Gulim, 굴림, AppleGothic, sans-serif;">실제 탑승하시는 회원</span></b><span style="font-family: Gulim, 굴림, AppleGothic, sans-serif;">님께 적립됩니다.</span></p><p><span style="font-family: Gulim, 굴림, AppleGothic, sans-serif;">(여행사 예약 건 제외)</span></p><p><br></p><p><span style="font-family: Gulim, 굴림, AppleGothic, sans-serif;">탑승자가 회원일 경우 자동 적립되며, 비회원일 경우 회원가입을 하신 후 누락스탬프 적립요청에서 별도로 신청해 주셔야 합니다.</span></p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권 예약은 어디서 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권은 홈페이지 및 모바일을 통해서만 예약/발권이 가능합니다. (예약센터/공항 예약 불가)</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국제선과 국내선이 연결되는 여정의 경우 스탬프 항공권의 스탬프는 어떻게 적용되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
스탬프 사용 기준표에 따라 국제선-국내선 연결편은 각각의 스탬프 수만큼 적용됩니다. <br>(예: 김포→부산→오사카→부산→김포의 경우 총 스탬프 100개 필요)
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권으로 예약 가능한 여정은 언제까지인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권으로 예약 가능한 여정은 발권일로부터 6개월까지입니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권으로 예약할 경우 유류세와 공항세는 별도인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권 발권시 유류할증료, 공항시설사용료등은 손님 부담입니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권으로 예약/발권 후 예약변경이나 환불은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권은 예약변경이 불가하니 홈페이지나 모바일을&nbsp;통해 환불 후 재발권 하시기 바랍니다.<br>스탬프항공권을 환불하실 경우 공항세 및 유류할증료는 전액 환불되며, 미사용하신 항공권의 스탬프는 환급됩니다.<br>스탬프항공권 환불에 따른 스탬프의 환급기준은 아래와 같습니다.<br> -환불일 기준 유효기간이 남은 스탬프 : 환급가능(기존 유효기간 유지)<br> -환불일 기준 유효기간이 지난 스탬프 : 환급가능(단, 환불일+3일까지 스탬프 유효기간 1회만 연장되며 이후 소멸) <br> 예)3월 1일 환불시 유효기간 지난 스탬프는 3월 4일까지 1회 유효기간 연장</p><p>유효기간(6개월)이 지난 스탬프항공권은 공항세 및 유류할증료만 환불되며 스탬프는 모두 소멸됩니다.</p><p>※ 여행사우대 계정으로 발권한 스템프항공권은 환불 시 일정 개수의 일반 스템프 차감 후 환불됩니다.</p><p>(국내선-일반스탬프 1개, 국제선-일반스탬프 2개)<br></p><p>※ 출발편 탑승완료 후 리턴편 부분 취소/환불에 대한 기준은 아래와 같습니다.</p><p>국내선 : 해당 구간 탑승일의 평수기/성수기 기간에 의거하여 스탬프 복원</p><p>국제선 : 왕복구간의 출발편 탑승일 기준으로 사용된 스탬프의 1/2 복원</p><p>(단, 2014년 12월19일 이전에 발권된 국제선 보너스항공권은 평수기/성수기 기간에 의거하여 스탬프 복원)</p><p><br></p><p><br></p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권으로 발권 후 탑승을 하지 못했어요. 환불이 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>탑승일이 지난 미사용 스탬프항공권은 스탬프항공권 유효기간 내에 한해 환불 및 스탬프 환급이 가능합니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권은 나중 결제가 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권은 예약과 동시에 결제하셔야 합니다. 결제하지 않은 경우 예약이 자동으로 취소 됩니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권의 성수기/평수기 기준은 어떻게 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권은 각 구간 탑승일자를 기준으로 성/평수기가 적용되며, 국제선 스탬프항공권은 전체 여정의 첫 구간(가는편) 탑승일 기준으로 적용됩니다.<br>자세한 평수기/성수기 조건은 홈페이지의&nbsp;[예약/스케줄] &gt; [운임안내]를 참조해 주시기 바랍니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권으로 소아나 유아도 예약을 할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>FL Y&amp; STAMP 프로그램은 성인 탑승객을 기준으로 운영됩니다.<br>그렇기 때문에 소아 및 유아 탑승객은 스탬프항공권을 이용할 수 없습니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공권 구매 후 스탬프는 언제 적립되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
항공권 구매 후 실제 탑승하신 날의 익일 오전 8시 이후에 스탬프는 자동적립됩니다.<br>구매 후 미탑승하신 경우는 스탬프가 지급되지 않습니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권을 쓸 수 없는 제한기간이 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
스탬프항공권은 평수기뿐 아니라 성수기에도 자유롭게 사용이 가능합니다.<br>단, 좌석상황은 예약시점에 따라 다를 수 있습니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권으로 체류할 수 있는 기간은 최대 언제까지인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권으로 발권하시는 국제선 여정의 체류기간은 출발일로부터 최대 3개월까지 입니다. (국내선 제한 없음)</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">기업우대 회원인 경우 요금할인과 동시에 스탬프 적립도 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="color: rgb(0, 0, 0);">기업우대 회원이신 경우, 운임</span><span style="color: rgb(0, 0, 0);">&nbsp;할인과 함께 스탬프 적립도 가능합니다.</span></p><p><br><span style="color: rgb(0, 0, 0);">단, 기업우대 회원 개</span><span style="color: rgb(0, 0, 0);">인에게 적립이 되며, 기업체 단위로는 적립되지 않습니다.</span><br><span style="color: rgb(0, 0, 0);">또한, 할인율 50% 이상 항공권과 같이 스탬프 적립 불가 조건의 항공권은 적립되지 않습니다.</span></p><p><br></p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">국문 홈페이지가 아닌 해외 홈페이지를 통한 항공권 구매는 스탬프 적립/사용대상이 아닌가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
국문 홈페이지 뿐만 아니라 에어부산 해외 홈페이지를 통해서도 스탬프 적립/사용이 가능합니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">MINI 스탬프는 무엇인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
MINI 스탬프란 이벤트/프로모션용 스탬프 입니다.<br>10개의 MINI 스탬프를 모으시면 1개의 일반 스탬프로 전환이 가능합니다.<br>MINI 스탬프는 신규회원가입을 하시거나 회원님의 생일 등 다양한 이벤트를 통해 모을 수가 있습니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">예약할 때 스탬프 적립을 못했습니다. 누락된 스탬프는 어떻게 적립하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">홈페이지</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">모바일</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> [FLY&amp;STAMP]&gt;[</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">나의 스탬프</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">]&gt;[</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">누락</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> STAMP </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">적립</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">] </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">메뉴에서 회원님의 탑승권 정보를 입력하시면 적립이
가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">스탬프 적립은 </span><b><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">탑승 후</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 90</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">일 이내의
항공권</span></b><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">만 적립이 가능합니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">*</span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">아래 기준의 항공권은 스탬프가 지급되지 않습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">예약센터</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">공항 및 오프라인 여행사</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">온라인 여행사</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">예</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">인터파크투어</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">웹투어</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">익스피디아 등</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">)</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">를
통해 구매한 항공권</span><span lang="EN-US"><o:p></o:p></span></span></p><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국내선</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">특가항공권</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">할인율</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 50% </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이상 항공권</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이벤트항공권</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">스탬프항공권</span><span lang="EN-US"><o:p></o:p></span></span></p><p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><span lang="EN-US" style="font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0);">-</span><span style="font-size: 11pt; font-family: " 맑은="" 고딕";"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국제선</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">특가항공권</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">이벤트항공권</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">스탬프항공권</span></span><br></p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">비회원으로 이용했던 항공권도 스탬프 적립이 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>비회원으로 항공권을 구매하셨더라도 탑승 후에 회원가입을 하시면 적립이 가능합니다.<br>(2014.1.1 이후 탑승에 한함)<br>탑승 후 90일 이내에 회원가입 후 누락스탬프 적립 메뉴에서 적립이 가능합니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">홈페이지에서 한 명이 본인 아이디로 동행인의 항공권까지 구매하면 스탬프 적립은 그 사람에게 합산되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>합산되지 않습니다.<br>회원님 본인의 예약사항만 스탬프가 적립되며, 타인의 스탬프는 적립되지 않습니다.<br>스탬프 적립을 원하신다면 개개인 별도의 회원 가입후, 누락 스탬프 적립에서 적립 가능합니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권의 유효기간은 언제까지인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권의 유효기간은 발권일로부터 6개월이며, 유효기간 내에 전체 여정의 탑승을 완료하셔야 합니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권의 유효기간이 지나버렸는데 환불이 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
스탬프항공권 유효기간(6개월)이 지난 항공권은 공항세 및 유류할증료는 환불되지만, 스탬프는 환급되지 않습니다.
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권을 내가 아닌 다른 사람이 쓸 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>스탬프항공권은 본인만 사용(탑승)가능하며 명의 변경은 불가합니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프항공권을 발급받기에는 스탬프가 조금 부족합니다. 스탬프를 구매하여 보충·적립할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>홈페이지에서 로그인 후 [FLY&amp;STAMP &gt; STAMP 구매/환불]을 통하여 STAMP를 별도 구매하여 보충하실 수&nbsp;있습니다. 단, 각 노선별 스탬프항공권의 필요 스탬프의 25%까지만 사용이 가능합니다.</p>
<p>*개당 4,000원(부가세 별도)/유효기간 60일/최대 40개까지 구매 가능</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">스탬프를 다른 사람에게 양도할 수도 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>본인이 보유한 스탬프는 홈페이지에서 별도 등록한 3명의 회원에게 양도 가능합니다.<br><br></p><p>단, 1년에 총 5개 내에서 양도 가능하며,&nbsp;미니스탬프에서 전환된 일반스탬프와 구매스탬프는 양도 불가합니다.</p><p><br>자세한 사항은 [서비스 안내 &gt; FLY&amp;STAMP&nbsp;&gt; STAMP 양도] 메뉴를 참조하시기 바랍니다.</p>
</div>
</li>
<li data-category="5">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">미사용한 항공권은 스탬프 적립이 안되나요 ?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
스탬프는 해당 항공편 탑승이 완료된 경우에 한해 적립이 가능하므로 사용을 하시지 않은 항공권에 대해서는 스탬프가 적립되지 않습니다.<p><br></p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공기가 결항되었을 때 항공사에서는 어떠한 조치를 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
결항의 사유 및 상황에 따라 조치 내역이 다릅니다.<br>천재지변 기상, 공항사정 등의 불가항력적인 사태로 인하여 결항되었을 경우 문자서비스와 전화로 안내하고 있습니다. <br>고객님의 불편을 최소화 하도록 노력하겠습니다. 감사합니다.
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">자전거를 위탁 수하물로 운송이 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
수하물로 운송을 하기 위해서는 핸들을 고정하고 페달을 제거한 후, 적절히 포장하여야 하며,무료수하물 허용량을 초과하는 경우에는 초과 수하물 요금을 지불하셔야 합니다.<br>수속시 면책 확인서에 동의 해주셔야 위탁 운송 가능합니다.<br>또한 고가의 자전거의 경우 저희 직원의 별도 안내를 받아주시기 바랍니다.
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">수하물도 많고 아이들까지 데리고 가서 어려움이 많습니다. 도움을 좀 받을 수 있을까요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p style="line-height: 1.5;"><span style="font-family: Arial, sans-serif; font-size: 10pt;">에어부산에서는 <b>국내 및 해외 여행에 익숙하지 않은 고객, 혼자 여행하시는 연세가 많으신 고객, 유/소아 2명 이상과 함께하는 고객</b> 등 공항 내 직원 도움이 필요한 승객에게 투게더 서비스를 유상으로 제공하고 있습니다.</span></p><p style="line-height: 1.5;"><br></p><p style="line-height: 1.5;"><a href="https://www.airbusan.com/content/common/service/customer/together" target="_blank" class="tx-link"><span style="background-color: rgb(250, 244, 192); font-family: Arial, sans-serif; font-size: 10pt;"><u>투게더 서비스 안내 바로가기</u></span></a></p>
</div>
</li>
<li data-category="29">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">공항에는 얼마나 일찍 가야 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-family:" 맑은="" 고딕";="" color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">항공편 탑승수속 마감 시간은 아래와 같습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">.</span> </span><o:p></o:p></span></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-family:
" 맑은="" 고딕";color:black"=""><o:p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> </span></o:p></span></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">- </span><span style="font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국제선
항공편 이용시</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt;"><span style="color: rgb(0, 0, 0);"> :</span><span style="color: rgb(0, 0, 0);"> </span></span></span><b><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(255, 0, 0); font-size: 10pt;">40</span></b><b><span style="font-family:" 맑은="" 고딕";color:red"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">분
전</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">김해공항 및 일부 해외공항) </span></span></b><b style="font-size: 10pt;"><span style="font-family:" 맑은="" 고딕";color:red"=""><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">/ </span></span></b><b style="font-size: 10pt;"><span 맑은="" 고딕";color:red"=""><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">60</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">분 전</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">(</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">인천공항 및 그 외 해외공항</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">) </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(255, 0, 0);">까지</span></span></b></p><span style="font-family: Arial, sans-serif; font-size: 10pt;">
</span><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span lang="EN-US" style="font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: 10pt;">- </span><span style="font-family:" 맑은="" 고딕";color:black"=""><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">국내선
항공편 이용시</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> : </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">출발</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);"> 30</span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">분 전까지</span><span lang="EN-US"><o:p></o:p></span></span></p><br><p></p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">인터넷 사전 좌석 배정은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; font-size: 11pt; text-align: justify;"><span style="font-size: 10pt; color: rgb(0, 0, 0);">홈페</span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);"></span><span style="font-size: 10pt; color: rgb(0, 0, 0);">이지</span></span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">모바일</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);"> [</span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">나의 예약조회</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);"> &gt; </span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">여정 선택</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">
&gt; </span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">부가서비스 신청</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">/</span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">변경</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);"> &gt; </span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">사전좌석배정</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">]</span><span style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">을 통하여 진행하실 수 있습니다</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; text-align: justify; color: rgb(0, 0, 0);">.</span><br></p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">
</span><p class="MsoNormal" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:
3.75pt;margin-left:0cm;text-align:justify;text-justify:inter-ideograph;
text-autospace:none;word-break:break-hangul"><span style="font-size:11.0pt;
font-family:&quot;맑은 고딕&quot;;color:black"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">만약 사전 좌석배정을 할 수 있는 좌석이 남아 있지 않은 경우</span><span lang="EN-US" style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">, </span><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">탑승 당일 공항 수속 시에 배정 받으실 수 있습니다</span><span lang="EN-US"><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">.</span><o:p></o:p></span></span></p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">에어부산 탑승권을 가지고 있는데 FLY&amp;FUN 이용은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>FLY&amp;FUN에 소개되어 있는 제휴업체에서 탑승일 기준 한 달 내에 해당 할인 및 혜택을 받으실 수 있으며, 이용 시 소지하신 탑승권을 보여주시면 됩니다. </p><p><br></p><p>[FLY &amp; FUN 혜택 및 이용 상세]</p><p><br></p><p><span style="text-align: left; color: rgb(14, 14, 14); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: AppleSDGothicNeo, &quot;Droid Sans&quot;, Roboto, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><font face="Arial"><span style="color: rgb(18, 52, 86);">*탑승일로부터 31일 이내에 이용하실 수 있습니다</span></font></span></p><p><br></p><p><span style="text-align: left; color: rgb(14, 14, 14); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: AppleSDGothicNeo, &quot;Droid Sans&quot;, Roboto, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><font face="Arial"><span style="color: rgb(18, 52, 86);">*해당 지역의 여러 제휴업체를 중복으로 이용하실 수 있습니다.</span></font></span></p><p><span style="text-align: left; color: rgb(14, 14, 14); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: AppleSDGothicNeo, &quot;Droid Sans&quot;, Roboto, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><font face="Arial"><br></font></span></p><p><span style="text-align: left; color: rgb(14, 14, 14); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: AppleSDGothicNeo, &quot;Droid Sans&quot;, Roboto, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><font face="Arial"><span style="color: rgb(18, 52, 86);">*탑승권과 신분증을 준비해서 가셔야 이용하실 수 있습니다.</span></font></span></p><p><span style="text-align: left; color: rgb(14, 14, 14); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: AppleSDGothicNeo, &quot;Droid Sans&quot;, Roboto, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><font face="Arial"><br></font></span></p><p><span style="text-align: left; color: rgb(14, 14, 14); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: AppleSDGothicNeo, &quot;Droid Sans&quot;, Roboto, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><font face="Arial"><span style="color: rgb(18, 52, 86);">*업체에 따라 사전 예약이 필요할 수 있으며 동반인 가능 여부는 업체별로 다를 수 있으니 사전에 확인해주세요.</span></font></span></p><p><br></p>
<p><br></p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">인터넷 탑승권 이용은 어떻게 하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>출력하신 인터넷 탑승권(홈 탑승권)은 공항에서 별도의 탑승수속 절차 없이 항공기를 바로 탑승할 수 있는 서비스입니다. <br></p><p><br></p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">휴대용 전자기기(Portable Electronic Device, PED)란 무엇인가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>통신 및 데이터의 처리와 이용 등의 기능이 가능한 가전 전자기기로 그 범위는 태블릿PC, 스마트폰 및 전자책과 같이 손에 쥐고 사용 가능한 경량의 전자기기에서 부터 MP3 Player, 전자게임기 같은 소형기기를 말합니다.</p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">휴대용 전자기기(PED) 기존의 정책과는 어떻게 달라지나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>기존에는 고도 1만피트 (3천미터)이하에서 휴대용 전자기기에서 발산되는 전파가 항공기 전자장비에 영향을 주는 것을 우려하여 사용을 제한, 이착륙시 전원OFF를 안내해 드렸지만 새로운 시행 정책 사항으로는 비행모드(Flight Mode)상태의 모든 휴대용 전자 기기는 이착륙을 포함한 비행 전 구간에서 사용이 가능합니다. (무선 통신기능 OFF / 비행모드 ON)</p>
<p>*단, 항공기종에 따라 상이한 부분이 있습니다.</p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">휴대용 전자기기(PED)를 운항 중 모든 구간에서 마음대로 사용 할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>예, 그렇습니다. </p>
<p>비행모드(Flight Mode)로 설정을 하셨다면 스마트폰, 테블릿 PC 등의 휴대용 전자기기를 비행 전 구간 사용하실 수 있습니다. 단, 비행모드 기능이 없는 휴대 전화(2G)와 운항 중 음성통화는 항공기 출입문이 열린 경우와 착륙 후 승무원의 안내가 있을 때에만 사용하실 수 있습니다. 또한 기상관계로 인한 저 시정인 상태에서 착륙을 하게 될 경우 기장의 요청에 의해 전자기기의 사용에 제한을 받을 수 있으니 승무원의 안내에 따라 주시기 바랍니다.</p>
<p>*항공기 기종에 따라 이용이 제한될 수 있습니다.</p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공기 내에서 음성통화도 가능하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
운항 중 음성통화의 규제는 여전히 항공기 내에서 통제를 하고 있습니다. 하지만 <br>1) 승객의 탑승과 하기를 위해 항공기 출입문이 열려져 있는 경우. <br>2) 착륙 후 승무원의 사용 안내방송 시점.<br>이 두 가지 경우에는 데이터 송수신(카톡, 문자, 인터넷 사용 등) 및 휴대전화(2G포함)의 음성통화가 가능하오니 캐빈승무원의 안내에 따라주시기 바랍니다.
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">휴대용 전자기기(PED) 사용시 주의점은 뭐가 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>지상활주 및 이착륙 시에는 좌석 앞 주머니에 넣을 수 없는 크기나 무게의 전자기기(대형 노트북)는 가방에 넣어 좌석 하단 또는 머리 위 선반에 보관해 주셔야 합니다. <br>이러한 전자기기들은 비상탈출을 방해하거나 난기류 또는 사고 발생시 상해를 끼칠 가능성이 있습니다. 또한 운항 중 전자기기의 파손으로 인한 연기 또는 화재가 발생 할 수 있으니 보관 및 사용에 주의해주시기 바랍니다.</p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">휴대용 전자기기(PED) 규정은 모든 항공기 기종에 다 적용이 되는 건가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>현재 일부 항공기 기종은 기내 휴대용 전자기기 사용에 제한이 있으므로 기내 탑승 시&nbsp;캐빈승무원의 안내에 따라 주시기 바랍니다.</p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">좌석 앞 주머니에 휴대용 전자기기(PED)를 넣어 둘 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>소형 PED의 경우 이/착륙 중 좌석 앞 주머니 또는 승객 의류의 속 주머니에 보관 할 수 있도록 안내해 드리고 있으며, 좌석 앞 주머니에 넣을 수 없는 비교적 무게나 부피가 큰 휴대용 전자기기(PED)는 선반 위나 가방에 넣어 좌석 하단 등 인가된 장소에 보관하도록 안내해 드리고 있습니다.</p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">왜 노트북은 머리 위 선반에 넣어놔야 하고 태블릿은 그렇게 하지 않아도 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>비정상 상황이 발생할 경우 노트북과 같이 크고 무거운 전자기기의 부속품들로 인해 비상탈출 시 장애요인이 될 가능성이 큽니다. 이와 같은 이유로 이착륙 시 식탁용 테이블은 제자리에로 넣어두어야 하고 좌석 등받이도 바로 세워두어야 합니다.</p>
</div>
</li>
<li data-category="4">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">승무원의 전자기기 사용 중지요청에도 지속적으로 사용시 어떻게 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>운항 중 전자기기 사용으로 인해 안전운항에 영향이 미친다고 판단될 경우 기장의 요청에 따라 전자기기 사용에 제한을 받게 됩니다. 승무원의 지속적인 안내에 불응 시에는 항공보안법 및 동법 시행규칙에 의거 500만원 이하의 벌금에 처해질 수 있으니 승무원의 지시에 따라 협조해 주시기 바랍니다.</p>
</div>
</li>
<li data-category="3">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">모바일을 통해 기업우대 및 여행사우대 예약/발권이 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
가능합니다. <br>홈페이지 기업우대/여행사우대 예약발권과 동일합니다.<br>가입하신 아이디로 로그인 하시고 모바일 메인에서 [기업우대예약], [여행사우대예약]을 통하여 이용하시기 바랍니다.
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">인터넷으로 결제 시 무통장으로 입금할 수 있는 방법은 없나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
현재 무통장 입금 방법은 채택하고 있지 않습니다<br>대신, 신용카드 및 실시간 계좌이체 방법을 통하여 결제하실 수 있습니다.
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">다른 사람카드를 통해 예약/결제도 가능한가요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
카드 번호 및 카드 사용자만이 알 수 있는 정보를 확인하여 인증절차를 거친 후, 구매가 가능합니다.
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">기상 악화로 인해 항공편 결항이 발생한 경우 자동 환불이 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="color: rgb(0, 0, 0);">결항된 항공권은 자동으로 환볼되지 않습니다.</span></p><p><br></p><p><span style="color: rgb(0, 0, 0);">환불을 원하시는 경우,</span></p><p><br></p><p><span style="color: rgb(0, 0, 0);">-항공편 출발 30분 전 : 홈페이지/모바일의 [항공권 예약조회/변경/환불] 또는 예약센터 (1666-3060)을 통해 가능</span></p><p><span style="color: rgb(0, 0, 0);">-항공편 출발 30분 전 이후 : 예약센터(1666-3060)을 통해 문의</span></p><p><br></p><p><span style="color: rgb(0, 0, 0);">· 기타 자세한 내용은 예약센터(1666-3060)로 문의 바라오며, 결항편 환불 시 나중에 환불하셔도 수수료가 부과되지 않으므로 예약센터 연결이 어려울 시 시간을 두고 재문의 부탁 드립니다.</span></p>
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공권 구입에 대한 세금계산서를 발급받을 수 있습니까?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
항공권의 경우 부가가치세법상 영수증으로 갈음되며 세금계산서는 발급받을 수 없습니다.<br>세법상 국내선의 경우 공급받는 자가 사업자인 경우 세금계산서 교부 요청을 하더라도 세금계산서를 교부할 수 없습니다.(사업자가 공급받는 경우 사업자를 최종 소비자로 간주) <br><br>여객운송의 경우 대부분 사업자가 아닌 소비자에게 용역을 제공하는 것이기 때문에 관련 부가가치세를 공제받을 수 있도록 규정하고 있지 않습니다.<br>또한 신용카드매출전표 이면확인에 따른 부가가치세 매입세액 공제도 세금계산서 교부의무가 있을 경우에만 가능하므로 국내선 항공운임에 포함되어 있는 부가가치세는 공제받을 수 없습니다. <br><br>참고로 에어부산에서는 동 부가가치세를 국가에 납부하여야 합니다.<br>법인의 경우 항공기의 항행용역을 제공받은 경우에는 지출증빙서류 수취특례규정에 의거 법정지출증빙(세금계산서,신용카드매출전표,계산서)을 교부 받지 않더라도 법정지출증빙 미수취로 인한 <br>가산세가 적용되지 않습니다.<br><br>* 관련 법조문 : 부가가치세법 32조, 동법시행령 제79조의 2 제 ①항 5호 및 ③항 외
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공권 구매 시 실시간 계좌이체는 어떻게 이용하나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>홈페이지에서 항공권 구매 시 고객님의 은행계좌에서 실시간으로 항공권 구매 금액을 계좌이체하는 서비스입니다. <br>기존 은행,증권 등의 인터넷뱅킹 서비스를 이용하신 분은 동 서비스를 이용하실 수 있으며, 그렇지 않으신 고객의 경우에는 공인 인증서를 발급을 받으셔야만 계좌이체 서비스를 이용하실 수 있습니다.<br><br>* 계좌이체 서비스 이용 가능 시간 - 매일 01:30 ~ 23:50</p>
</div>
</li>
<li data-category="2">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">항공권 결제 후 신용카드를 변경할 수 있나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p>이미 구입한 항공권의 지불 수단을 변경하는 것은 불가합니다. <br>탑승 전 변경을 하고자하시는 경우, 구매하신 항공권을 환불한 후 새로 구매하셔야 합니다. <br>운임 종류에 따라 환불 수수료를 지불하셔야 하는 경우도 있습니다.</p>
<p>탑승 후에는 어떠한 경우에도 변경 불가합니다.</p>
</div>
</li>
<li data-category="1">
<h3 class="question">
<span class="icon iconQuestion" title="질문"></span>
<a href="#none">아시아나와 마일리지 제휴가 되나요?</a>
</h3>
<div class="answer" style="display: none;">
<span class="icon iconAnswer" title="답변"></span>
<p><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">현재 에어부산은 마일리지제도가 별도로 제공되지 않으나 좀 더 합리적인 가격으로 고객님께 제공해 드리고 있으며, [FLY&amp;STAMP] 회원 혜택 프로그램을 운영중입니다.</span><br><span style="font-family: Arial, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);">단, 아시아나 항공으로 발권 시 아시아나 마일리지를 적립해 드리고 있습니다.</span></p>
</div>
</li>
</ul>
</div>
</div>
</div>
</div>
<div id="footer">
<div class="footer_2019">
<div>

<div class="fotTel">
<div class="fotBox">
<ul class="telInfo">
<li>
<ul class="reser_tel">
<li>예약센터 <p>1666-3060</p> <p class="smallTxt"> &nbsp;09:00~19:00(연중무휴)</p></li>
</ul>
</li>
<li>단체문의<span class="smallTxt">(10명 이상)</span> <p>1666-6265</p> <p class="smallTxt"> &nbsp;09:00~17:00(주말, 공휴일 제외)</p></li>
<li>마케팅/광고 문의 <p>flynfun@airbusan.com</p> <p class="smallTxt"> &nbsp;제휴, 광고 등 다양한 제안을 기다립니다. </p></li>
<li>
<p class="smallTxt"><strong class="mgb05 disblock">시스템 정기점검 안내</strong>아래 점검 시간 외에 이용해주시기 바랍니다.<br><strong>수~월요일 </strong> 23:50~24:10<br><strong>화요일 </strong> 23:00~24:00<br><strong>(한국시간 기준)</strong></p>
</li>
</ul>
<div class="mobile">
<div class="mobile_app">

</div>
<div class="mobile_app">

<a href="https://www.instagram.com/airbusan/" target="_blank" rel="noopener noreferrer">
<img src="//story.airbusan.com/content/assets/images/common/footer_sns_inst.png" alt="에어부산 인스타그램">
</a>
<a href="https://www.youtube.com/c/airbusan_official" target="_blank" rel="noopener noreferrer">
<img src="//story.airbusan.com/content/assets/images/common/footer_sns_youtube.png" alt="에어부산 유튜브">
</a>

</div>
</div>
</div>
</div>
</div>

<style>
        	#footer .footer_2019 .fotTop .fotBox>a{color:#000 !important; }
        </style>
<div class="fotTop">
<div class="fotBox">
<a href="/content/common/introduction/">회사소개</a>
<a href="/content/common/introduction/socialContribution">ESG 경영</a>
<a href="/content/common/introduction/newsList">보도자료</a>
<a href="/content/common/Investor/businessResultList">투자정보</a>
<a href="https://airbusan.recruiter.co.kr" target="_new" title="새창">채용정보</a>
<a href="/content/common/policy/transitClause" target="_new">운송약관</a>
<a href="/content/common/policy/agreement" target="_new">이용약관</a>
<a href="/content/common/policy/privacy" target="_new"><span style="font-weight:900 !important; padding-bottom:2px;">개인정보처리방침</span></a>
<a href="/content/common/policy/email" target="_new">이메일무단수집거부</a>
<a href="#" onclick="popupHelpRemote(); return false;" title="새창">인터넷 도우미</a>
<br>
<a href="//story.airbusan.com/content/assets/download/pdf/flightTrafficServiceKo_01.pdf" target="_blank" rel="noopener noreferrer" title="새창" class="bgnull firstTag">항공교통이용자서비스계획</a>
<a href="//story.airbusan.com/content/assets/download/pdf/damageHelp_03.pdf" target="_blank" rel="noopener noreferrer" title="새창">항공교통이용자피해구제신청서</a>
<a href="//story.airbusan.com/content/assets/download/pdf/2023년_항공안전투자공시_표준서식.pdf" target="_blank" rel="noopener noreferrer" title="새창">항공안전투자공시</a>
</div>

</div>
<div class="fotInfo">
<div class="fotBox">
<address class="address">
<b>에어부산㈜</b> 대표이사 안병석 부산광역시 강서구 유통단지1로 57번가길 6(대저2동) 우: 46721<br>
<a href="/content/common/customercenter/question" class="btnMail">이메일 문의</a>
사업자등록번호 : 605-81-84518
<script language="JavaScript">
						function onopen()
						{
						var url =
						"http://www.ftc.go.kr/bizCommPop.do?wrkr_no="+frm1.wrkr_no.value;
						window.open(url, "bizCommPop", "width=750, height=700;");
						}
					</script>
<form name="frm1" style="display:inline">
<input type="hidden" name="wrkr_no" value="6058184518">
<button type="button" onclick="onopen();" title="새창" style="padding:0; border:none; background:none; cursor:pointer"><img src="//story.airbusan.com/content/assets/images/common/btn_footer_address03.png" alt="사업자정보확인"></button>
</form>
통신판매업 신고번호 : 제 2021-부산강서구-0203호
</address>
<div class="copyright">Copyright 2009 BY AIR BUSAN CO., LTD. All Rights reserved</div>
</div>
</div>
<div class="fotLogo">
<ul class="logoBox">
<li><img src="//story.airbusan.com/content/assets/images/common/f_logo06_1.png" alt="2019년 국가고객만족도(NCSI) 저비용항공 서비스업 부문 1위"></li>
<li><img src="//story.airbusan.com/content/assets/images/common/f_logo0103.png" alt="KMAC 선정 7년 연속(2013~2019) 한국산업의 고객만족도 저비용항공 부문 1위"></li>
<li><img src="//story.airbusan.com/content/assets/images/common/f_logo0202.png" alt="2019년 한국표준협회 선정 서비스 품질 1위(4년연속)"></li>
<li><img src="//story.airbusan.com/content/assets/images/common/f_logo0301.png" alt="KMAC 선정 2019 한국에서 가장 존경받는 기업 LCC 부문 1위 (3년 연속)"></li>
</ul>

<div id="layerPopupMobile" class="lyPop typeB" style="width:715px;">
<div class="lyPophead">
<h4>에어부산 모바일 접속방법</h4>
<a href="#none">닫기</a>
</div>
<div class="lyPopcont">
<div class="appdownloadBox">
<div class="appWrap">
<p>안드로이드 마켓/ 아이폰 앱 스토어에서 다운로드 또는 검색 창에서 "에어부산"검색 후 다운로드 받으세요!</p>
<div class="storeDownload">
<strong>STORE 다운로드</strong>
<ul>
<li>
<div class="imgBox">
<img src="//story.airbusan.com/content/assets/images/service/img_store_download01.png" alt="GET IN ON Google play">
</div>
<span class="btn ssBtn"><a href="https://play.google.com/store/apps/details?id=com.airbusan.gcm" target="_blank" rel="noopener noreferrer" title="새창">에어부산 어플리케이션 구글플레이 다운로드 바로가기</a></span>
</li>
<li>
<div class="imgBox">
<img src="//story.airbusan.com/content/assets/images/service/img_store_download02.png" alt="AVAILABLE ON THE App Stroe">
</div>
<span class="btn ssBtn"><a href="https://itunes.apple.com/kr/app/eeobusan/id603844013?mt=8" target="_blank" rel="noopener noreferrer" title="새창">에어부산 어플리케이션 앱스토어 다운로드 바로가기</a></span>
</li>
</ul>
</div>
<div class="qrcode">
<strong>QR코드</strong>
<ul>
<li>
<div class="imgBox">
<img src="//story.airbusan.com/content/assets/images/service/img_qrcode01_ko.png" alt="안드로이드(APP)">
</div>
</li>
<li>
<div class="imgBox">
<img src="//story.airbusan.com/content/assets/images/service/img_qrcode02_ko.png" alt="아이폰(APP)">
</div>
</li>
</ul>
</div>
<div class="qrcodeScan">
<p>스마트폰 및 태블릿 PC의 브라우저에서 <a href="http://m.airbusan.com" class="anchorLine" target="_blank" title="새창">m.airbusan.com</a> 입력<br>스토어 검색 창에서 "에어부산" 검색 후 다운로드!</p>
<strong>왼쪽 QR 코드 스캔 후 바로 접속!</strong>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
</div>
<script>
	// 고객사바로가기 - 외국문
	 var $fotSelectBox = $('.fotSelectBox');
	 $('.fotSelectBox .selectList a').on('click', function() {
		$fotSelectBox.stop().animate({'height':'23px',});
	});
	$('.fotSelectBox .selectTit a').on('click', function() {
		if ($fotSelectBox.hasClass('ko')) {
			$fotSelectBox.stop().animate({'height':'310px',});
		} else {
			$fotSelectBox.stop().animate({'height':'351px',});
		}
		return false;
	});
	$fotSelectBox.on('mouseleave', function() {
		$fotSelectBox.stop().animate({'height':'23px',});
		return false;
	});

	// 고객사바로가기 - 국문
	//웹접근성 개선 : 그룹사 바로가기 수정 S
	$('.fotIconBox .fotSelectBoxKo .selectTitKo a').on('click', function() {
		var $selectListKo = $('.selListKo .selectListKo');
		$(this).parent().parent('.fotSelectBoxKo').addClass('on');
		$selectListKo.addClass('on');
		$selectListKo.stop(true, true).animate({'height':'299px'});
		return false;
	});
	$('.fotIconBox .fotSelectBoxKo .selectTitKoOut a').on('click', function() {
		var $selectListKo = $('.selListKo .selectListKo');
		$selectListKo.stop(true, true).animate({'height':'0'});
		$selectListKo.removeClass('on');
		$(this).parent().parent('.fotSelectBoxKo').removeClass('on');
	});
	$('.fotIconBox .fotSelectBoxKo').on('mouseleave', function() {
		var $selectListKo = $('.selListKo .selectListKo');
		$selectListKo.stop(true, true).animate({'height':'0'});
		$selectListKo.removeClass('on');
		$(this).removeClass('on');
	});
	//웹접근성 개선 : 그룹사 바로가기 수정 E
	$('.fotIconBox .selectListKo li').on('mouseenter', function(){
		$(this).addClass('on');
	});
	$('.fotIconBox .selectListKo li').on('mouseleave', function(){
		$(this).removeClass('on');
	});

	$('.fotIconBox .iconList li a').on('mouseenter focusin', function(){
		var $targetImg = $(this).children('img');
		var dataCode = $targetImg.attr("data-code");
		var newSrc = "//story.airbusan.com/content/assets/images/main/icon" + dataCode + "Over.png";
		$targetImg.attr('src',newSrc);
	});

	$('.fotIconBox .iconList li a').on('mouseleave focusout', function(){
		var $targetImg = $(this).children('img');
		var dataCode = $targetImg.attr("data-code");
		var newSrc = "//story.airbusan.com/content/assets/images/main/icon" + dataCode + ".png";
		$targetImg.attr('src',newSrc);
	});

	$('.fotIconBox .iconList li a').on('mouseenter focusin', function(){
		var $targetImg = $(this).children('img');
		var dataCode = $targetImg.attr("data-code");
		var newSrc = "//story.airbusan.com/content/assets/images/main/icon" + dataCode + "Over.png";
		$targetImg.attr('src',newSrc);
	});

	$('.fotIconBox .iconList li a').on('mouseleave focusout', function(){
		var $targetImg = $(this).children('img');
		var dataCode = $targetImg.attr("data-code");
		var newSrc = "//story.airbusan.com/content/assets/images/main/icon" + dataCode + ".png";
		$targetImg.attr('src',newSrc);
	});
</script>
</div>

<div class="layerPopupBase">
<div class="layerPopupBackground"></div>
<div class="layerPopupContent"></div>
</div>

<script async="" src="https://www.googletagmanager.com/gtag/js?id=G-SDL4G5BPHG"></script>
<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());
			gtag('config', 'G-SDL4G5BPHG');
		</script>





<div id="ttdUniversalPixelTagac4fc88f98f444c1a5083498c5810141" style="display:none">
<script type="text/javascript">
					(function(global) {
						if (typeof TTDUniversalPixelApi === 'function') {
							var universalPixelApi = new TTDUniversalPixelApi();
							universalPixelApi.init("8ezoi4w", ["mxsb0gz"], "https://insight.adsrvr.org/track/up", "ttdUniversalPixelTagac4fc88f98f444c1a5083498c5810141");
						}
					})(this);
				</script>
</div>

<script type="text/javascript" async="true">
				var dspu = "TV8YWlyYnVzYW4";      // === (필수)광고주key (변경하지마세요) ===
				var dspu,dspt,dspo,dspom;
				function loadanalJS_dsp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");
				a.src=b;a.async="true";d.appendChild(a)}function loadanal_dsp(b){loadanalJS_dsp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");document.write("<span id=dsp_spn style=display:none;></span>");}
				/* loadanal_dsp("tk.realclick.co.kr/tk_comm.js?dspu="+dspu+"&dspt="+dspt+"&dspo="+dspo+"&dspom="+dspom); */
				</script>


<script type="text/javascript" async="true">
				function dsp_loadrtgJS(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("script");a.type="text/javascript";null!=c&&(a.charset="euc-kr");a.src=b;a.async="true";d.appendChild(a)}function dsp_load_rtg(b){dsp_loadrtgJS(("https:"==document.location.protocol?" https://":" http://")+b,"euc-kr")}dsp_load_rtg("realdmp.realclick.co.kr/rtarget/rtget.js?dsp_adid=airbusan");
				</script>


<script type="text/javascript">
					var __wsos_nvad_id = '467817';
					var __wsos_nvad_sidx = '578295';
					var __wsos_nvad_key = '75eabb0fda';
					/* var __wsos_nvad_url = "//wcs.naver.net/wcslog.js"; */
					document.writeln ( "<scr" + "ipt type='text/javascript' src='" /* + __wsos_nvad_url */ + "'></scr" + "ipt>" );
				</script><script type="text/javascript" src=""></script>


<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
				var wp_conf = 'ti=20254&v=1&device=web&r=1';
				</script>


<script type="text/javascript">
				var roosevelt_params = {
					retargeting_id:'wxwN8z6pQXWoqX1er-fRAA00',
					tag_label:'4GCfgxokQmiI1LvkPU9EkA'
				};
				</script>

<script type="text/javascript">
					var _NGUL = "wcs.naver.net/wcslog.js";
					var _NPR = location.protocol=="https:"?"https://"+_NGUL:"http://"+_NGUL;
					document.writeln("<scr"+"ipt type='text/ja"+"vascript' src='"+ _NPR +"'></scr"+"ipt>");
				</script><iframe height="0" width="0" style="display: none; visibility: hidden;" src="https://9182766.fls.doubleclick.net/activityi;src=9182766;type=invmedia;cat=pc_rt002;ord=3448301210568;npa=0;auiddc=1730718993.1706516677;ps=1;pcor=1216391686;pscdl=noapi;gtm=45He4270za200;gcd=13l3l3l3l1;dma=0;uaa=x86;uab=64;uafvl=Not%2520A(Brand%3B99.0.0.0%7CGoogle%2520Chrome%3B121.0.6167.160%7CChromium%3B121.0.6167.160;uamb=0;uam=;uap=Windows;uapv=10.0.0;uaw=0;epver=2;~oref=https%3A%2F%2Fwww.airbusan.com%2Fcontent%2Fcommon%2Fcustomercenter%2Ffaq?"></iframe><iframe allow="join-ad-interest-group" data-tagging-id="DC-9182766/invmedia/pc_rt002+standard" data-load-time="1707799551883" height="0" width="0" style="display: none; visibility: hidden;" src="https://td.doubleclick.net/td/fls/rul/activityi;fledge=1;src=9182766;type=invmedia;cat=pc_rt002;ord=3448301210568;npa=0;auiddc=1730718993.1706516677;ps=1;pcor=1216391686;pscdl=noapi;gtm=45He4270za200;gcd=13l3l3l3l1;dma=0;uaa=x86;uab=64;uafvl=Not%2520A(Brand%3B99.0.0.0%7CGoogle%2520Chrome%3B121.0.6167.160%7CChromium%3B121.0.6167.160;uamb=0;uam=;uap=Windows;uapv=10.0.0;uaw=0;epver=2;~oref=https%3A%2F%2Fwww.airbusan.com%2Fcontent%2Fcommon%2Fcustomercenter%2Ffaq?"></iframe><script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>

<script type="text/javascript">
					if(!wcs_add) var wcs_add={};
					wcs_add["wa"] = "s_11681f2fc3c3";
					if(!_nasa) var _nasa={};
					wcs.inflow("airbusan.com");
					wcs_do(_nasa);
				</script>

<script type="text/javascript">
				/* <![CDATA[ */
				var google_conversion_id = 1006491615;
				var google_conversion_label = "951wCJGa-QMQ36_33wM";
				var google_custom_params = window.google_tag_params;
				var google_remarketing_only = true;
				/* ]]> */
				</script>

<noscript>
				<div style="display:inline;">
				<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1006491615/?value=1.00&amp;currency_code=KRW&amp;label=951wCJGa-QMQ36_33wM&amp;guid=ON&amp;script=0"/>
				</div>
				</noscript>

<script type="text/javascript">

					(function (w, d, i) {
						w[i]={
							sc : (encodeURIComponent("")),
							form : (encodeURIComponent(d.referrer)),
							url : (encodeURIComponent(w.location.href))
						};

						if(w[i]) {
							var _ar = _ar || [];
							/* var _s = "log.dreamsearch.or.kr/servlet/rf"; */
							for(x in w[i]) _ar.push(x + "=" + w[i][x]);
							(new Image).src = d.location.protocol +"//"+ _s +"?"+ _ar.join("&");
						}
					})(window, document, /* "wp_rf" */);

				</script>


<script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-822065883"></script>
<script>
				  window.dataLayer = window.dataLayer || [];
				  function gtag(){dataLayer.push(arguments);}
				  gtag('js', new Date());
				
				  gtag('config', 'AW-822065883');
				</script>



<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TQNWXLQ"
				height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

<script>(function(){var js = "window['__CF$cv$params']={r:'854a6c9b488b3079',t:'MTcwNzc5OTU1MS41NjUwMDA='};_cpo=document.createElement('script');_cpo.nonce='',_cpo.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js',document.getElementsByTagName('head')[0].appendChild(_cpo);";var _0xh = document.createElement('iframe');_0xh.height = 1;_0xh.width = 1;_0xh.style.position = 'absolute';_0xh.style.top = 0;_0xh.style.left = 0;_0xh.style.border = 'none';_0xh.style.visibility = 'hidden';document.body.appendChild(_0xh);function handler() {var _0xi = _0xh.contentDocument || _0xh.contentWindow.document;if (_0xi) {var _0xj = _0xi.createElement('script');_0xj.innerHTML = js;_0xi.getElementsByTagName('head')[0].appendChild(_0xj);}}if (document.readyState !== 'loading') {handler();} else if (window.addEventListener) {document.addEventListener('DOMContentLoaded', handler);} else {var prev = document.onreadystatechange || function () {};document.onreadystatechange = function (e) {prev(e);if (document.readyState !== 'loading') {document.onreadystatechange = prev;handler();}};}})();</script><iframe height="1" width="1" style="position: absolute; top: 0px; left: 0px; border: none; visibility: hidden;"></iframe><script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon="{&quot;rayId&quot;:&quot;854a6c9b488b3079&quot;,&quot;version&quot;:&quot;2024.2.0&quot;,&quot;token&quot;:&quot;659c4de68fbb435a815814dd93e75e57&quot;}" crossorigin="anonymous"></script>


<div id="gnbBackround"></div><iframe allow="join-ad-interest-group" data-tagging-id="AW-822065883" data-load-time="1707799552000" height="0" width="0" style="display: none; visibility: hidden;" src="https://td.doubleclick.net/td/rul/822065883?random=1707799551991&amp;cv=11&amp;fst=1707799551991&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be4270za200&amp;gcd=13l3l3l3l1&amp;dma=0&amp;u_w=1536&amp;u_h=864&amp;url=https%3A%2F%2Fwww.airbusan.com%2Fcontent%2Fcommon%2Fcustomercenter%2Ffaq&amp;ref=https%3A%2F%2Fwww.airbusan.com%2Fcontent%2Fcommon%2Fcustomercenter%2Ffaq%3F__cf_chl_tk%3DDg9wgaa65GkBbgpFsqexrGh8WCUCb8_y_XA2nFXOaP8-1707799549-0-5072&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%9E%90%EC%A3%BC%EB%AC%BB%EB%8A%94%20%EC%A7%88%EB%AC%B8%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0&amp;npa=0&amp;pscdl=noapi&amp;auid=1730718993.1706516677&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%2520A(Brand%3B99.0.0.0%7CGoogle%2520Chrome%3B121.0.6167.160%7CChromium%3B121.0.6167.160&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;fledge=1&amp;data=event%3Dgtag.config"></iframe></body></html>