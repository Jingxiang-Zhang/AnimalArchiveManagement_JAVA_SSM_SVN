<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/内部系统模板.jsp" flush="true" />
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- dynamic show -->
<style type="text/css">
	body {
	margin:0px auto;
	}
	#fixedLayer {
	position:fixed;
	left: 1200px;
	top: 220px;
	width:600px;
	}
</style>

<script type="text/javascript">
	document.title="动物档案管理系统 /档案初始化子系统"
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
                "<strong>动物档案初始化</strong>"+
            "</li>"+
        "</ol>"+
	"</div>"+
	"<div class=\"ibox-content m-b-sm \">"+
	"<div class=\"ibox-content m-b-sm \">"+
		"<form class=\"m-t\" role=\"form\" id=\"initInfoSet\" name=\"initInfoSet\">"+
    	"<!-- 初始建档员 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputInitialPeople\" class=\"col-sm-6 control-label\">初始建档员</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"InitialPeople_add_input\" name=\"InitialPeople\" placeholder=\"请输入初始建档员的UID\"> "+
		"		</div></div><span class=\"help-block\"></span>"+
		"<!-- 负责人 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputResponsiblePeople\" class=\"col-sm-6 control-label\">审核负责人</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"ResponsiblePeople_add_input\" name=\"ResponsiblePeople\" placeholder=\"请输入负责人的UID\">"+
		"		</div></div><span class=\"help-block\"></span>"+
		"<!-- 所属PI -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputBelongPeople\" class=\"col-sm-6 control-label\">所属PI</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"BelongPeople_add_input\" name=\"BelongPeople\" placeholder=\"请输入PI的UID\">"+
		"		</div></div><span class=\"help-block\"></span>"+
		"<!-- 档案简述 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputArchiveDescription\" class=\"col-sm-6 control-label\">档案简述</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<textarea type=\"text\" class=\"form-control\" rows=\"3\" id=\"ArchiveDescription_add_input\" name=\"ArchiveDescription\" placeholder=\"请简要描述该档案\"></textarea>"+
		"		<span class=\"help-block\"></span></div></div>"+
		"<!-- 档案关键字 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputArchiveKey\" class=\"col-sm-6 control-label\">档案关键字</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"ArchiveKey_add_input\" name=\"ArchiveKey\" placeholder=\"请填写档案关键字\">"+
		"		<span class=\"help-block\"></span></div></div>"+
		"<!-- 耳标编号 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputEarRingNo\" class=\"col-sm-6 control-label\">耳标编号</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"EarRingNo_add_input\" name=\"EarRingNo\" placeholder=\"请输入耳标编号\">"+
		"		</div></div><span class=\"help-block\"></span>"+
		"<!-- 初始化按钮 -->"+
		"<br><button type=\"button\" class=\"btn btn-warning col-sm-3\" id = \"InitialCheck1\">初始化</button> "+
		"<!-- 基本信息自动生成按钮 -->"+
		"<button type=\"button\" class=\"btn btn-info col-sm-3\" id = \"AutoInit\">耳标读取基本信息</button><br><br>"+
		"<!-- 动物体重 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputAnimalWeight\" class=\"col-sm-6 control-label\">动物体重（单位：kg）</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"AnimalWeight_add_input\" name=\"AnimalWeight\" placeholder=\"请输入动物体重\">"+
		"		</div></div><span class=\"help-block\"></span>"+
		"<!-- 动物体长 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputAnimalLength\" class=\"col-sm-6 control-label\">动物体长（单位：cm）</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"AnimalLength_add_input\" name=\"AnimalLength\" placeholder=\"请输入动物体长\">"+
		"		</div></div><span class=\"help-block\"></span>"+
		"<!-- 动物血型 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputAnimalBloodType\" class=\"col-sm-6 control-label\">动物血型（例：A、B、C、O等）</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<select class=\"form-control\" name=\"AnimalBloodType\" id=\"AnimalBloodType_add_input\" >"+
		"			<option value=\"0\">A</option>"+
		"			<option value=\"1\">B</option>"+
		"			<option value=\"2\">C</option>"+
		"			<option value=\"3\">O</option>"+
		"		</select></div></div>"+
		"<!-- 动物来源 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputAnimalOrigin\" class=\"col-sm-6 control-label\">动物来源（例：动物房繁殖幼崽等）</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"AnimalOrigin_add_input\" name=\"AnimalOrigin\" placeholder=\"请输入动物来源\">"+
		"		<span class=\"help-block\"></span></div></div>"+
		"<!-- 动物描述 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputAnimalDescription\" class=\"col-sm-6 control-label\">动物描述（例：八眉猪等）</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<input type=\"text\" class=\"form-control\" id=\"AnimalDescription_add_input\" name=\"AnimalDescription\" placeholder=\"请输入动物描述\">"+
		"		<span class=\"help-block\"></span></div></div>"+
		"<!-- 动物种类 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputAnimalSpecies\" class=\"col-sm-6 control-label\">动物种类（例：羊、牛、猪等）</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<select class=\"form-control\" name=\"AnimalSpecies\" id=\"AnimalSpecies_add_input\" >"+
		"			<option value=\"0\">猪</option>"+
		"			<option value=\"1\">牛</option>"+
		"			<option value=\"2\">羊</option>"+
		"			<option value=\"3\">鼠</option>"+
		"		</select></div></div>"+
		"<!-- 动物性别 -->"+
		"<div class=\"form-group\">"+
		"	<label for=\"inputAnimalSex\" class=\"col-sm-6 control-label\">动物性别</label>"+
		"	<div class=\"col-sm-6\">"+
		"		<select class=\"form-control\" name=\"AnimalSexSelect\" id=\"AnimalSex_add_area\" >"+
		"			<option value=\"1\">公</option>"+
		"			<option value=\"0\">母</option>"+
		"		</select></div></div>"+
		"<!-- 初始化按钮 -->"+
		"<br><button type=\"button\" class=\"btn btn-warning col-sm-3\" id = \"InitialCheck2\">初始化</button> "+
		"<!-- 初始化确认按钮 -->"+
		"<button type=\"button\" class=\"btn btn-primary col-sm-3\" id = \"InitialConfirm\">提交</button>"+
	"</form>"+
	"</div>"+
	"<div id=\"fixedLayer\">"+
		"<div>已填档案基本信息</div>"+
		"<table align=\"center\" class=\"table table-hover table-bordered\" id=\"emps_table\">"+
			"<thead>"+
				"<tr align=\"center\">"+
					"<th>初始建档员</th>"+
					"<th>审核负责人</th>"+
					"<th>所属PI</th>"+
					"<th>耳标编号</th>"+
					"<th>档案授权</th>"+
					"<th>档案推广</th>"+
				"</tr>"+
			"</thead>"+
			"<tbody>"+
				"<tr align=\"center\">"+
					"<td id = \"INITuid\"> </td>"+
					"<td id = \"RESuid\"> </td>"+
					"<td id = \"PIuid\"> </td>"+
					"<td id = \"EARtag\"> </td>"+
					"<td id = \"ARCauth\">未处理</td>"+
					"<td id = \"ARCadver\">未处理</td>"+
				"</tr>"+
			"</tbody>"+
		"</table>"+
		"<table align=\"center\" class=\"table table-hover table-bordered\" id=\"emps_table\">"+
			"<thead>"+
				"<tr align=\"center\">"+
					"<th>档案关键字</th>"+
					"<th>档案简述</th>"+
				"</tr>"+
			"</thead>"+
			"<tbody>"+
				"<tr align=\"center\">"+
					"<td id = \"ARCkey\">待输入</td>"+
					"<td id = \"ARCdes\">待输入</td>"+
				"</tr>"+
			"</tbody>"+
		"</table>"+
		"<div>已填动物基本信息</div>"+
		"<table align=\"center\" class=\"table table-hover table-bordered\" id=\"emps_table\">"+
			"<thead>"+
				"<tr align=\"center\">"+
					"<th>动物体重</th>"+
					"<th>动物体长</th>"+
					"<th>动物血型</th>"+
					"<th>动物种类</th>"+
					"<th>动物性别</th>"+
				"</tr>"+
			"</thead>"+
			"<tbody>"+
				"<tr align=\"center\">"+
					"<td id = \"ANIwei\"></td>"+
					"<td id = \"ANIlen\"></td>"+
					"<td id = \"ANIblo\">A</td>"+
					"<td id = \"ANIspe\">猪</td>"+
					"<td id = \"ANIsex\">公</td>"+
				"</tr>"+
			"</tbody>"+
		"</table>"+
		"<table align=\"center\" class=\"table table-hover table-bordered\" id=\"emps_table\">"+
			"<thead>"+
				"<tr align=\"center\">"+
					"<th>动物来源</th>"+
					"<th>动物描述</th>"+
				"</tr>"+
			"</thead>"+
			"<tbody>"+
				"<tr align=\"center\">"+
					"<td id = \"ANIori\">待输入</td>"+
					"<td id = \"ANIdes\">待输入</td>"+
				"</tr>"+
			"</tbody>"+
		"</table>"+
		"</div>"+
	"</div>";
	// 判断当前用户身份，若不为建档部人员则无法使用该功能
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
                "<strong>动物档案初始化</strong>"+
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
	// 基本信息自动生成按钮点击事件
	
	$("#AutoInit").click(
			function() {
				if($("#EarRingNo_add_input").val()==""){
					alert("尚未配置耳标");
					return;
				}
				if(earring_update_input_test()==0){
					alert("请输入正确的耳标编号");
					return;
				}
				else{
					var earFlag = false;
					$.ajax({
						url : 	"${APP_PATH}/initial/checkEarRing",
						type :  "POST",
						data : 	"eartagnumber=" + $("#EarRingNo_add_input").val(),
						async:  false, 
						success : function(result) {
							if(result.code!=100){
								alert(result.msg); 
								reset_input("#EarRingNo_add_input");
								$("#EARtag").text("");
								$("#EarRingNo_add_input").val("");
								earFlag = true;
							}
							else earFlag = false;
						},
						error : function(result){
							alert("ajax请求失败，请查看服务器情况")
						}
					});								
					if(earFlag)return;
				}
				
				$("#AnimalWeight_add_input").val("450");
				$("#AnimalLength_add_input").val("100");
				$("#AnimalBloodType_add_input").val("1");
				$("#AnimalOrigin_add_input").val("畜牧场购买");
				$("#AnimalDescription_add_input").val("八眉猪");
				$("#AnimalSpecies_add_input").val("1");
				$("#AnimalSex_add_area").val("1");
				
				$("#ANIlen").text($("#AnimalLength_add_input").val());
				$("#ANIwei").text($("#AnimalWeight_add_input").val());
				$("#ANIblo").text($("#AnimalBloodType_add_input").find("option:selected").text());
				$("#ANIori").text($("#AnimalOrigin_add_input").val());
				$("#ANIdes").text($("#AnimalDescription_add_input").val());
				$("#ANIspe").text($("#AnimalSpecies_add_input").find("option:selected").text());
				$("#ANIsex").text($("#AnimalSex_add_area").find("option:selected").text());
			});
	// 提交按钮点击事件
	$("#InitialConfirm").click(
			function() {
				//发送ajax校验用户名是否可用
				var initialPeople 		= $("#InitialPeople_add_input").val();
				var responsiblePeople 	= $("#ResponsiblePeople_add_input").val();
				var belongPeople 		= $("#BelongPeople_add_input").val();
				var archiveDescription 	= $("#ArchiveDescription_add_input").val();
				var archiveKey 			= $("#ArchiveKey_add_input").val();
				//基本信息
				var animalWeight 		= $("#AnimalWeight_add_input").val();
				var animalLength 		= $("#AnimalLength_add_input").val();
				var animalBloodType 	= $("#AnimalBloodType_add_input").val();
				var animalOrigin 		= $("#AnimalOrigin_add_input").val();
				var animalDescription 	= $("#AnimalDescription_add_input").val();
				var animalSpecies 		= $("#AnimalSpecies_add_input").val();
				var animalSex 			= $("#AnimalSex_add_area").val();
				var initInfo = $("#initInfoSet").serialize();
				if(checkInput() == false)return false;
				$.ajax({
					url : 	"${APP_PATH}/initial/finishInitial",
					type :  "POST",
					data : 	initInfo,
					success : function(result) {
						alert(result.msg);
						if(result.code==100){
							window.location = "${APP_PATH}/initial/addEarRing";
						}
						
					},
					error : function(result){
						alert("ajax请求失败，请查看服务器情况")
					}
				});
			});
	//初始化1按钮点击事件
	$("#InitialCheck1").click(
			function() {
				$("#InitialPeople_add_input").val("");
				$("#ResponsiblePeople_add_input").val("");
				$("#BelongPeople_add_input").val("");
				$("#ArchiveDescription_add_input").val("");
				$("#ArchiveKey_add_input").val("");
				$("#EarRingNo_add_input").val("");
				reset_input("#EarRingNo_add_input");
				reset_input("#InitialPeople_add_input");
				reset_input("#ResponsiblePeople_add_input");
				reset_input("#BelongPeople_add_input");
				reset_input("#EarRingNo_add_input");
				$("#INITuid").text($("#InitialPeople_add_input").val());
				$("#RESuid").text($("#ResponsiblePeople_add_input").val());
				$("#PIuid").text($("#BelongPeople_add_input").val());
				$("#ARCdes").text("待输入");
				$("#ARCkey").text("待输入");
				$("#EARtag").text($("#EarRingNo_add_input").val());
				
			});
	//初始化2按钮点击事件
	$("#InitialCheck2").click(
			function() {
				$("#AnimalWeight_add_input").val("");
				$("#AnimalLength_add_input").val("");
				$("#AnimalBloodType_add_input").val("0");
				$("#AnimalOrigin_add_input").val("");
				$("#AnimalDescription_add_input").val("");
				$("#AnimalSpecies_add_input").val("0");
				$("#AnimalSex_add_area").val("0");
				reset_input("#AnimalWeight_add_input");
				reset_input("#AnimalLength_add_input");
				
				$("#ANIlen").text($("#AnimalLength_add_input").val());
				$("#ANIwei").text($("#AnimalWeight_add_input").val());
				$("#ANIblo").text($("#AnimalBloodType_add_input").find("option:selected").text());
				$("#ANIori").text("待输入");
				$("#ANIdes").text("待输入");
				$("#ANIspe").text($("#AnimalSpecies_add_input").find("option:selected").text());
				$("#ANIsex").text($("#AnimalSex_add_area").find("option:selected").text());
				});
