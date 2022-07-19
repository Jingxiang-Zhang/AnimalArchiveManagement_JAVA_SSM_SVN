<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("root_path", basePath);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>外部系统模板</title>	
	<link rel="icon" href="${root_path}static/archive.ico" sizes="16x16">
   
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${root_path}static/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${root_path}static/bootstrap-3.3.7-dist/css/animate.css" rel="stylesheet">
    <link href="${root_path}static/bootstrap-3.3.7-dist/css/style.css" rel="stylesheet">
    
    <!-- Mainly scripts -->
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/popper.min.js"></script>
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/inspinia.js"></script>
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/pace/pace.min.js"></script>
	
</head>
<body>
	<script type="text/javascript">
		var user_name="${user_name}";
		if(user_name==""){
			user_name="访客";
		}
		$(document).ready(function(){
			$("#welcome_user").text("当前用户  "+user_name);
		});	
	</script>
    <div id="wrapper">
        <!-- 左侧导航设置 -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <img alt="image" class="rounded-circle" src="${root_path}static/bootstrap-3.3.7-dist/img/profile_small.jpg"/>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <br />
								<span class="block m-t-xs font-bold" id="welcome_user">
								</span>
							</a>
                        </div>
                        <div class="logo-element">
                            G9
                            <!-- group9缩写 可改 -->
                        </div>
                    </li>
                    <li>
                        <a href="${root_path}advert/recommend"><i class="fa fa-database"></i> <span class="nav-label">推荐档案</span> <span class="float-right label label-danger">HOT</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-user"></i> <span class="nav-label">个人档案查看</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="${root_path}user_archives/my_files">所属档案</a></li>
                            <li><a href="${root_path}user_archives/paid_files">已购档案</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="${root_path}out_retrieval/outer_retrieval"><i class="glyphicon glyphicon-search"></i> <span class="nav-label">档案检索</span><span class="float-right label label-danger">HOT</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-ok-sign"></i> <span class="nav-label">授权申请</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="${root_path}authz/authz_apply">提交申请</a></li>
                            <li><a href="${root_path}authz/authz_result">授权结果</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-star"></i> <span class="nav-label">推广申请</span><span class="float-right label label-success">SPECIAL</span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="${root_path}advert/advert_apply">提交申请</a></li>
                            <li><a href="${root_path}advert/advert_result">推广结果</a></li>
                        </ul>
                    </li>
                    <li class="special_link" id="logout_link">
                        <a href="${root_path}login.jsp"><i class="fa fa-sign-out"></i> <span class="nav-label">Log out</span></a>
                    </li>
                </ul>

            </div>
        </nav>
        <!-- 以上为左侧导航栏设置 -->

        <!-- 实现右侧界面排版 -->
        <div id="page-wrapper" class="gray-bg">
            
            <!-- 页面顶部设置 -->
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-success " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                    
                    <!-- 顶层信息提示 -->
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message">Welcome  ${user_name}</span>
                        </li>
                        <!-- 登出按钮 -->
						<li> <button type="button" id="logout_btn" class="btn btn-link">
							 <i class="fa fa-sign-out"></i> 登出 </button>
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
				$("#logout_link").click(function(){
					$.ajax({
						url : "${root_path}/userlogout",
						type : "POST",
						success : function(result) {
							window.location= "${root_path}login.jsp";
						}
					})
				});
			</script>
            
        <!-- 此处以上做保留 以下做个人修改 页面底端不改 -->

			<!-- --------------在此处完成对应的界面设计 ------------------>
			<!-- 容器1 -->
			<div class="wrapper wrapper-content" id="container_1">
				<h1>容器1</h1>
			</div>
				
			<!-- 容器2  -->
			<div class="wrapper wrapper-content" id="container_2">
				<h1>容器2</h1>
			</div>
			
            <!-- 页面底端授权信息 -->
            <div class="footer">
                <div class="float-right">
                    <strong>Experiment Animal Achieve Management Group</strong> Design.
                </div>
                <div>
                    <strong>Copyright</strong> Experiment Animal Achieve Management Group  &copy; 2020-2021
                </div>
            </div>

        </div>
    </div>
    
</body>
</html>
