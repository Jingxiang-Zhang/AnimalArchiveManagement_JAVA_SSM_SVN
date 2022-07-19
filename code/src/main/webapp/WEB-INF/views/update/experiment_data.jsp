<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/内部系统模板.jsp" flush="true" />

<!-- 动物档案修改的模态框 -->
	<!-- Modal -->
	<div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header alert alert-success">
					<h4 class="modal-title" id="myModalLabel">实验数据修改</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="height:550px;overflow:auto;">
					<form class="form-horizontal">
					<!-- 显示所有不可被修改的模块 -->
						<div class="form-group">
							<div class="col-sm-5">
								<p class="form-control-static" id="experimentId_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="experimenterId_update_static"></p>
							</div>
							<div class="col-sm-12">
								<p class="form-control-static" id="experimentDate_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="experimentLocation_update_static"></p>
							</div>
						</div>
						<!-- 显示可被修改的输入框 -->
						<div class="form-group">
						    <label for="experiment_purpose" class="col-lg-4 control-label">
						    	实验目的
						    </label>
						    <div class="col-lg-12">
						      	<textarea class="form-control" rows="2" id="experimentPurpose_update_input">
						      	</textarea>
						    </div>					
						</div>		
						<div class="form-group">
						    <label for="experiment_approach" class="col-lg-4 control-label">
						    	实验方法
						    </label>
						    <div class="col-lg-12">
						      	<textarea class="form-control" rows="4" id="experimentApproach_update_input">
						      	</textarea>
						    </div>					
						</div>
						<div class="form-group">
						    <label for="experiment_record" class="col-lg-4 control-label">
						    	实验记录
						    </label>
						    <div class="col-lg-12">
						      	<textarea class="form-control" rows="4" id="experimentRecord_update_input">
						      	</textarea>
						    </div>					
						</div>
						<div class="form-group">
						    <label for="experiment_record" class="col-lg-4 control-label">
						    	实验结果
						    </label>
						    <div class="col-lg-12">
						      	<textarea class="form-control" rows="2" id="experimentResult_update_input">
						      	</textarea>
						    </div>					
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="emp_update_cancel" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="emp_update_btn">保存</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 删除提示信息模态框 -->
	<div class="modal fade" id="del_modal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header  alert alert-danger">
    				您的申请将会提交到管理员进行审核！
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="del_info_text"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">取消</button>
					<button type="button" id="confirm_del_btn" class="btn btn-danger">提交审核</button>
				</div>
			</div>
		</div>
	</div>


<script type="text/javascript">
	document.title = "实验数据修改";
	//这个代码的作用是，展开你打开的标签，其余标签折叠
	$("#side-menu").children("li").each(function(i){
		if(i!=2){
			$(this).removeClass("active");
		}
		else{
			$(this).addClass("active");
			$(this).children("ul").children("li").each(function(j){
				if(j!=1){
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
		"<h2>实验数据表</h2>"+
		"<ol class=\"breadcrumb\">"+
            "<li class=\"breadcrumb-item\">"+
            	"<a href=\"${root_path}add/AddExperimentRecord\">实验动物档案管理系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item\">"+
            	"<a herf=\"#\">档案修改子系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item active\">"+
                "<strong>实验数据修改</strong>"+
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
							"<th>ID</th>"+
							"<th>实验者编号</th>"+
							"<th>实验日期</th>"+
							"<th>实验目的</th>"+
							"<th>实验地点</th>"+
							"<th>操作&nbsp;&nbsp;&nbsp;&nbsp;"+
								"<button class=\"btn btn-danger btn-sm delete_btn\"" +
								" id=\"batch_del_btn\" disabled=\"disabled\">"+
								"<span class=\"glyphicon glyphicon-remove\"></span>批量删除"+
								"</button>"+
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
		if("${user_authzexp}"!="1"){
				alert("您所在的用户组没有权限");
				return;
			}
		to_page(1);
	})
	
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
		url : "${root_path}update/experiment_data/query",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				//console.log(result);
				//1. 解析JSON 显示员工数据
				build_emps_table(result);
				//2. 显示分页信息
				build_page_info(result);
				//3. 显示分页条
				build_page_nav(result);
				$("#container_loader").empty();
				
				//清空删除按钮
				$("#batch_del_btn").attr("disabled","disabled");
				$("#check-all").prop("checked", false);
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
				var experimentnumberTd = $("<td></td>").append(item.id);
				var experimenternumberTd = $("<td></td>").append(item.experimenternumber);
				var experimentdateTd = $("<td></td>").append(dates[index]);
				var exppur=item.experimentpurpose;
				if(exppur.length>20){
					exppur=exppur.substring(0,19)+"......";
				}
				var experimentpurposeTd = $("<td></td>").append(exppur);
				var experimentlocationTd = $("<td></td>").append(item.experimentlocation);

				var editbtn = $("<button></button>").addClass(
						"btn btn-primary btn-sm edit_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-pencil")).append("编辑");
				editbtn.attr("edit-id", item.id);
				var delbtn = $("<button></button>").addClass(
						"btn btn-danger btn-sm delete_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-remove")).append("删除");
				delbtn.attr("delete-id", item.id);
				var btntd = $("<td></td>").append(editbtn).append(" ").append(
						delbtn)
				$("<tr></tr>").append(checkBoxTd).append(experimentnumberTd).append(experimenternumberTd).append(
						experimentdateTd).append(experimentpurposeTd).append(experimentlocationTd).append(
						btntd).appendTo("#emps_table tbody");
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
			getExperimentInfo($(this).attr("edit-id"));
			//把动物的ID传递给更新按钮
			$("#emp_update_btn").attr("edit-id", $(this).attr("edit-id"));
			//弹出模态框
			$("#empUpdateModal").modal({
				backdrop : "static"
			});
	});
	
	//ajax获取后台动物表的信息，进行相应位置的添加
	function getExperimentInfo(id) {
			$.ajax({
				url : "${root_path}update/experiment_data/querybase/" + id,
				type : "GET",
				success : function(result) {
					var empData = result.extend.emp;
					//console.log(result);
					$("#experimentId_update_static").text("档案编号："+ empData.experimentnumber);
					$("#experimenterId_update_static").text("实验者编号："+empData.experimenternumber);
					$("#experimentDate_update_static").text("实验日期："+result.extend.date);
					
					$("#experimentPurpose_update_input").val(empData.experimentpurpose);
					$("#experimentApproach_update_input").val(empData.experimentapproach);	
					$("#experimentRecord_update_input").val(empData.experimentrecord);
					$("#experimentResult_update_input").val(empData.experimentresult);	
				}
			})
		}
	
