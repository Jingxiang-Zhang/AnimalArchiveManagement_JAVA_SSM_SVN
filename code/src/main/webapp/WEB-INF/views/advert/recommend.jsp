<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/外部系统模板.jsp" flush="true" />
	
<script type ="text/javascript">
	//展开打开的标签，其余标签折叠
	$("#side-menu").children("li").each(function(i){
		if(i!=1){
			$(this).removeClass("active");
		}
		if(i==1){
			$(this).addClass("active");
		}
	})
	document.title="推荐档案";
</script>

<script type="text/javascript">
	//构建整个表格体，用动态的方法添加
	$("#container_1").empty();
	$("#container_2").empty();
	
	//导航栏
	var container_1_content=
	"<div class=\"wrapper wrapper-content animated fadeInRight ecommerce\">"+
	
		"<div class=\"row row-cols-1 row-cols-md-3\" id=\"all_cards\">"+

		"</div>"+
		
		"<div class=\"row row-cols-1 row-cols-md-3\" id=\"all_cards2\">"+

		"</div>"+
		
		"<!-- 显示加载动作条 -->"+
		"<div id=\"container_loader\">"+
		"</div>"+
		"<!-- 显示分页信息 -->"+
		"<div class=\"row\">"+
			"<!-- 分页文字信息 -->"+
			"<div class=\"col-md-6\" id=\"page_info_area\"></div>"+
			"<!-- 分页条信息 -->"+
			"<div class=\"col-md-6\" id=\"page_nav_area\"></div>"+
		"</div>"+
	"</div>"+
	"</div>";
		
	$("#container_1").append(container_1_content);
	$("#container_2").hide();
</script>


<script type="text/javascript">
//页面加载完成后，发送ajax请求，获取分页数据
	$(function() {
		to_page(1);
	})
	
	function to_page(pn) {
		$("#all_cards").empty();
		$("#all_cards2").empty();
		
		$.ajax({
		url : "${root_path}advert/get_recommend_archive",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				console.log(result);
				//1. 解析JSON 数据
				build_carts(result);
				//2. 显示分页信息
				build_page_info(result);
				//3. 显示分页条
				build_page_nav(result);
				$("#container_loader").empty();
			}
		});
	}
	
	//表格中填写数据
	function build_carts(result) {
			var emps = result.extend.pageInfo.list;
			var i=1;
			//$("#container_1").append(head2);
			$.each(emps, function(index, item) { 
				//alert(item.empName);
				var img_href;
				if(item.animalbasic.animaldescription=="沙子岭猪")
				{
					img_href="${root_path}static/shaziling.jpg";
				}
				else if(item.animalbasic.animaldescription=="湘村黑猪母猪")
				{
					img_href="${root_path}static/heizhu.jpg";
				}
				else if(item.animalbasic.animaldescription=="八眉猪")
				{
					img_href="${root_path}static/bameizhu.jpg";
				}
				else if(item.animalbasic.animaldescription=="金华猪")
				{
					img_href="${root_path}static/jinhuazhu.jpg";
				}
				else if(item.animalbasic.animaldescription=="乌蒙凤鸡")
				{
					img_href="${root_path}static/wumengfengji.jpg";
				}
				else
				{
					img_href="${root_path}static/dangan.jpeg";
				}
				var carts=
				"<div class=\"col mb-4\">"+
    				"<div class=\"card h-100 border-success \">"+
    					"<img src="+img_href+" class=\"card-img-top\" >"+
    					"<div class=\"card-header bg-primary border-success\">"+
    					"档案编号: "+item.archivenumber+
    					"</div>"+
    					"<div class=\"card-body border-success\">"+
       						"<p class=\"card-text \">PI："+item.user.name+"</p>"+
       						"<p class=\"card-text\">关键字："+item.archivekey+"</p>"+
       						"<p class=\"card-text\">档案描述："+item.archivedescription+"</p>"+
     						"<a href=\"${root_path}out_retrieval/outer_retrieval\" class=\"btn btn-primary\" >查询档案</a>"+	 
     					"</div>"+
    				"</div>"+
 				"</div>";
 				if(i<=4)
 				{
 					$("#all_cards").append(carts);
 				}	
 				else
 				{
 					$("#all_cards2").append(carts);
 				}
				i++;
			});

	}
	
	//分页条
	function build_page_nav(result) {
			//page_nav_area
			$("#page_nav_area").empty();

			var ul = $("<ul></ul>").addClass("pagination");
			var firstPageLi = $("<li></li>").append(
					$("<a></a>").append("首页").attr("href", "#"));
			var prePageLi = $("<li></li>").append(
					$("<a></a>").append("&laquo;").attr("href", "#"));
			if (result.extend.pageInfo.hasPreviousPage == false) {
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			} else {
				//添加翻页事件
				firstPageLi.click(function() {
					to_page(1);
				});
				prePageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum - 1);
				});
			}

			var nextPageLi = $("<li></li>").append(
					$("<a></a>").append("&raquo;").attr("href", "#"));
			var lastPageLi = $("<li></li>").append(
					$("<a></a>").append("末页").attr("href", "#"));
			if (result.extend.pageInfo.hasNextPage == false) {
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			} else {
				//添加翻页事件
				lastPageLi.click(function() {
					to_page(result.extend.pageInfo.pages);
				});
				nextPageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum + 1);
				});
			}

			ul.append(firstPageLi).append(prePageLi);
			var navNum = result.extend.pageInfo.navigatepageNums;
			$.each(navNum, function(index, item) {
				var pageLi = $("<li></li>").append(
						$("<a></a>").append(item).attr("href", "#"));
				if (result.extend.pageInfo.pageNum == item) {
					pageLi.addClass("active");
				}
				//绑定单击事件
				pageLi.click(function() {
					to_page(item);
				})
				ul.append(pageLi);
			});
			ul.append(nextPageLi).append(lastPageLi);
			var navEle = $("<nav></nav>").append(ul);
			$("#page_nav_area").append(navEle);
	}
	
	//分页信息
	function build_page_info(result) {

			$("#page_info_area").empty();

			$("#page_info_area").append(
					"当前第 " + result.extend.pageInfo.pageNum + " 页" + " 总 "
							+ result.extend.pageInfo.pages + " 页" + " 总 "
							+ result.extend.pageInfo.total + " 条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
	}
</script>

