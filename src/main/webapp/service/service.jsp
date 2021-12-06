<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<style type="text/css">
    *{margin:0;padding:0;}
	html, body{overflow-y:hidden}
	ul, ol{list-style:none}
	.content{}
	.content div{position:relative}
	.content div h2{position:absolute;top:50%;margin-top:-40px;margin-left:10px;text-align:left;width:100%;font-size:75px;font-weight:bold;color:#fff}
	.content div p{position:absolute;top:62%;margin-left:10px;text-align:left;width:100%;font-size:30px;font-weight:bold;color:#fff}
	
	.content .cnt01{background: url(../img/gallery/gallery_1.png)}
	.content .cnt02{background: url(../img/pillows.jpg)}
	.content .cnt03{background: url(../img/gallery/gallery_3.png)}
</style>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	var scroll = function(){
	    
	    var $nav = null,
	        $cnt = null,
	        moveCnt = null,
	        moveIndex = 0,
	        moveCntTop = 0,
	        winH = 0,
	        time = false; // 새로 만든 변수
	
	    $(document).ready(function(){
	        init();
	        initEvent();
	    });
	    
	    var init = function(){
	        $cnt = $(".content");
	        $nav = $(".header a");
	    };
	    
	    var initEvent = function(){
	        $("html ,body").scrollTop(0);
	        winResize();
	        $(window).resize(function(){
	            winResize();
	        });
	        $nav.on("click", function(){
	            moveIndex = $(this).parent("li").index();
	            moving(moveIndex);
	            return false;
	        });
	        $cnt.on("mousewheel", function(e){
	            if(time === false){ // time 변수가 펄스일때만 휠 이벤트 실행
	              wheel(e);
	            }
	        });
	    };
	        
	    var winResize = function(){
	        winH = $(window).height();
	        $cnt.children("div").height(winH);
	        $("html ,body").scrollTop(moveIndex.scrollTop);
	    };
	    
	    var wheel = function(e){
	        if(e.originalEvent.wheelDelta < 0){
	            if(moveIndex < 3){
	                moveIndex += 1;
	                moving(moveIndex);
	            };
	        }else{
	            if(moveIndex > 0){
	                moveIndex -= 1;
	                moving(moveIndex);
	            };
	        };
	    };
	    
	    var moving = function(index){
	        time = true // 휠 이벤트가 실행 동시에 true로 변경
	        moveCnt = $cnt.children("div").eq(index);
	        moveCntTop = moveCnt.offset().top;
	        $("html ,body").stop().animate({
	            scrollTop: moveCntTop
	        }, 1000, function(){
	          time = false; // 휠 이벤트가 끝나면 false로 변경
	        });
	        $nav.parent("li").eq(index).addClass("on").siblings().removeClass("on");
	    };
	    
	};

scroll();
</script>

<section class="section_padding">
   <div class="container">
   		<div class="content">
		    <div class="cnt01">
		    	<h2>비대면 세탁 서비스</h2>
		    	<p>비대면 세탁 수거함을 통해 세탁에서의 자유로움을 느껴보세요.</p>
		    </div>
		    <div class="cnt02">
		    	<h2>친환경 세재</h2>
		    	<p>친환경 세재를 사용하여 피부를 보호하고<br><br>환경을 보호하며 세탁 퀄리티를 높입니다.</p>
		    </div>
		    <div class="cnt03">
		    	<h2>배송</h2>
		    	<p>수거 후 최대 2~3일 소요되며 문 앞 세탁함에 배송됩니다.</p>
		    </div>
		</div>
   </div>
</section>


<%@ include file="../inc/bottom.jsp" %>