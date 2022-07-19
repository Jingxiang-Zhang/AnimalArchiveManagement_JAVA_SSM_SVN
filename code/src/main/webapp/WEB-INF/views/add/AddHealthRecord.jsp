<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
*
*  INSPINIA - Responsive Admin Theme
*  version 2.9.3
*
-->
<!-- 这段jsp用于获取网页根目录，用静态方式进行寻址，否则容易出现错误 -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("root_path", basePath);
%>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<title>添加健康记录</title>
	<link rel="icon" href="${root_path}static/archive.ico" sizes="16x16">

	<!-- 最新的 Bootstrap 核心 CSS文件 -->
	<link href="${root_path}static/add/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- 主题界面的CSS文件 -->
	<link href="${root_path}static/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/animate.css" rel="stylesheet">
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/style.css" rel="stylesheet">
	
	<!-- 登录界面CSS -->
	<link href="${root_path}static/bootstrap-3.3.7-dist/loading/loading.css" rel="stylesheet" />
	
	<!-- JQuery -->
	<script type="text/javascript" src="${root_path}static/js/jquery-1.11.0.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript文件 -->
	<script type="text/javascript" src="${root_path}static/add/js/bootstrap.min.js"></script>
	
	<!-- 主题界面JavaScript文件 -->
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/popper.min.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/inspinia.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/pace/pace.min.js"></script>	
</head>


