<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style>
<!--
.bx-default-pager{
	display:none;
}
-->
</style>
<div class="carousel" style="position:relative;">
    <div style="height:440px;margin-top:65px;width:100%;position:absolute;z-index:1;">
    	<div style="padding-top:190px;text-align:center;">
    	<img src="${basePath}resource/frontend/theme/default/css/img/loading.gif"/>
    	</div>
    </div>
	<ul class="bxslider" style="z-index:2;">
		<c:forEach items="${carouselList }" var="c">
        <li style="display:none;">
        <a href="${c.url}" target="_blank" title="${c.title}">
        <img data-u="image"  src="${basePath}filee/viewPic.do?manageKey=${c.picture.manageKey}_x&w=1000&h=440" title="${c.title}"/>
        </a>
        </li>
        </c:forEach>
	</ul>
</div>
<script>
$(function(){
	
	window.setTimeout(function(){
		$('.carousel .bxslider').bxSlider({
			  mode: 'fade',
			  captions: true,
			  adaptiveHeight:false,
			  pagerType:'full',
			  auto:true,
			  pause:3000
		});
		
		 $(".carousel .bxslider").show();
	},2000);
	
	$(".bxslider a>img").each(function(){
		$(this).load(function(){
			imageLoaded();
		});
	});
});

var _x = 0;
function imageLoaded(){
	_x++;
	if(_x==$(".bxslider a>img").size()){
		 $(".bx-default-pager").show();
	}
}
</script>