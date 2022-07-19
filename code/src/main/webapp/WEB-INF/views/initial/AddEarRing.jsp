<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/内部系统模板.jsp" flush="true" />
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- 动物档案修改的模态框 -->
	<!-- Modal -->
	<div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header alert alert-success">
					<h4 class="modal-title" id="myModalLabel">动物档案修改</h4>
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
								<p class="form-control-static" id="archiveId_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="animalId_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="animalSpecies_update_static"></p>
							</div>
							<div class="col-sm-12">
								<p class="form-control-static" id="animalGender_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="animalDescription_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="Eartag_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="InitDate_update_static"></p>
							</div>
							<div class="col-sm-5">
								<p class="form-control-static" id="RespondPeople_update_static"></p>
							</div>
							<div class="col-sm-12">
								<p class="form-control-static" id="KeyWord_update_static"></p>
							</div>
							<div class="col-sm-12">
								<p class="form-control-static" id="ArchiveDescription_update_static"></p>
							</div>
						</div>
						
						<!-- 显示可被修改的输入框 -->
						<div class="form-group">
							<label for="inputEarRingNo" class="col-sm-6 control-label">请输入新的耳标编号：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="earRingNo_update_input"> 
								<!-- 用于出错后的提示信息显示 -->
								<div class="invalid-feedback" id="earRingNo_update_input_feedback"></div>
							</div>
						</div>
						<div class="form-group">
							<label for="inputLength" class="col-sm-4 control-label">更新原因：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="reason_update_input"> 
								<div class="invalid-feedback" id="reason_update_input_feedback"></div>
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
	

	
<script type="text/javascript">
	document.title="动物档案管理系统 /耳标配置"
	//这个代码的作用是，展开你打开的标签，其余标签折叠
	$("#side-menu").children("li").each(function(i){
		if(i!=4){
			$(this).removeClass("active");
		}
		if(i==4){
			$(this).addClass("active");
		}
	})
	
	$("#container_1").empty();
	$("#container_2").empty();
	
	var container_1_content=
	"<div class=\"ibox-content m-b-sm \">"+
		"<h2>动物档案初始化</h2>"+
		"<ol class=\"breadcrumb\">"+
            "<li class=\"breadcrumb-item\">"+
            	"<a href=\"#\">实验动物档案管理系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item\">"+
            	"<a herf=\"#\">档案初始化子系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item active\">"+
                "<strong>耳标配置修改</strong>"+
            "</li>"+
        "</ol>"+
	"</div>"+
	
	"<div class=\"ibox-content m-b-sm\">"+
		"<h2>最近添加的档案：</h2>"+
		"<div class=\"col-md-12\">"+
				"<table class=\"table table-hover table-bordered\" id=\"single_line\">"+
					"<thead>"+
						"<tr align=\"center\">"+
							"<th>档案编号</th>"+
							"<th>耳标编号</th>"+
							"<th>初始建档员 UID</th>"+
							"<th>审核负责人 UID</th>"+
							"<th>所属PI UID</th>"+
							"<th>建档时间</th>"+
							"<th>档案关键字</th>"+
							"<th>档案授权</th>"+
							"<th>档案推广</th>"+
							"<th>操作</th>"+
						"</tr>"+
					"</thead>"+
					"<tbody>"+
						"<tr align=\"center\">"+
							"<td id = \"ARCnum\"> </td>"+
							"<td id = \"EARtag\"> </td>"+
							"<td id = \"INITuid\"> </td>"+
							"<td id = \"RESuid\"> </td>"+
							"<td id = \"PIuid\"> </td>"+
							"<td id = \"ARCdate\"> </td>"+
							"<td id = \"ARCkey\"> </td>"+
							"<td id = \"ARCauth\"> </td>"+
							"<td id = \"ARCadver\"> </td>"+
							"<td><button id=\"edit_btn_up\" class=\"btn btn-primary btn-sm edit_btn\"><span class=\"glyphicon glyphicon-pencil\">编辑</span></button></td>"+
						"</tr>"+
					"</tbody>"+
				"</table>"+
			"</div>"+
	"</div>"+
	
	"<div class=\"ibox-content m-b-sm \">"+
	"<h2>所有档案信息：</h2>"+
	"<div class=\"row\">"+
			"<div class=\"col-md-12\">"+
				"<table align=\"center\" class=\"table table-striped table-hover\" id=\"emps_table\">"+
					"<thead>"+
						"<tr align=\"center\">"+
							"<th>档案编号</th>"+
							"<th>耳标编号</th>"+
							"<th>初始建档员 UID</th>"+
							"<th>审核负责人 UID</th>"+
							"<th>所属PI UID</th>"+
							"<th>建档时间</th>"+
							"<th>档案关键字</th>"+
							"<th>档案授权</th>"+
							"<th>档案推广</th>"+
							"<th>操作</th>"+
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
	
	var user_dept="${user_dept}";
	if(!(user_dept=="建档部"||user_dept=="所有")){
		container_1_content=
		"<div class=\"ibox-content m-b-sm \">"+
		"<h2>动物档案初始化</h2>"+
		"<ol class=\"breadcrumb\">"+
            "<li class=\"breadcrumb-item\">"+
            	"<a href=\"#\">实验动物档案管理系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item\">"+
            	"<a herf=\"#\">档案初始化子系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item active\">"+
                "<strong>耳标配置修改</strong>"+
            "</li>"+
        "</ol>"+
		"</div>"+
		"<div class=\"ibox-content m-b-sm bg-warning\">"+
		"<h2><strong>当前用户没有权限使用该功能</strong></h2>"+
		"</div>";
	}
	
	$("#container_1").append(container_1_content);
	$("#container_2").remove();
	
