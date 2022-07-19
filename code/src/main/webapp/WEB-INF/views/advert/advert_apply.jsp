<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<jsp:include page = "/WEB-INF/views/外部系统模板.jsp" flush ="true" />

<!-- 动物档案修改的模态框 -->
	<!-- Modal -->
	<div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header alert alert-success">
					<h4 class="modal-title" id="myModalLabel">是否确认申请推广？</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="height:90px;">
					<form class="form-horizontal">
					<div class="form-group">
							<div class="col-sm-12">
								<p class="form-control-static" id="archive_number_static"></p>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="emp_update_btn">确认</button>
					<button type="button" class="btn btn-default" id="emp_update_cancel" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
	//展开打开的标签，其余标签折叠
	$("#side-menu").children("li").each(function(i){
		if(i!=5){
			$(this).removeClass("active");
		}
		else{
			$(this).addClass("active");
			//找到你的标签下的子标签
			$(this).children("ul").children("li").each(function(j){
			//第1个子标签就用0，，添加高亮显示
			if(j!=0){
				$(this).removeClass("active");
			}
			else{
				$(this).addClass("active");
			}
		})
	}
	})
	document.title="推广申请";
</script>

<script type="text/javascript">
	//构建整个表格体，用动态的方法添加
	$("#container_1").empty();
	$("#container_2").empty();
	
	//导航栏
	var container_1_content=
	"<div class=\"wrapper wrapper-content animated fadeInRight ecommerce\">"+
	
	"<div class=\"ibox-content m-b-sm \">"+
		"<h2>档案推广申请表</h2>"+
		"<ol class=\"breadcrumb\">"+
            "<li class=\"breadcrumb-item\">"+
            	"实验动物档案管理系统"+
            "</li>"+
            "<li class=\"breadcrumb-item\">"+
            	"档案授权子系统"+
            "</li>"+
            "<li class=\"breadcrumb-item active\">"+
                "<strong>档案授权申请</strong>"+
            "</li>"+
        "</ol>"+
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
							"<th>档案编号</th>"+
							"<th>关键字</th>"+
							"<th>所有者编号</th>"+
							"<th>所有者姓名</th>"+
							"<th>操作&nbsp;&nbsp;&nbsp;&nbsp;"+
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
		url : "${root_path}advert/archive_can_advert/"+"${user_uid}",
			data : "pn=" + pn+"&id="+"${user_uid}",
			type : "GET",
			success : function(result) {
				console.log(result);
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

			$.each(emps, function(index, item) { 
				//alert(item.empName);
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'></input></td>");
				var archive_number = $("<td></td>").append(item.archivenumber); 
				var archive_key = $("<td></td>").append(item.archivekey);
				var belong_people = $("<td></td>").append(item.belongpeople);
				var belong_people_name =  $("<td></td>").append(item.user.name);

				var editbtn = $("<button></button>").addClass(
						"btn btn-primary btn-sm edit_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-pencil")).append("申请推广");
				editbtn.attr("edit-id", item.archivenumber);
				editbtn.attr("apply-user-id", item.belongpeople);
				$("<tr></tr>").append(checkBoxTd).append(archive_number).append(archive_key).append(
						belong_people).append(belong_people_name).append(editbtn).appendTo("#emps_table tbody");
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
	//这个代码用于显示修改弹出的修改模态框

	//新版本jquery使用，给按钮绑定修改事件
	$(document).on("click", ".edit_btn", function() {
			//查出动物信息
			$("#archive_number_static").text("您申请推广的档案编号为 "+ $(this).attr("edit-id"));
			//把动物的ID传递给更新按钮
			$("#emp_update_btn").attr("edit-id", $(this).attr("edit-id"));
			//重置所有的模态框的表单（出错/正确）信息
			//reset_form("#empUpdateModal");
			//弹出模态框
			$("#empUpdateModal").modal({
				backdrop : "static"
			});
	});
	
</script>

<script type="text/javascript">
		//点击更新档案修改信息  
		$("#emp_update_btn").click(function() {
			var canapplyadverts="0";
			var archivenumber=$(this).attr("edit-id");
			//更改档案可推广字段为0
			$.ajax({
				url : "${root_path}authz/authz/updatearchive/" + $(this).attr("edit-id"),
				type : "PUT",
				data : "archivenumber=" + $(this).attr("edit-id") + 
						"&canapplyadverts=" + canapplyadverts,
				success : function(result) {
					if (result.code == 100) {
							$("#empUpdateModal").modal("hide");
							//回到本页面
							to_page(currentPage);
						} else {
								alert("申请推广失败");
						}
					}
			});
		});

</script>
