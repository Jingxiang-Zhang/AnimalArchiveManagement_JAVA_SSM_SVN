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
						<!-- 
						<div class="form-group">
							<label for="inputGender" name="gender"
								class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input type="radio"
									name="gender" id="gender1_update_input" value="公"> 公
								</label> <label class="radio-inline"> <input type="radio"
									name="gender" id="gender2_update_input" value="母"> 母
								</label>
							</div>
						</div>
						-->
						<!-- 显示可被修改的输入框 -->
						<div class="form-group">
							<label for="inputWeight" class="col-sm-2 control-label">体重</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="weight_update_input"> 
								<!-- 用于出错后的提示信息显示 -->
								<div class="invalid-feedback" id="weight_update_input_feedback"></div>
							</div>
						</div>
						<div class="form-group">
							<label for="inputLength" class="col-sm-2 control-label">体长</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="length_update_input"> 
								<div class="invalid-feedback" id="length_update_input_feedback"></div>
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
	document.title = "动物档案修改";
	//这个代码的作用是，展开你打开的标签，其余标签折叠
	$("#side-menu").children("li").each(function(i){
		//所有不等于你的列（2）的标签都关闭
		if(i!=2){
			$(this).removeClass("active");
		}
		else{
		//等于你的列（2）的标签打开
			$(this).addClass("active");
			//找到你的标签下的子标签
			$(this).children("ul").children("li").each(function(j){
				//第1个子标签就用0，这里放上你想要的位置编号，添加高亮显示
				if(j!=0){
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
		"<h2>动物档案表</h2>"+
		"<ol class=\"breadcrumb\">"+
            "<li class=\"breadcrumb-item\">"+
            	"<a href=\"${root_path}add/AddExperimentRecord\">实验动物档案管理系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item\">"+
            	"<a herf=\"#\">档案修改子系统</a>"+
            "</li>"+
            "<li class=\"breadcrumb-item active\">"+
                "<strong>动物档案修改</strong>"+
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
							"<th>品种</th>"+
							"<th>描述</th>"+
							"<th>性别</th>"+
							"<th>体重(/kg)</th>"+
							"<th>体长(/cm)</th>"+
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
		if("${user_authzbas}"!="1"){
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
		url : "${root_path}update/animal_archive/query",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				//console.log(result);
				//1. 解析JSON 显示动物数据
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
				//alert(item.empName);
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'></input></td>");
				var basicNumberTd = $("<td></td>").append(item.basicnumber);
				var animalSpeciesTd = $("<td></td>").append(item.animalspecies);
				var animalDescriptionTd = $("<td></td>").append(item.animaldescription);
				var animalSexTd = $("<td></td>").append(item.animalsex);
				var animalWeightTd = $("<td></td>").append(item.animalweight);
				var animalLenghTd = $("<td></td>")
						.append(item.animallengh);

				var editbtn = $("<button></button>").addClass(
						"btn btn-primary btn-sm edit_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-pencil")).append("编辑");
				editbtn.attr("edit-id", item.basicnumber);
				var delbtn = $("<button></button>").addClass(
						"btn btn-danger btn-sm delete_btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-remove")).append("删除");
				delbtn.attr("delete-id", item.basicnumber);
				var btntd = $("<td></td>").append(editbtn).append(" ").append(
						delbtn)
				$("<tr></tr>").append(checkBoxTd).append(basicNumberTd).append(animalSpeciesTd).append(
						animalDescriptionTd).append(animalSexTd).append(animalWeightTd).append(animalLenghTd).
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
			getAnimalBasicInfo($(this).attr("edit-id"));
			getAnimalArchive($(this).attr("edit-id"));
			//把动物的ID传递给更新按钮
			$("#emp_update_btn").attr("edit-id", $(this).attr("edit-id"));
			//重置所有的模态框的表单（出错/正确）信息
			reset_form("#empUpdateModal");
			//弹出模态框
			$("#empUpdateModal").modal({
				backdrop : "static"
			});
	});
	
	//ajax获取后台动物表的信息，进行相应位置的添加
	function getAnimalBasicInfo(id) {
			$.ajax({
				url : "${root_path}update/animal_archive/querybase/" + id,
				type : "GET",
				success : function(result) {
					var empData = result.extend.emp;
					$("#animalId_update_static").text("动物id："+ empData.basicnumber);
					$("#animalSpecies_update_static").text("动物品种："+empData.animalspecies);
					$("#animalDescription_update_static").text("基本描述："+empData.animaldescription);
					$("#animalGender_update_static").text("性别："+empData.animalsex);
					
					$("#weight_update_input").val(empData.animalweight);
					$("#length_update_input").val(empData.animallengh);			
					//$("#empUpdateModal input[name=gender]").val(
						//	[ empData.animalsex ]);
				}
			})
		}
	
	//ajax获取后台动物档案的信息，进行相应位置的添加
	function getAnimalArchive(id) {
			$.ajax({
				url : "${root_path}update/animal_archive/queryarchive/" + id,
				type : "GET",
				success : function(result) {
					console.log(result);
					var empData = result.extend.emp;
					
					$("#Eartag_update_static").text("耳标编号："+ empData.eartagnumber);
					$("#InitDate_update_static").text("建档日期："+result.extend.date);
					$("#RespondPeople_update_static").text("负责人编号："+empData.responsiblepeople);
					
					$("#KeyWord_update_static").text("关键字："+empData.archivekey);
					$("#ArchiveDescription_update_static").text("档案描述："+empData.archivedescription);				
				}
			})
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
		
		//重置所有表单的样式
		function reset_form(ele) {
			$(ele).find(".form-control").removeClass("is-invalid is-valid");
			$(ele).find(".invalid-feedback").text("");
		}
		
		//动物体重输入框的校验
		function weight_update_input_test(){
			var weight = $("#weight_update_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(weight)) {
				show_validate_msg("#weight_update_input", "error", "请输入数字");
				return 0;
			}
			var weightfloat = parseFloat(weight);
			 if (weightfloat<=5 || weightfloat>=200) {
				show_validate_msg("#weight_update_input", "error", "动物体重大于5kg且小于200kg");
				return 0;
			} 
			else {
				show_validate_msg("#weight_update_input", "success", "");
				return 1;
			}
		}
		
		//动物体长输入框的校验
		function length_update_input_test(){
			var length = $("#length_update_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(length)) {
				show_validate_msg("#length_update_input", "error", "请输入数字");
				return 0;
			}
			var lengthfloat = parseFloat(length);
			if (lengthfloat<=10 || lengthfloat>=300) {
				show_validate_msg("#length_update_input", "error", "动物体长大于10cm且小于300cm");
				return 0;
			} 
			else {
				show_validate_msg("#length_update_input", "success", "");
				return 1;
			}
		}
		
		//动物体重输入框改变，触发校验事件
		$("#weight_update_input").change(function() {
			weight_update_input_test();
		});
		
		//动物体长输入框改变，触发校验事件
		$("#length_update_input").change(function() {
			length_update_input_test();
		});
		
		
</script>


<script type="text/javascript">
		//点击更新档案修改信息  
		$("#emp_update_btn").click(function() {
			if("${user_authzbas}"!="1"){
				alert("您所在的用户组没有权限");
				return;
			}
			var flag_weight = weight_update_input_test();
			var flag_length = length_update_input_test();
			//如果错误，则直接返回
			if(flag_weight==0 || flag_length==0)
			{	
				return;
			}
			var weight = $("#weight_update_input").val();
			var length = $("#length_update_input").val();
			//保存员工数据
			$.ajax({
				url : "${root_path}update/animal_archive/update/" + $(this).attr("edit-id"),
				type : "PUT",
				data : "basicnumber=" + $(this).attr("edit-id") + 
						"&animalweight=" + weight + 
						"&animallengh=" + length,
				success : function(result) {
					if (result.code == 100) {
						//保存成功
						//alert(result.msg);
						//关闭模态框
						$("#empUpdateModal").modal("hide");
						//alert(result.msg);
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
				$("#del_info_text").text("您要进行删除的动物档案ID为："+delName);
				$("#del_modal").modal({
					backdrop : "static"
				});
				$("#confirm_del_btn").attr("delname",delName);	
			}
		});
		
		$("#confirm_del_btn").click(function(){
			if("${user_authzbas}"!="1"){
				alert("您所在的用户组没有权限");
				return;
			}			
			//确定，发送删除请求
			$.ajax({
				url:"${root_path}update/animal_archive/update/" + $(this).attr("delname"),
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
			
			$("#del_info_text").text("您要进行删除的动物档案ID为："+empNames);
			$("#del_modal").modal({
				backdrop : "static"
			});
			$("#confirm_del_btn").attr("delname",del_idstr);	
			
		});

</script>

