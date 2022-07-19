<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page = "/WEB-INF/views/内部系统模板.jsp" flush="true" />

	
<script type="text/javascript">
	//展开打开的标签，其余标签折叠
	$("#side-menu").children("li").each(function(i){
		if(i!=6){
			$(this).removeClass("active");
		}
		else{
			$(this).addClass("active");
			//找到你的标签下的子标签
			$(this).children("ul").children("li").each(function(j){
			//第1个子标签就用0，添加高亮显示
			if(j!=2){
				$(this).removeClass("active");
			}
			else{
				$(this).addClass("active");
			}
		})
	}
	})
	document.title="动物档案推广";
</script>

<script type="text/javascript">
	//构建整个表格体，用动态的方法添加
	$("#container_1").empty();
	$("#container_2").empty();
	        
	//导航栏
	var container_1_content=
	"<div class=\"wrapper wrapper-content animated fadeInRight ecommerce\">"+
	
	"<div class=\"ibox-content m-b-sm \">"+
		"<h4>档案推广协议信息</h4>"+
		"<ol class=\"breadcrumb\">"+
            "<li class=\"breadcrumb-item\">"+
            	"实验动物档案管理系统"+
            "</li>"+
            "<li class=\"breadcrumb-item\">"+
            	"档案推广子系统"+
            "</li>"+
            "<li class=\"breadcrumb-item active\">"+
                "<strong>查看推广协议信息</strong>"+
            "</li>"+
        "</ol>"+
	"</div>"+
	
	"<div class=\"ibox-content m-b-sm \">"+
	"<form id=\"quert_area\">"+
			"<div class=\form-group\">" +
				"<label for=\"inputArchiveNumber\" control-label\">"+
					"请输入档案编号"+"&nbsp;&nbsp;&nbsp;&nbsp;"+
				 "</label>"+
				 	"<input type=\"text\"  name=\"archivenumber\" id=\"archivenumber_input\" placeholder=\"1\">"+
					"&nbsp;&nbsp;&nbsp;&nbsp;"+
					"<button type=\"button\" class=\"btn btn-info\" id=\"query_aggre_info\">"+
						"查询"+
					"</button>"+
			"</div>"+
	"</form>"+
	"</div>"+
				 	
	"<div class=\"ibox-content m-b-sm \">"+
	"<div class=\"row\">"+
			"<div class=\"col-md-12\">"+
				"<table class=\"table table-striped\" id=\"emps_table\">"+
					"<thead>"+
						"<tr>"+
							"<th>"+
								"<input type=\"checkbox\" id=\"check-all\"/>"+
							"</th>"+
							"<th>协议编号</th>"+
							"<th>档案编号</th>"+
							"<th>签订人编号</th>"+
							"<th>签订人姓名</th>"+
							"<th>责任人编号</th>"+
							"<th>签订时间</th>"+
							"<th>存放位置</th>"+
						"</tr>"+
					"</thead>"+
					"<tbody>"+
					"</tbody>"+
				"</table>"+
			"</div>"+
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
		if("${user_authzadvertsmanage}"!="1"){
			alert("您所在的用户组没有权限");
			return;
		}
		to_page(1);
	})
	
	function to_page(pn) {
		//清空table表格
		$("#emps_table tbody").empty();
		//$("#loading").hide();
		var load=
		"<div class=\"loader\" style=\"position: relative;\">"+
			"<div class=\"loading-3\">"+
				"<i></i><i></i><i></i><i></i>"+
				"<i></i><i></i><i></i><i></i>"+
			"</div>";
		$("#container_loader").empty();
		$(load).appendTo("#container_loader");
		$("#loading").show();
		
		$.ajax({
		url : "${root_path}advert/advert/query_aggrement",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				//console.log(result);
				//1. 解析JSON 数据
				build_emps_table(result);
				//2. 显示分页信息
				build_page_info(result);
				//3. 显示分页条
				build_page_nav(result);
				$("#container_loader").empty();
			}
		});
	}
	
	//表格中填写数据
	function build_emps_table(result) {
			var emps = result.extend.pageInfo.list;
			var dates = result.extend.date;
			$.each(emps, function(index, item) { 
				//alert(item.empName);
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'></input></td>");
				var aggre_id = $("<td></td>").append(item.advertsagreeid);
				var archive_number = $("<td></td>").append(item.archivenumber); 
				var uid = $("<td></td>").append(item.uid); 
				var name= $("<td></td>").append(item.user.name); 
				var responsible_people = $("<td></td>").append(item.responsibleperson);
				var businessdate =  $("<td></td>").append(dates[index]);
				var storeaddress= $("<td></td>").append(item.storeaddress);

				$("<tr></tr>").append(checkBoxTd).append(aggre_id).append(archive_number).append(
						uid).append(name).append(responsible_people).append(businessdate).append(storeaddress).appendTo("#emps_table tbody");
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




<script type="text/javascript">
		//点击查看推广协议信息
		$("#query_aggre_info").click(function() {
			if("${user_authzauthzmanage}"!="1"){
				alert("您所在的用户组没有权限");
				return;
			}
		$(function() {
			to_page(1);
		})
		function to_page(pn) {
			//清空table表格
			$("#emps_table tbody").empty();
			//$("#loading").hide();
			var load=
			"<div class=\"loader\" style=\"position: relative;\">"+
				"<div class=\"loading-3\">"+
					"<i></i><i></i><i></i><i></i>"+
					"<i></i><i></i><i></i><i></i>"+
				"</div>";
			$("#container_loader").empty();
			$(load).appendTo("#container_loader");
			$("#loading").show();
			
			var archivenumber;
			if($("#archivenumber_input").val()=="")
			{
				archivenumber = 1;
			}
			else
			{
				archivenumber = $("#archivenumber_input").val();
			}
			//根据档案编号查出该档案对应的授权协议
			$.ajax({
				url : "${root_path}advert/advert/query_aggrement_by_archivenumber/" +archivenumber,
				type : "GET",
				data : "pn="+pn+"&archivenumber=" + archivenumber,
				success : function(result) {
							if (result.code == 100) {
							//console.log(result);
							//1. 解析JSON 数据
							build_emps_table(result);
							//2. 显示分页信息
							build_page_info(result);
							//3. 显示分页条
							build_page_nav(result);
							$("#container_loader").empty();	
							} else {
								alert("查询失败");
							}
					}
			});
		}
		
			//表格中填写数据
			function build_emps_table(result) {
			var emps = result.extend.pageInfo.list;
			var dates = result.extend.date;
			$.each(emps, function(index, item) { 
				//alert(item.empName);
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'></input></td>");
				var aggre_id = $("<td></td>").append(item.advertsagreeid);
				var archive_number = $("<td></td>").append(item.archivenumber); 
				var uid = $("<td></td>").append(item.uid); 
				var name= $("<td></td>").append(item.user.name); 
				var responsible_people = $("<td></td>").append(item.responsibleperson);
				var businessdate =  $("<td></td>").append(dates[index]);
				var storeaddress= $("<td></td>").append(item.storeaddress);
				
				$("<tr></tr>").append(checkBoxTd).append(aggre_id).append(archive_number).append(
						uid).append(name).append(responsible_people).append(businessdate).append(storeaddress).appendTo("#emps_table tbody");
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
	
	});

</script>