<body>
	<div id="wrapper">
		<!-- 左边的导航框 -->
		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav metismenu" id="side-menu">
				<!-- 用户的基本信息 -->
				<li class="nav-header">
					<div class="dropdown profile-element">
						<img alt="image" class="img-circle center-block"
							src="${root_path}static/bootstrap-3.3.7-dist/img/profile_small.jpg" />
						<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <br />
							<span class="block m-t-xs font-bold text-center"
							id="welcome_user"> 欢迎你， </span> <span
							class="block m-t-xs font-bold text-center" id="welcome_user_dept">
						</span>
						</a>
					</div>
					<div class="logo-element">G9</div>
				</li>
				<!-- 档案添加子系统 -->
				<li class="active"><a href="index.html"> <i
						class="glyphicon glyphicon-plus"></i> <span class="nav-label">档案添加</span>
						<span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level">
						<li><a href="${root_path}add/AddExperimentRecord">动物实验记录添加</a></li>
						<li><a href="${root_path}add/AddFeedRecord">动物饲养记录添加</a></li>
						<li><a href="${root_path}add/AddBreedRecord">动物繁殖记录添加</a></li>
						<li class="active"><a href="${root_path}add/AddHealthRecord">动物健康记录添加</a>
						</li>
					</ul></li>
				<!-- 档案修改子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-pencil"></i>
						<span class="nav-label">档案修改</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}update/animal_archive">动物档案修改</a></li>
						<li><a href="${root_path}update/experiment_data">动物实验记录修改</a>
						</li>
						<li><a href="${root_path}update/health_record">动物健康记录修改</a></li>
						<li><a href="${root_path}update/Health_record">动物繁殖记录修改</a></li>
						<li><a href="${root_path}update/feed_record">动物饲养记录修改</a></li>

						<li><a href="${root_path}update/log">修改日志</a></li>
						<li><a href="${root_path}update/inspect"> <span
								class="nav-label">删除申请审核</span> <%@page
									import="com.crud.service.ArchiveUpdateService"%>
								<%
									int size = ArchiveUpdateService.archiveUpdateInspect.size();
									if (size != 0) {
								%> <span class="float-right label label-danger"><%=size%></span>
								<%
									}
								%>
						</a></li>
					</ul></li>
				<!-- 档案查询子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-search"></i>
						<span class="nav-label">档案查询</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}search/AnimalArchiveSearch">动物档案查询</a>
						</li>
						<li><a href="${root_path}search/AnimalBasicInfoSearch">动物基本信息查询</a>
						</li>
						<li><a href="${root_path}search/AnimalHealthInfoSearch">动物健康记录查询</a>
						</li>
						<li><a href="${root_path}search/AnimalHealthInfoSearch">动物繁殖记录查询</a>
						</li>
						<li><a href="${root_path}search/AnimalFeedInfoSearch">动物饲养记录查询</a>
						</li>
						<li><a href="${root_path}search/PersonalExpInfoSearch">个人实验信息查询</a>
						</li>
					</ul></li>
				<!-- 档案初始化子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-tag"></i> <span
						class="nav-label">档案初始化</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}initial/initialArchive">初始化动物档案</a></li>
						<li><a href="${root_path}initial/addEarRing">耳标配置</a></li>
					</ul></li>
				<!-- 档案授权管理子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-pawn"></i> <span
						class="nav-label">档案授权管理</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}authz/authz">档案授权</a></li>
						<li><a href="${root_path}authz/remove_authz">取消授权</a></li>
						<li><a href="${root_path}authz/authz_aggrement">授权协议</a></li>
					</ul></li>
				<!-- 档案推广管理子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-globe"></i>
						<span class="nav-label">档案推广管理</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}advert/advert">档案推广</a></li>
						<li><a href="${root_path}advert/remove_advert">取消推广</a></li>
						<li><a href="${root_path}advert/advert_aggrement">推广协议</a></li>
					</ul></li>
				</ul>
			</div>
		</nav>

		<!-- 右侧内容区大容器 -->
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<!-- 最顶上的信息栏 -->
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
				<div class="navbar-header col-lg-4">
					<!-- 隐藏左侧菜单栏 -->
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"> <i class="fa fa-bars"></i>
					</a>
					<!-- 搜索界面 -->
					<form role="search" class="navbar-form-custom"
						action="search_results.html">
						<div class="form-group">
							<input type="text" placeholder="搜索你想要的结果..." class="form-control"
								name="top-search" id="top-search">
						</div>
					</form>
				</div>
				<br>
				<ul class="nav navbar-top-links  col-lg-5 col-lg-offset-3">
					<!-- 欢迎 -->
					<li><span class="m-r-sm text-muted welcome-message">欢迎来到实验动物档案管理系统</span>
					</li>
					<!-- 登出按钮 -->
					<li><button type="button" id="logout_btn" class="btn btn-link">
							<i class="fa fa-sign-out"></i> 登出
						</button></li>
				</ul>
				</nav>
			</div>

			<!-- --------------在此处完成对应的界面设计 ------------------>
			<div class="wrapper wrapper-content animated fadeInRight ecommerce"
				id="cmd">
				<!-- 导航 -->
				<div class="ibox-content m-b-sm border-bottom">
					<h2>实验动物档案表</h2>
					<ol class="breadcrumb" style='font-size:14px'>
						<li class="breadcrumb-item"><a
							href="${root_path}add/AddExperimentRecord">实验动物档案管理系统</a></li>
						<li class="breadcrumb-item"><a
							href="${root_path}add/AddExperimentRecord">添加子系统</a></li>
						<li class="breadcrumb-item active"><strong>动物健康记录添加</strong>
						</li>
					</ol>
				</div>

				<!-- 搜索栏 -->
				<div class="ibox-content m-b-sm border-bottom" id="exp_data_modal"
					style='font-size:14px'>
					<div class="row">
						<div class="col-sm-3">
							<div class="form-group">
								<label class="col-form-label" for="product_name">动物档案编号</label>
								<input type="text" id="animal_achiveID" name="product_name"
									value="" placeholder="动物档案编号" class="form-control"
									style='font-size:14px'>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<label class="col-form-label" for="price">动物种类</label> <input
									type="text" id="animal_kind" name="price" value=""
									placeholder="动物种类" class="form-control" style='font-size:14px'>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<label class="col-form-label" for="quantity">动物描述</label> <input
									type="text" id="animal_description" name="quantity" value=""
									placeholder="动物描述" class="form-control" style='font-size:14px'>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<label class="col-form-label" for="quantity">动物来源</label> <input
									type="text" id="animal_orgi" name="quantity" value=""
									placeholder="动物来源" class="form-control" style='font-size:14px'>
							</div>
						</div>
					</div>
				</div>

				<!-- 表格 -->
				<div class="row" style='font-size:14px'>
					<div class="col-lg-12">
						<div class="ibox">
							<div class="ibox-content">
								<table class="table table-stripped toggle-arrow-tiny"
									id="emps_table">
									<!-- 表头 -->
									<thead>
										<tr>
											<th>动物档案编号</th>
											<th>种类</th>
											<th>描述</th>
											<th>来源</th>
											<th>性别</th>
											<th>血型</th>
											<th>身高/cm</th>
											<th>体重/kg</th>
											<th>操作</th>
										</tr>
									</thead>
									<!-- 数据:通过ajax获得-->
									<tbody>
									</tbody>
								</table>

								<!-- 显示分页信息 ：通过ajax获得-->
								<div class="row">
									<!-- 分页文字信息 -->
									<div class="col-lg-8" style='font-size:14px'
										id="page_info_area"></div>
									<!-- 分页条信息 -->
									<div class="col-lg-4" style='font-size:14px' id="page_nav_area"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 添加信息模态框 -->
			<div class="modal fade" tabindex="-1" role="dialog"
				aria-labelledby="myLargeModalLabel" id="experiment_add_modal"
				style='font-size:14px'>
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<!-- 表单 -->
						<form class="form-horizontal" id="add_form">
							<br />
							<div class="form-group">
								<label style='font-size:14px' class="col-lg-2 control-label">动物档案编号：</label>
								<div class="col-lg-3">
									<input type="text" name="archivenumber" id="experimentnumber"
										style='font-size:14px' class="form-control"
										readonly="readonly">
								</div>
								<label style='font-size:14px'
									class="col-lg-2 col-lg-offset-1 control-label">健康记录表编号：</label>
								<div class="col-lg-3 ">
									<input type="text" name="id" id="ID" style='font-size:14px'
										class="form-control" readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label style='font-size:14px' class="col-lg-2 control-label">健康记录员编号：</label>
								<div class="col-lg-3">
									<input type="text" name="recorder" id="experimenternumber"
										style='font-size:14px' class="form-control"
										readonly="readonly">
								</div>
								<label style='font-size:14px'
									class="col-lg-2 col-lg-offset-1 control-label">体检日期：</label>
								<div class="col-lg-3">
									<input type="text" name="recorddate" id="experimentdate"
										style='font-size:14px' class="form-control"
										placeholder="yyyy-mm-dd">
									<!-- 显示错误信息 -->
									<div class="invalid-feedback" style="color:red" id="date_input_feedback"></div>
								</div>
							</div>
							<div class="form-group">
								<label style='font-size:14px' class="col-lg-2 control-label">健康水平：</label>
								<div class="col-lg-9">
									<textarea class="form-control" name="healthlevel"
										id="experimentlevel" rows="10" style='font-size:14px'
										placeholder="详细描健康水平，在255字以内"></textarea>
									<!-- 显示错误信息 -->
									<div class="invalid-feedback" style="color:red" id="level_input_feedback"></div>
								</div>
							</div>
							<div class="form-group">
								<label style='font-size:14px' class="col-lg-2 control-label">健康描述：</label>
								<div class="col-lg-9">
									<textarea class="form-control" name="healthdescription"
										id="experimentlocation" rows="10" style='font-size:14px'
										placeholder="详细描述体检过程，在255字以内"></textarea>
									<!-- 显示错误信息 -->
									<div class="invalid-feedback" style="color:red" id="location_input_feedback"></div>
								</div>
							</div>
						</form>
						<!-- 按钮 -->
						<div class="modal-footer">
							<button type="button"
								class="btn btn-default col-lg-1 col-lg-offset-8"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary col-lg-2"
								id="submit_btn" data-dismiss="modal">添加到数据库</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 最底下的信息栏：作者和版权信息 -->
			<div class="footer">
				<div class="float-right">
					<strong>Experiment Animal Achieve Management Group</strong> Design.
				</div>
				<div>
					<strong>Copyright</strong> Experiment Animal Achieve Management
					Group &copy; 2020-2021
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 个人信息有关的脚本 -->
	<script type="text/javascript">
		var user_name = "${user_name}";
		var user_dept = "${user_dept}";
		if (user_name == "") {
			user_name = "访客";
		}
		if (user_dept == "") {
			user_dept = "无";
		}
		$(document).ready(function() {
			$("#welcome_user").text("欢迎你，" + user_name);
			$("#welcome_user_dept").text("所属部门：" + user_dept);
		});
	</script>
	
	
	<!-- 这里是登出按钮事件 -->
	<script type="text/javascript">
		$("#logout_btn").click(function() {
			$.ajax({
				url : "${root_path}/userlogout",
				type : "POST",
				success : function(result) {
					window.location = "${root_path}login.jsp";
				}
			})
		});
	</script>
	
	
	<!-- 页面加载完毕后绑定的事件 -->
	<script type="text/javascript">       
		/*页面加载完成后，发送ajax请求，获取分页数据*/
		$(function() {
			//权限判断
			if("${user_dept}" != "动物房" && "${user_dept}" != "所有"){
				alert("您没有权限添加健康记录！");
				$("<h1 class='text-center'>未检索到任何记录，请向管理员核实身份信息和操作权限！</h1>").appendTo("#cmd");
				return false;
			}
			else{
				to_page_input_change("", "", "", "", 1);
			}	
			
			//为四个搜索框分别绑定输入框改变事件
			$("#animal_achiveID,#animal_kind,#animal_description,#animal_orgi").bind('input propertychange', function() { 
				//清空table表格	
				var keyword1 = $("#animal_achiveID").val();
				var keyword2 = $("#animal_kind").val();
				var keyword3 = $("#animal_description").val();
				var keyword4 = $("#animal_orgi").val();
				to_page_input_change(keyword1, keyword2, keyword3, keyword4, 1);
 			})	
 			
 			/*日期输入框绑定前端校验*/
			$("#experimentdate").bind('input propertychange', function() {
				date_validate("#experimentdate");
			}); 
			
			/*日期输入框绑定前端校验*/
			$("#experimentlevel").bind('input propertychange', function() {
				string_validate("#experimentlevel");
			}); 
			
			/*日期输入框绑定前端校验*/
			$("#experimentlocation").bind('input propertychange', function() {
				string_validate("#experimentlocation");
			}); 		
		})
		
		
		/***点击添加按钮，***
			1、为其生成实验记录表编号
			2、从添加按钮的add-id属性中取出动物档案编号
			3、从页面登录用户属性中获取记录员编号
			4、将上述只读属性放入只读框中
			*/
		$(document).on("click", ".add_btn", function() {			
			
			//发送ajax请求，查询实验记录表编号
			var id;
			$.ajax({
				url : "${root_path}/add/AddHealthRecord/HealthID",
				type : "GET",
				success : function(result) {
					id = result.extend.HealthID;
					$("#ID").val(id);
				}
			})
			
			//从添加按钮的add-id属性中取出动物档案编号
			var experimentnumber = $(this).attr("animalID");
			$("#experimentnumber").val(experimentnumber);
			
			//从页面登录用户属性中获取记录员编号
			var experimenternumber = "${user_uid}";
			$("#experimenternumber").val(experimenternumber);		
		});
		
		
		/*点击查看按钮，在新建窗口中打开查询的记录*/
		$(document).on("click", ".look_btn", function() {	
			 window.open("${root_path}/add/LookHealthRecord?animalID="+ $(this).attr("animalID"));  		
		});
		
				
		/***点击“保存至数据库”按钮，将新增的数据信息添加到数据库中***
			1、获取到表格中的值
			2、用ajax请求调用mybatis接口插入到数据库中
		*/
		$("#submit_btn").click(function(){
			
			//前端校验
			if (date_validate("#experimentdate") == 0) {
				return false;
			}
			if (string_validate("#experimentlevel") == 0) {
				return false;
			}
			if (string_validate("#experimentlocation") == 0) {
				return false;
			}
			
			//添加分页点击事件调用函数需要调用的函数
			var keyword1 = $("#animal_achiveID").val();
			var keyword2 = $("#animal_kind").val();
			var keyword3 = $("#animal_description").val();
			var keyword4 = $("#animal_orgi").val();
			
			//发送ajax请求保存数据
			$.ajax({
				url : "${root_path}add/HealthRecord/add",
				type : "POST",
				data : $("#add_form").serialize(),
				success : function(result) {
					if (result.code == 100) {
						//保存成功
						alert("添加成功");
						//回到本页面
						to_page_input_change(keyword1, keyword2, keyword3, keyword4, currentPage);
						//清空表单
						reset_form("#experiment_add_modal");				
					} else {
						alert("添加失败");
					}
				},
				error: function(){
	                alert("添加失败");
	            }
      		 });
		}); 
	</script>
		
		
	<!-- 主要的脚本程序 -->
	<script type="text/javascript"> 	
		/*重新封装to_page函数，根据查询的内容来安关键字检索档案，返回分页数据*/
		function to_page_input_change(keyword1, keyword2, keyword3, keyword4, pn) {
			//清空table表格
			$("#emps_table tbody").empty();		
			
			//用ajax请求查询实验动物档案表
			$.ajax({
				url : "${root_path}/add/AnimalArchive/input_change_query",
				data : "keyword1=" + keyword1 + "&keyword2=" + keyword2 + "&keyword3=" + keyword3 + 
					   "&keyword4=" + keyword4 + "&pn=" + pn,
				type : "GET",
				success : function(result) {
					//1. 解析JSON 显示数据
					build_emps_table(result);
					//2. 显示分页信息
					build_page_info(result);
					//3. 显示分页条
					build_page_nav(result);
				}
			});		
		}
	
	
		/* 为表格中填写数据 */
		function build_emps_table(result) {
			//清空表格数据
			$("#emps_table tbody").empty();	
						
			//从后端拿到数据对象
			var emps = result.extend.pageInfo.list;
			
			//遍历从后端拿到的所有数据
			$.each(emps, function(index, item) {
				
				//添加表格中数据列
				var basicNumberTd = $("<td></td>").append(item.basicnumber);
				var animalSpeciesTd = $("<td></td>").append(item.animalspecies);
				var animalDescriptionTd = $("<td></td>").append(item.animaldescription);
				var animalSexTd = $("<td></td>").append(item.animalsex);
				var animalOriginTd = $("<td></td>").append(item.animalorigin);
				var animalBloodTd = $("<td></td>").append(item.animalbloodtype);									
				var animalWeightTd = $("<td></td>").append(item.animalweight);
				var animalLenghTd = $("<td></td>").append(item.animallengh);					
				
				//添加按钮
				var editbtn = $("<button data-toggle='modal' data-target='#experiment_add_modal' style='font-size:14px'></button>")
								.addClass("btn btn-primary btn-sm add_btn").append(
								$("<span></span>").addClass("glyphicon glyphicon-pencil")).append("添加");
						
				//为添加按钮加上“档案编号”的自定义属性							
				editbtn.attr("animalID", item.basicnumber);
				
				//查看按钮
				var delbtn = $("<button style='font-size:14px'></button>").addClass(
						"btn btn-danger btn-sm look_btn ").append(
						$("<span></span>").addClass("glyphicon glyphicon-time")).append("查看");		
						
				//为查看按钮加上“档案编号”的自定义属性					
				delbtn.attr("animalID", item.basicnumber);
				
				//将两个按钮组合到一列中
				var btntd = $("<td></td>").append(editbtn).append(" ").append(delbtn)
				
				//添加一行数据到表格中
				$("<tr></tr>").append(basicNumberTd).append(animalSpeciesTd).append(animalDescriptionTd).append(animalOriginTd).append(animalSexTd)
								.append( animalBloodTd).append(animalLenghTd).append(animalWeightTd)
								.append(btntd).appendTo("#emps_table tbody");
			});
		}
		
		
		/*分页条的设计和实现*/
		function build_page_nav(result) {
			//添加分页点击事件调用函数需要调用的函数	
			var keyword1 = $("#animal_achiveID").val();
			var keyword2 = $("#animal_kind").val();
			var keyword3 = $("#animal_description").val();
			var keyword4 = $("#animal_orgi").val();
	
			//清空分页条容器
			$("#page_nav_area").empty();
			
			//创建一个空的分页栏
			var ul = $("<ul></ul>").addClass("pagination ");
			
			//首页和上一页
			var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
			var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;").attr("href", "#"));
			
			//如果没有上一页，则将首页和上一页的可点击状态置为“不可点击”	
			if (result.extend.pageInfo.hasPreviousPage == false) {
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			} else {
				//添加翻页事件
				firstPageLi.click(function() {
					to_page_input_change(keyword1, keyword2, keyword3, keyword4, 1);
				});
				prePageLi.click(function() {
					to_page_input_change(keyword1, keyword2, keyword3, keyword4, result.extend.pageInfo.pageNum - 1);
				});
			}
			
			//下一页和尾页
			var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;").attr("href", "#"));
			var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
			
			//如果没有下一页，则将尾页和下一页的可点击状态置为“不可点击”
			if (result.extend.pageInfo.hasNextPage == false) {
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			} else {
				//添加翻页事件
				lastPageLi.click(function() {
					to_page_input_change(keyword1, keyword2, keyword3, keyword4, result.extend.pageInfo.pages);
				});
				nextPageLi.click(function() {
					to_page_input_change(keyword1, keyword2, keyword3, keyword4, result.extend.pageInfo.pageNum + 1);
				});
			}
			
			//为分页栏添加首页和上一页
			ul.append(firstPageLi).append(prePageLi);
			
			//获取本次ajax收到的条数
			var navNum = result.extend.pageInfo.navigatepageNums;
			
			//遍历此次ajax请求收到的所有数据，为分类栏添加页面
			$.each(navNum, function(index, item) {
				//增加一个页面点击栏
				var pageLi = $("<li></li>").append(
						$("<a></a>").append(item).attr("href", "#"));
				//如果可以点击，则激活		
				if (result.extend.pageInfo.pageNum == item) {
					pageLi.addClass("active");
				}
				//绑定单击事件
				pageLi.click(function() {
					to_page_input_change(keyword1, keyword2, keyword3, keyword4, item);
				})
				//为分页条添加次页面
				ul.append(pageLi);
			});
			
			//为分页栏添加下一页和尾页
			ul.append(nextPageLi).append(lastPageLi);
			
			//将分类栏添加到容器中去
			var navEle = $("<nav></nav>").append(ul);
			$("#page_nav_area").append(navEle);
		}
	
	
		/*分页信息的设计和实现*/
		function build_page_info(result) {
			//清空分页信息容器
			$("#page_info_area").empty();
			
			//将分页信息添加到容器中
			$("#page_info_area").append("<br>").append(
			"当前第 " + result.extend.pageInfo.pageNum + " 页，总 " + result.extend.pageInfo.pages + " 页，总 " + result.extend.pageInfo.total + " 条记录");
			
			//保存记录数
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
			
		
		/*针对于时间格式的校验*/
		function date_validate(ele){
			var date = $(ele).val();
			var regName = /^(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))$|^((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[13579][26])00))-02-29)$/;
			if (!regName.test(date)) {
				show_validate_msg(ele, "error", "请输入正确日期 yyyy-MM-dd！");
				return 0;
			}
			else {
				show_validate_msg(ele, "success", "");
				return 1;
			}
		}
		
		
		/*针对于字符串格式的校验*/
		function string_validate(ele){
			var string = $(ele).val();
			var regName = /(^[A-Za-z0-9]{0,255}$)|(^[\u2E80-\u9FFF]{0,255}$)/;
			if (!regName.test(string)) {
				show_validate_msg(ele, "error", "请输控制在255个字符以内！");
				return 0;
			}
			else {
				show_validate_msg(ele, "success", "");
				return 1;
			}
		}
		
		/*合法性检验的输出*/
		function show_validate_msg(ele, status, msg) {
			$(ele).removeClass("is-invalid is-valid");
			$(ele).next("div").text("");
			if ("success" == status) {
				$(ele).addClass("is-valid");
				$(ele).next("div").text("");
			} 
			else if ("error" == status) {
				$(ele).addClass("has-error");
				$(ele).next("div").text(msg);
			}
		}
		
		
		/*重置表单*/
		function reset_form(ele) {
			//清空表单
			$(':input',ele).val("");
		}                     		 
    </script>

</body>

</html>