</script>


<script type="text/javascript">
		//点击更新档案修改信息  
		$("#emp_update_btn").click(function() {
			if("${user_authzexp}"!="1"){
				alert("您所在的用户组没有权限");
				return;
			}
			//保存数据
			$.ajax({
				url : "${root_path}update/experiment_data/update/" + $(this).attr("edit-id"),
				type : "PUT",
				data : "id=" + $(this).attr("edit-id") + 
						"&experimentpurpose=" + $("#experimentPurpose_update_input").val() + 
						"&experimentrecord=" + $("#experimentRecord_update_input").val() + 
						"&experimentresult=" + $("#experimentResult_update_input").val() + 
						"&experimentapproach=" + $("#experimentApproach_update_input").val(),
				success : function(result) {
					if (result.code == 100) {
						//关闭模态框
						$("#empUpdateModal").modal("hide");
						//回到本页面
						to_page(currentPage);
					} else {
						alert("更新失败");
					}
				}
			});
		});

</script>


<script type="text/javascript">
//删除按钮脚本
	//单个删除
	
		$(document).on("click", ".delete_btn", function() {
			if(this.id!="batch_del_btn"){
				//弹出是否删除对话框
				var delName = $(this).parents("tr").find("td:eq(1)").text();
				$("#del_info_text").text("您要进行删除的实验ID为："+delName);
				$("#del_modal").modal({
					backdrop : "static"
				});
				$("#confirm_del_btn").attr("delname",delName);	
			}
		});
		
		$("#confirm_del_btn").click(function(){
			if("${user_authzexp}"!="1"){
				alert("您所在的用户组没有权限");
				return;
			}			
			//确定，发送删除请求
			$.ajax({
				url:"${root_path}update/experiment_data/update/" + $(this).attr("delname"),
				type:"DELETE",
				success:function(result){
					$("#del_modal").modal("hide");
					to_page(currentPage);
				}
			});
		})
		
	//批量删除
	//全选功能
	$("#check-all").click(function(){
		//使用prop修改和读取dom原生属性，不使用attr
		//alert($(this).prop("checked"));
		$(".check_item").prop("checked",$(this).prop("checked"));
		if($("#check-all").get(0).checked){
			$("#batch_del_btn").removeAttr("disabled");
		}
		else{
			$("#batch_del_btn").attr("disabled","disabled");
		}
	});
	//单选点满，全选按钮也要勾上
	$(document).on("click",".check_item",function(){
		//判断是否全部勾选
		var flag = $(".check_item:checked").length==$(".check_item").length;
		$("#check-all").prop("checked",flag);
		
		if($(".check_item:checked").length==0){
			$("#batch_del_btn").attr("disabled","disabled");
		}
		else{
			$("#batch_del_btn").removeAttr("disabled");
		}
		
	});
	
	//点击全部删除
		$("#batch_del_btn").click(function(){
			var empNames = "";
			var del_idstr = "";
			
			$.each($(".check_item:checked"),function(index,item){
				
				empNames += $(this).parents("tr").find("td:eq(1)").text() + ",";
				del_idstr += $(this).parents("tr").find("td:eq(1)").text() + "-";
			});
			empNames = empNames.substring(0,empNames.length-1);
			del_idstr = del_idstr.substring(0,del_idstr.length-1);
			
			$("#del_info_text").text("您要进行删除的实验ID为："+empNames);
			$("#del_modal").modal({
				backdrop : "static"
			});
			$("#confirm_del_btn").attr("delname",del_idstr);	
			
		});

</script>