</script>
<script type="text/javascript">
//页面加载完成后，发送ajax请求，获取分页数据
	
	
	$(function() {
		update_last();
		to_page(1);
	})
	
	function update_last(){
		$.ajax({
			url : "${root_path}initial/animalarchive/querySingle",
			type : "GET",
			async:  false, 
			success : function(result) {
					console.log(result.extend.LastAnimal);
					var item = result.extend.LastAnimal;
					$("#ARCnum").text(item.archivenumber);
					$("#EARtag").text(item.eartagnumber);
					$("#INITuid").text(item.initialpeople);
					$("#RESuid").text(item.responsiblepeople);
					$("#PIuid").text(item.belongpeople);
					var day = new Date(item.initialdate);    //根据时间戳生成的时间对象				
					$("#ARCdate").text((day.getFullYear()) + "-" + 
					            (day.getMonth() + 1) + "-" +
					            (day.getDate()) + " " + 
					            (day.getHours()) + ":" + 
					            (day.getMinutes()) + ":" + 
					            (day.getSeconds())); 
					$("#ARCkey").text(item.archivekey);
					$("#ARCauth").text(item.authzstate);
					$("#ARCadver").text(item.advertsstate);
					$("#edit_btn_up").attr("edit-id", item.archivenumber);
					//var editbtn = $("<button></button>").addClass(
					//	"btn btn-primary btn-sm edit_btn").append(
					//	$("<span></span>").addClass(
					//			"glyphicon glyphicon-pencil")).text("编辑");
					//editbtn.attr("edit-id", item.archivenumber);
					//$("#op_btn").append(editbtn);
					}
				});
			}
	
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
		url : "${root_path}initial/animalarchive/query",
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
			
			$.each(emps, function(index, item) {
				var basicNumberTd = $("<td></td>").append(item.archivenumber);
				var animalSpeciesTd = $("<td></td>").append(item.eartagnumber);
				var animalDescriptionTd = $("<td></td>").append(item.initialpeople);
				var animalSexTd = $("<td></td>").append(item.responsiblepeople);
				var animalWeightTd = $("<td></td>").append(item.belongpeople);
				//var createDate = $("<td></td>").append(item.initialdate);
				var day = new Date(item.initialdate);    //根据时间戳生成的时间对象				
				var createDate = $("<td></td>").append(
							(day.getFullYear()) + "-" + 
				            (day.getMonth() + 1) + "-" +
				            (day.getDate()) + " " + 
				            (day.getHours()) + ":" + 
				            (day.getMinutes()) + ":" + 
				            (day.getSeconds())); 
				var archivekey = $("<td></td>").append(item.archivekey);
				var authzstate = $("<td></td>").append(item.authzstate);
				var advertsstate = $("<td></td>").append(item.advertsstate);
				var editbtn = $("<button></button>").addClass(
						"btn btn-primary btn-sm edit_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-pencil")).append("编辑");
				editbtn.attr("edit-id", item.archivenumber);
				var btntd = $("<td></td>").append(editbtn);
				$("<tr align=\"center\"></tr>").append(basicNumberTd).append(animalSpeciesTd).append(
						animalDescriptionTd).append(animalSexTd).append(animalWeightTd).append(createDate).
						append(archivekey).append(authzstate).append(advertsstate).
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
	//这个代码用于显示修改弹出的修改模态框

	//新版本jquery使用，给按钮绑定修改事件
	$(document).on("click", ".edit_btn", function() {
			//查出动物信息
			getAnimalArchiveInfo($(this).attr("edit-id"));
			getAnimalArchive($(this).attr("edit-id"));
			//重置所有的模态框的表单（出错/正确）信息
			reset_form("#empUpdateModal");
			//弹出模态框
			$("#empUpdateModal").modal({
				backdrop : "static"
			});
	});
	
	//ajax获取后台动物表的信息，进行相应位置的添加
	function getAnimalArchiveInfo(id) {
			$.ajax({
				url : "${root_path}initial/animalarchive/querybase/" + id,
				type : "GET",
				success : function(result) {
					var empData = result.extend.emp;
					$("#animalId_update_static").text("动物ID："+ empData.basicnumber);
					$("#animalSpecies_update_static").text("动物品种："+empData.animalspecies);
					$("#animalDescription_update_static").text("基本描述："+empData.animaldescription);
					$("#animalGender_update_static").text("性别："+empData.animalsex);
						
				}
			})
		}
	var universe_eartagnumber;
	//ajax获取后台动物档案的信息，进行相应位置的添加
	function getAnimalArchive(id) {
			$.ajax({
				url : "${root_path}initial/animalarchive/queryarchive/" + id,
				type : "GET",
				success : function(result) {
					console.log(result);
					var empData = result.extend.emp;
					universe_eartagnumber = empData.archivenumber;
					$("#archiveId_update_static").text("档案编号："+ empData.archivenumber);
					$("#Eartag_update_static").text("耳标编号："+ empData.eartagnumber);
					$("#InitDate_update_static").text("建档日期："+result.extend.date);
					$("#RespondPeople_update_static").text("负责人编号："+empData.responsiblepeople);
					
					$("#KeyWord_update_static").text("关键字："+empData.archivekey);
					$("#ArchiveDescription_update_static").text("档案描述："+empData.archivedescription);				
					
					$("#earRingNo_update_input").val("");
					$("#reason_update_input").val("");	
				}
			})
		}
		
	//重置所有表单的样式
		function reset_form(ele) {
			$(ele).find(".form-control").removeClass("is-invalid is-valid");
			$(ele).find(".invalid-feedback").text("");
		}
</script>
<script type="text/javascript">
		//合法性检验的输出
		function show_validate_msg(ele, status, msg) {
			$(ele).removeClass("is-invalid is-valid");
			$(ele).next("div").text("");
			if ("success" == status) {
				$(ele).addClass("is-valid");
				$(ele).next("div").text("");
			} 
			else if ("error" == status) {
				$(ele).addClass("is-invalid");
				$(ele).next("div").text(msg);
			}
		}
		
		//耳标编号输入框的校验
		function earRingNo_update_input_test(){
			var earRingNo = $("#earRingNo_update_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(earRingNo)) {
				show_validate_msg("#earRingNo_update_input", "error", "请输入数字");
				return 0;
			}
			var earRingNoint = parseInt(earRingNo);
			 if (earRingNoint<=0) {
				show_validate_msg("#earRingNo_update_input", "error", "请输入正确的耳标编号");
				return 0;
			} 
			else {
				show_validate_msg("#earRingNo_update_input", "success", "");
				return 1;
			}
		}
		
		//耳标编号输入框改变，触发校验事件
		$("#earRingNo_update_input").change(function() {
			earRingNo_update_input_test();
		});
</script>
<script type="text/javascript">
		//点击更新耳标编号  
		$("#emp_update_btn").click(function() {
			var flag = earRingNo_update_input_test();
			//如果格式错误，则直接返回
			if(flag==0)return;
			var earRingNo = $("#earRingNo_update_input").val();
			//alert(earRingNo);
			//alert(universe_eartagnumber);
			//保存员工数据
			$.ajax({
				url : "${root_path}initial/animalarchive/updateEartag",
				type : "POST",
				data : "archiveNumber=" + universe_eartagnumber + "&eartagNumber=" + earRingNo,
				success : function(result) {
					if (result.code == 100) {
						//关闭模态框
						//alert(result.msg);
						$("#empUpdateModal").modal("hide");
						//回到本页面
						update_last();
						to_page(currentPage);
					} else {
						alert("更新失败,同一耳标不可以配置给多个动物");
						reset_input("#earRingNo_update_input")
						$("#earRingNo_update_input").val("");
					}
				},
				error : function(result) {
					alert("Encounter fatal error!");
				}
			});
		});
		//重置所有输入框的样式
		function reset_input(ele) {
			$(ele).removeClass("is-invalid is-valid");
		}
</script>

