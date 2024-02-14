<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<style>
body, ul, li {
    margin:0;
    padding:0;
    list-style:none;
}

.slider-2 {
    height:700px;
    position:relative;
}

.slider-2 .slides > div {
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background-position:center;
    /* 이미지를 최대한 안짤리게 한다. */
    background-size:cover;
    /* 배경 반복 금지 */
    background-repeat:no-repeat;
    opacity:0;
    transition: opacity 0.5s;
}

.slider-2 .slides > div.active {
    opacity:1;
}

@media ( max-width:700px ) {
    .slider-2 {
        height:300px;
    }
}

.slider-2 .page-nav {
    position:absolute;
    width:100%;
    text-align:center;
    bottom:0;
    left:0;
}

.slider-2 .page-nav > div {
    display:inline-block;
    width:15px;
    height:15px;
    background-color:rgba(255,255,255,0.5);
    border-radius:2px;
    cursor:pointer;
}

.slider-2 .page-nav > div.active {
    background-color:rgba(255,255,255,1);
}

.slider-2>.side-btns>div{
    position:absolute;
    top:0;
    left:0;
    width:30%;
    height:100%;
    cursor:pointer;
    z-index:10;

}

.slider-2>.side-btns>div>span:active{
    transform:translatey(-40%);
}
.slider-2>.side-btns>div:last-child{
    left:auto;
    right:0;
}

.slider-2>.side-btns>div>span{
    position:absolute;
    top:50%;
    transform:translatey(-50%);
    left:inherit;
    right:inherit;
    width:70px;
    height:70px;
    background-color:rgba(255,255,255,0.4);
    border-radius:100%;
    margin:0 10px;
}
.slider-2>.side-btns>div>span > i{
    position:absolute;
    top:50%;
    left:50%;
    font-size:3rem;
    color:rgba(0,0,0,0.4);
    transform:translateX(-70%) translateY(-50%);
}

.slider-2>.side-btns>div:last-child>span > i {
    transform:translateX(-20%) translateY(-50%);
}

.intro{
	display: flex;
	justify-content: center;
	align-items: center;
	max-width: 1200px;
	margin: auto;
}

.intro .card{
	flex: 1;
	text-align: center;
	margin: 150px 40px;
	 border: none;
}

.intro .card img{
	width: 70px;
	height: 70px;
	margin: auto;
	color: #444;
	margin-bottom: 30px;
}

.intro .card h2{
	letter-spacing: 0.2em;
}

.intro .card p{
	font-size: 13px;
}

</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">



<div class="slider-2">
    
     <div class="side-btns">
        <div><span><i class="fas fa-caret-left"></i></i></span></div>
        <div><span><i class="fas fa-caret-right"></i></span></div>
    </div>
    
    <div class="slides">
        <div class="active" style="background-image:url(./images/main10.jpg);"></div>
        <div style="background-image:url(./images/main1.jpg)"></div>
        <div style="background-image:url(./images/main11.jpg)"></div>
        <div style="background-image:url(./images/main12.jpg)"></div>
    </div>
    
    <div class="page-nav">
        <div class="active"></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>

<section class="intro">
	<div class="card">
		<img src="./images/airplane.svg">
		<h2>LANDERS</h2>
		<p>무엇과도 바꿀 수 없는 핵심 가치인 '안전'과 '고객중심서비스'를 등대삼아, 앞으로도 고객 여러분들이 선택한 Landers Airline이 항공업계를 주도하는 글로벌 선도 항공사로 자리매김할 수 있도록 최선의 노력을 다 하겠습니다.</p>
	</div>
	<div class="card">
		<img src="./images/fan.svg">
		<h2>IEEOLOGY</h2>
		<p>Landers Airline은 국내에 색동날개를 펼치는 항공사로 성장하고있습니다. 기존 항공사의 획일적인 항공 서비스에서 벗어나 새롭고 고객이 직접 선택할 수 있는 폭넓은 서비스를 제공하고자 끊임없이 도전하겠습니다.
		</p>
	</div>
	<div class="card">
		<img src="./images/clipboard-data.svg">
		<h2>BUSINESS</h2>
		<p>글로벌 협력 강화, 신규 노선 개발 등 당사 고객들에게 보다 다양한 네트워크를 제공하기 위한 노력을 지속하고 있습니다. 뿐만 아니라 고객 만족도 제고를 위해 차세대 항공기 도입, 마케팅 제휴 확대 등을 적극 추진하고 있습니다.</p>
	</div>
</section>




<script>
$('.slider-2 .page-nav > div').click(function() {
    
    var $this = $(this);
    var $pagenav = $this.parent()
    var $current = $pagenav.find('.active');
    
    $current.removeClass('active');
    $this.addClass('active');

    var index = $this.index();
    var $슬라이더 = $this.closest('.slider-2');
    
    $슬라이더.find('.slides > div.active').removeClass('active');
    $슬라이더.find('.slides > div').eq(index).addClass('active');
    
    
});

$('.slider-2 > .side-btns > div:first-child').click(function() {
    var $this = $(this);
    var $slider = $this.closest('.slider-2');
    
    var $current = $slider.find('.page-nav > div.active');
    var $post = $current.prev();
    
    if ( $post.length == 0 ) {
        $post = $slider.find('.page-nav > div:last-child');
    }
    
    $post.click();
});

$('.slider-2 > .side-btns > div:last-child').click(function() {
    var $this = $(this);
    var $slider = $this.closest('.slider-2');
    
    var $current = $slider.find('.page-nav > div.active');
    var $post = $current.next();
    
    if ( $post.length == 0 ) {
        $post = $slider.find('.page-nav > div:first-child');
    }
    
    $post.click();
});
</script>