</script>
<script type="text/javascript">
	function checkInput(){
	//var item=document.getElementById(myitem).value;
	if($("#InitialPeople_add_input").val()=="" || 
		$("#ResponsiblePeople_add_input").val()=="" ||
		$("#BelongPeople_add_input").val()=="" ||
		$("#ArchiveDescription_add_input").val()=="" ||
		$("#ArchiveKey_add_input").val()==""){
		alert("请确认每个必填项目都已经正确填写!");
		return false;
		}
		return true;
	}
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
		//重置所有输入框的样式
		function reset_input(ele) {
			$(ele).removeClass("is-invalid is-valid");
		}
		//重置所有表单的样式
		function reset_form(ele) {
			$(ele).find(".form-control").removeClass("is-invalid is-valid");
			$(ele).find(".invalid-feedback").text("");
		}
		
		//耳标编号输入框的校验
		function earring_update_input_test(){
			var UID = $("#EarRingNo_add_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(UID)) {
				show_validate_msg("#EarRingNo_add_input", "error", "请输入数字");
				return 0;
			}
			var UIDint = parseFloat(UID);
			 if (UIDint<=0) {
				show_validate_msg("#EarRingNo_add_input", "error", "请输入正确的UID");
				return 0;
			} 
			else {
				show_validate_msg("#EarRingNo_add_input", "success", "");
				return 1;
			}
		}
		
		//初始建档员输入框的校验
		function initial_update_input_test(){
			var UID = $("#InitialPeople_add_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(UID)) {
				show_validate_msg("#InitialPeople_add_input", "error", "请输入数字");
				return 0;
			}
			var UIDint = parseFloat(UID);
			 if (UIDint<=0) {
				show_validate_msg("#InitialPeople_add_input", "error", "请输入正确的UID");
				return 0;
			} 
			else {
				show_validate_msg("#InitialPeople_add_input", "success", "");
				return 1;
			}
		}
		
		//审核负责人输入框的校验
		function responsible_update_input_test(){
			var UID = $("#ResponsiblePeople_add_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(UID)) {
				show_validate_msg("#ResponsiblePeople_add_input", "error", "请输入数字");
				return 0;
			}
			var UIDint = parseFloat(UID);
			 if (UIDint<=0) {
				show_validate_msg("#ResponsiblePeople_add_input", "error", "请输入正确的UID");
				return 0;
			} 
			else {
				show_validate_msg("#ResponsiblePeople_add_input", "success", "");
				return 1;
			}
		}
		
		//所属PI输入框的校验
		function PI_update_input_test(){
			var PIUID = $("#BelongPeople_add_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(PIUID)) {
				show_validate_msg("#BelongPeople_add_input", "error", "请输入正确的UID");
				return 0;
			}
			var PIUIDint = parseFloat(PIUID);
			if (PIUIDint<=0) {
				show_validate_msg("#BelongPeople_add_input", "error", "请输入正确的UID");
				return 0;
			} 
			else {
				show_validate_msg("#BelongPeople_add_input", "success", "");
				return 1;
			}
		}
		
		//动物体重输入框的校验
		function weight_update_input_test(){
			var weight = $("#AnimalWeight_add_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(weight)) {
				show_validate_msg("#AnimalWeight_add_input", "error", "请输入数字");
				return 0;
			}
			var weightfloat = parseFloat(weight);
			 if (weightfloat<=0) {
				show_validate_msg("#AnimalWeight_add_input", "error", "动物体重大于100kg且小于1000kg");
				return 0;
			} 
			else {
				show_validate_msg("#AnimalWeight_add_input", "success", "");
				return 1;
			}
		}
		
		//动物体长输入框的校验
		function length_update_input_test(){
			var length = $("#AnimalLength_add_input").val();
			var number = /^(\-|\+)?\d+(\.\d+)?$/;
			if (!number.test(length)) {
				show_validate_msg("#AnimalLength_add_input", "error", "请输入数字");
				return 0;
			}
			var lengthfloat = parseFloat(length);
			if (lengthfloat<=0) {
				show_validate_msg("#AnimalLength_add_input", "error", "动物体长大于10cm且小于300cm");
				return 0;
			} 
			else {
				show_validate_msg("#AnimalLength_add_input", "success", "");
				return 1;
			}
		}
		
		//耳标编号输入框改变，触发校验事件
		$("#EarRingNo_add_input").change(function() {
			if(earring_update_input_test()==1){
				$("#EARtag").text($("#EarRingNo_add_input").val());
			}
			if($("#EarRingNo_add_input").val()==""){
				$("#InitialCheck2").click();
			}
		});
		
		//初始建档员输入框改变，触发校验事件
		$("#InitialPeople_add_input").change(function() {
			if(initial_update_input_test()==1){
				$("#INITuid").text($("#InitialPeople_add_input").val());
			}
			
		});
		
		//审核负责人输入框改变，触发校验事件
		$("#ResponsiblePeople_add_input").change(function() {
			if(responsible_update_input_test()==1){
				$("#RESuid").text($("#ResponsiblePeople_add_input").val());
			}
		});
		
		//所属PI输入框改变，触发校验事件
		$("#BelongPeople_add_input").change(function() {
			if(PI_update_input_test()==1){
				$("#PIuid").text($("#BelongPeople_add_input").val());
			}
		});
		
		//动物体重输入框改变，触发校验事件
		$("#AnimalWeight_add_input").change(function() {
			if(weight_update_input_test()==1){
				$("#ANIwei").text($("#AnimalWeight_add_input").val());
			}
		});
		
		//动物体长输入框改变，触发校验事件
		$("#AnimalLength_add_input").change(function() {
			if(length_update_input_test()==1){
				$("#ANIlen").text($("#AnimalLength_add_input").val());
			}
		});

		
		$("#AnimalBloodType_add_input").change(function() {
			$("#ANIblo").text($("#AnimalBloodType_add_input").find("option:selected").text());
		});
		$("#AnimalOrigin_add_input").change(function() {
				$("#ANIori").text($("#AnimalOrigin_add_input").val());
		});
		$("#AnimalDescription_add_input").change(function() {
				$("#ANIdes").text($("#AnimalDescription_add_input").val());
		});
		$("#AnimalSpecies_add_input").change(function() {
			$("#ANIspe").text($("#AnimalSpecies_add_input").find("option:selected").text());
		});
		$("#AnimalSex_add_area").change(function() {
			$("#ANIsex").text($("#AnimalSex_add_area").find("option:selected").text());
		});
		$("#ArchiveDescription_add_input").change(function() {
			$("#ARCdes").text($("#ArchiveDescription_add_input").val());
		});
		$("#ArchiveKey_add_input").change(function() {
			$("#ARCkey").text($("#ArchiveKey_add_input").val());
		});
</script>

