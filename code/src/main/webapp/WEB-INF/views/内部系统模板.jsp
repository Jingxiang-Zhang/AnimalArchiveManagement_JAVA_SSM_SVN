<%@page import="com.crud.service.ArchiveUpdateService"%>
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

<title>动物档案管理系统 / xx子系统</title>
<link rel="icon" href="${root_path}static/archive.ico" sizes="16x16">

<link
	href="${root_path}static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${root_path}static/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<link href="${root_path}static/bootstrap-3.3.7-dist/css/animate.css"
	rel="stylesheet">
<link href="${root_path}static/bootstrap-3.3.7-dist/css/style.css"
	rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript"
	src="${root_path}static/js/jquery-1.11.0.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- Mainly scripts -->
<script
	src="${root_path}static/bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
<script src="${root_path}static/bootstrap-3.3.7-dist/js/popper.min.js"></script>
<script src="${root_path}static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script
	src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script
	src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${root_path}static/bootstrap-3.3.7-dist/js/inspinia.js"></script>
<script
	src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/pace/pace.min.js"></script>

<link href="${root_path}static/bootstrap-3.3.7-dist/loading/loading.css"  rel="stylesheet"/>
	
</head>


<body>
	<script type="text/javascript">
		var user_name="${user_name}";
		var user_dept="${user_dept}";
		if(user_name==""){
			user_name="访客";
		}
		if(user_dept==""){
			user_dept="无";
		}
		$(document).ready(function(){
			$("#welcome_user").text("欢迎你，"+user_name);
			$("#welcome_user_dept").text("所属部门："+user_dept);
		});
		
	</script>
	<div id="wrapper">
		<!-- 左边的导航框 -->
		<nav class="navbar-default navbar-static-side" role="navigation" >
		<div class="sidebar-collapse">
			<ul class="nav metismenu" id="side-menu">
				<!-- 用户的基本信息 -->
				<li class="nav-header">
					<div class="dropdown profile-element">
						<img alt="image" class="img-circle center-block"
							src="${root_path}static/bootstrap-3.3.7-dist/img/profile_small.jpg" />
						<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <br />
							<span class="block m-t-xs font-bold text-center" id="welcome_user">
								欢迎你，
							</span>
							<span class="block m-t-xs font-bold text-center" id="welcome_user_dept">
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
						<li class="active"><a
							href="${root_path}add/AddExperimentRecord">动物实验记录添加</a></li>
						<li><a href="${root_path}add/AddFeedRecord">动物饲养记录添加</a>
						</li>
						<li><a href="${root_path}add/AddBreedRecord">动物繁殖记录添加</a>
						</li>
						<li><a href="${root_path}add/AddHealthRecord">动物健康记录添加</a>
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
						<li><a href="${root_path}update/breed_record">动物繁殖记录修改</a></li>
						<li><a href="${root_path}update/feed_record">动物饲养记录修改</a></li>
						
						<!-- 新增  -->
						<li><a href="${root_path}update/log">修改日志</a></li>
						<li>
                        	<a href="${root_path}update/inspect">
                        		<span class="nav-label">删除申请审核</span>
                        		<%@page import="com.crud.service.ArchiveUpdateService"%>
                        		<%
                        			int size = ArchiveUpdateService.archiveUpdateInspect.size();
                        			if(size!=0){
                        		%>
                        			<span class="float-right label label-danger"><%=size %></span>
                        		<%
                        			}
                        		 %>
                        	</a>
                    	</li>
                    	<!-- 新增 结束 -->
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
						<li><a href="${root_path}search/AnimalBreedInfoSearch">动物繁殖记录查询</a>
						</li>
						<li><a href="${root_path}search/AnimalFeedInfoSearch">动物饲养记录查询</a>
						</li>
						<li><a href="${root_path}search/PersonalExpInfoSearch">个人实验信息查询</a>
						</li>
					</ul></li>

				<!-- 档案初始化子系统 -->
				<li>
					<a href="#"> 
						<i class="glyphicon glyphicon-tag"></i> 
						<span class="nav-label">档案初始化</span> 
						<span class="fa arrow"></span>
					</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}initial/initialArchive">初始化动物档案</a></li>
						<li><a href="${root_path}initial/addEarRing">耳标配置</a></li>
					</ul>
				</li>

				<!-- 档案授权管理子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-pawn"></i> <span
						class="nav-label">档案授权管理</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}authz/authz">档案授权</a></li>
						<li><a href="${root_path}authz/remove_authz">取消授权</a></li>
						<li><a href="${root_path}authz/authz_aggrement">授权协议</a>
						</li>
					</ul></li>

				<!-- 档案推广管理子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-globe"></i>
						<span class="nav-label">档案推广管理</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}advert/advert">档案推广</a></li>
						<li><a href="${root_path}advert/remove_advert">取消推广</a>
						</li>
						<li><a href="${root_path}advert/advert_aggrement">推广协议</a>
						</li>
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
				<ul class="nav navbar-top-links  col-lg-5 col-lg-offset-3">
					<!-- 欢迎 -->
					<li><span class="m-r-sm text-muted welcome-message">欢迎来到实验动物档案管理系统</span>
					</li>
					<!-- 登出按钮 -->
					<li><button type="button" id="logout_btn" class="btn btn-link">
						<i class="fa fa-sign-out"></i>
							登出
						</button>
					</li>
				</ul>
				</nav>
			</div>
			<!-- 这里是登出按钮事件 -->
			<script type="text/javascript">
				$("#logout_btn").click(function(){
					$.ajax({
						url : "${root_path}/userlogout",
						type : "POST",
						success : function(result) {
							window.location= "${root_path}login.jsp";
						}
					})
				});
			
			</script>
			
			
			<!-- --------------在此处完成对应的界面设计 ------------------>
			<!-- 容器1 -->
			<div class="wrapper wrapper-content" id="container_1">
				<h1>容器1</h1>
			</div>
				
			<!-- 容器2  -->
			<div class="wrapper wrapper-content" id="container_2">
				<h1>容器2</h1>
			</div>

			<!-- --------------在此处完成对应的界面设计 ------------------>

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


</body>
</html>
