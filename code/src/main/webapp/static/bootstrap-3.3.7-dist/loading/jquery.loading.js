(function($) {
	
	var loadingHtml = ' \
		<div id = "loading">\
  		<div class="bg"></div>\
		<div class="loader"  style="position: relative;">\
			<h>正在加载中....</h>\
			<div class="loading-3">\
		    	<i></i>\
		    	<i></i>\
		    	<i></i>\
		    	<i></i>\
		    	<i></i>\
		    	<i></i>\
		    	<i></i>\
		    	<i></i>\
		    </div>\
		</div>\
	</div>\
		';
	$.fn.loadingInit = function(){
		 $(loadingHtml).appendTo($('body'));
	};
	/**
	 * 改样式的方法实例（改样式加到方法里即可，根据需求更改）：：
	 *  $("body").css("overflow","hidden");
	 *  $("#loading").css("height","100vh");
	 *  $("#loading").css("top","-60px");
	 *  $("#loading").css("z-index","20000");
	 * */
	$.fn.openLoading = function(){
		$("#loading").show();
	};
	$.fn.closeLoading = function(){
		$("#loading").hide();
	};
})(jQuery);

