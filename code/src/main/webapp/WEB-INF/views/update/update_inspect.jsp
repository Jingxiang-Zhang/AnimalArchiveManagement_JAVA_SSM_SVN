<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/内部系统模板.jsp" flush="true" />

	
<script type="text/javascript">
	document.title = "删除审核";
	//这个代码的作用是，展开你打开的标签，其余标签折叠
	$("#side-menu").children("li").each(function(i){
		if(i!=2){
			$(this).removeClass("active");
		}
		else{
			$(this).addClass("active");
			$(this).children("ul").children("li").each(function(j){
				if(j!=6){
					$(this).removeClass("active");
				}
				else{
					$(this).addClass("active");
				}
			})
		}
	})
</script>


<script type="text/javascript">
	//构建整个表格体，用动态的方法添加
	$("#container_1").empty();
	$("#container_2").empty();
	
	//导航栏
	var container_1_content=
	"<div class=\"wrapper wrapper-content animated fadeInRight ecommerce\">"+
	
	"<div class=\"ibox-content m-b-sm \">"+
		"<h2>审核系统</h2>"+
		"<ol class=\"breadcrumb\">"+
            "<li class=\"breadcrumb-item\">"+
            	"<a href=\"${root_path}add/AddExperimentRecord\">实验动物档案管理系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item\">"+
            	"<a herf=\"#\">档案修改子系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item active\">"+
                "<strong>审核系统</strong>"+
            "</li>"+
        "</ol>"+
	"</div>"+
	
	"<div class=\"ibox-content m-b-sm \">"+
	"<div class=\"row\">"+
			"<div class=\"col-md-12\">"+
				"<table class=\"table table-striped\" id=\"emps_table\">"+
					"<thead>"+
						"<tr>"+
							"<th>表单类型</th>"+
							"<th>表单编号</th>"+
							"<th>员工部门</th>"+
							"<th>申请员id</th>"+
							"<th>申请员姓名</th>"+
							"<th>申请日期</th>"+
							"<th>操作"+
							"</th>"+
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
		if("${user_dept}"!="建档部" && "${user_dept}"!="所有"){
				alert("您所在的用户组没有权限");
				return;
			}
		to_page(1);
	})
	var page_information;
	function to_page(pn) {
		var totalRecord;
		var currentPage;
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
		url : "${root_path}update/inspect/query",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				page_information=result;
				//console.log(result);
				//1. 解析JSON 显示数据
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
				if(item.archiveType=="1"){
					var formtypeTd = $("<td></td>").append("动物档案");
				}
				else{
					var formtypeTd = $("<td></td>").append("实验数据");
				}
				
				var formIdTd = $("<td></td>").append(item.id);
				var deptTd = $("<td></td>").append(item.dept);
				var operatorIdTd = $("<td></td>").append(item.operatorId);
				var operatorNameTd = $("<td></td>").append(item.operatorName);
				var recorddateTd = $("<td></td>").append(dates[index]);

				var editbtn = $("<button></button>").addClass(
						"btn btn-primary btn-sm edit_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-pencil")).append("同意");
				editbtn.attr("edit-type", item.archiveType);
				editbtn.attr("edit-id", item.id);
				
				var delbtn = $("<button></button>").addClass(
						"btn btn-danger btn-sm delete_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-remove")).append("拒绝");
				delbtn.attr("delete-type", item.archiveType);
				delbtn.attr("delete-id", item.id);
				var btntd = $("<td></td>").append(editbtn).append(" ").append(
						delbtn)
						
				$("<tr></tr>").append(formtypeTd).append(formIdTd).append(
						deptTd).append(operatorIdTd).append(operatorNameTd).append(recorddateTd).
						append(btntd).appendTo("#emps_table tbody");
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

	$(document).on("click", ".delete_btn", function() {
	if("${user_dept}"!="建档部" && "${user_dept}"!="所有"){
				alert("您所在的用户组没有权限");
				return;
			}
		var archiveType = $(this).attr("delete-type");
		var archiveId = $(this).attr("delete-id");
		//保存数据
		$.ajax({
			url : "${root_path}update/inpect/decline/" + $(this).attr("delete-id"),
			type : "PUT",
			data : "basicnumber=" + $(this).attr("delete-id") + 
					"&animalweight=" + archiveType + 
					"&animallengh=" + archiveType,
			success : function(result) {
				if (result.code == 100) {
					//回到本页面
					to_page(currentPage);
				} else {
					alert("更新失败");
				}
			}
			
		});
	});
	
	$(document).on("click", ".edit_btn", function() {
	
		if("${user_dept}"!="建档部" || "${user_dept}"!="所有"){
				alert("您所在的用户组没有权限");
				return;
			}
		
		var archiveType = $(this).attr("edit-type");
		var archiveId = $(this).attr("edit-id");
		//保存数据
		$.ajax({
			url : "${root_path}update/inpect/agree/" + $(this).attr("edit-id"),
			type : "PUT",
			data : "basicnumber=" + $(this).attr("edit-id") + 
					"&animalweight=" + archiveType + 
					"&animallengh=" + archiveType,
			success : function(result) {
				if (result.code == 100) {
					//回到本页面
					to_page(currentPage);
				} else {
					alert("更新失败");
				}
			}
		});
	});
	
</script>





