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
	
	<title>用户已购档案</title>	
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
				$("#side-menu").children("li").each(function(i){
					if(i!=2){
						$(this).removeClass("active");
					}
					else{
					//等于你的列（2）的标签打开
						$(this).addClass("active");
						//找到你的标签下的子标签
						$(this).children("ul").children("li").each(function(j){
							//第1个子标签就用0，这里放上你想要的位置编号，添加高亮显示
							if(j!=1){
								$(this).removeClass("active");
							}
							else{
								$(this).addClass("active");
							}
						})
					}
				})
				
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

        <!-- 右侧界面设置 -->
            <!-- 标题设置 -->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>个人档案查看</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${root_path}user_archives/my_files">所属档案</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <a href="${root_path}user_archives/paid_files"><strong>已购档案</strong></a>
                        </li>
                    </ol>
                </div>
            </div>
            <!-- 内容设置 -->
            <div class="wrapper wrapper-content">
                <div class="row">
                    <div class="col-lg-12">
                    <div class="ibox ">

                        <!-- 表格标题与设置 -->         
                        <div class="ibox-content">
							<div class="panel panel-success">
	                        	<div class = "panel-heading"> 
									<h5 class="panel-title text-center">个人已购档案列表</h5>
								</div>
	                            <div class="panel-body">
		                            <div class="table-responsive">
			                        	<table class="table table-striped table-bordered table-hover" id="userfile_table" style='display: none;'>
			                        	<thead>
											<tr>
												<th>档案编号</th>
												<th>档案描述</th>
												<th>建档日期</th>
												<th>授权情况</th>
												<th>推广情况</th>
												<th>详细信息</th>
											</tr>
										</thead>
										<tbody>
											<div align="center" id='loader' style='display: none;'>
										  		<img src="${root_path}static/test2.gif">
											</div>
										</tbody>
			                        	</table>
		                            </div>
		                            <div class="row">
										<!-- 分页文字信息 -->
										<div class="col-md-9" id="page_info_area"></div>
										<!-- 分页条信息 -->
										<div id="page_nav_area"></div>
		                        	</div>         
	                            </div>
                            </div>        
                    	</div>                    
					</div>                    
                	</div>                
                </div>               
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
    <!-- Page-Level Scripts -->
    <script>
		var totalRecord;
		var currentPage;
		var fileId;
		//页面加载完成后，发送ajax请求，获取分页数据
		$(function() {
			$("#loader").show();
			to_page(1);
		})

		function to_page(pn) {
			var user_name="${user_name}";
			if(user_name==""){
				$("#loader").hide();
				alert("此页面登录后查看，请先登录");
			}
			else{
				$.ajax({
					url : "${root_path}user_archives/paidfiles/query",
					data : "pn=" + pn+"&userid="+${user_uid},
					type : "GET",
					success : function(result) {
						//console.log(result);
						//1. 解析JSON 显示档案数据
						build_files_table(result);
						$("#userfile_table").show();
						$("#loader").hide();
						//2. 显示分页信息
						build_page_info(result);
						//3. 显示分页条
						build_page_nav(result);
					}
				});
			}
		}

		function build_files_table(result) {
			var files = result.extend.pageInfo.list;
	
			//清空table表格
			$("#userfile_table tbody").empty();
			
			$.each(files, function(index, item) {
				var timestamp = item.initialdate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate())
				var id = item.archivenumber            
				var ar_number = $("<td></td>").append(item.archivenumber)
				var ar_despription = $("<td></td>").append(item.archivedescription)					
				var ar_initialdate = $("<td></td>").append(date)
				var ar_authz = $("<td></td>").append(item.authzstate)
				var ar_adverts = $("<td></td>").append(item.advertsstate)
				var infobtn = $("<button></button>").addClass("btn btn-success btn-sm").append(
				$("<span></span>").addClass("glyphicon glyphicon-arrow-right"))
				infobtn.attr("ar_number", item.archivenumber);
				
				infobtn.click(function() {
					window.location.href = "${root_path}user_archives/fileInfo?id="+id;
				})
				
				$("<tr></tr>").append(ar_number).append(ar_despription).append(
						ar_initialdate).append(ar_authz).append(ar_adverts).append(infobtn).appendTo("#userfile_table tbody");
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

</body>
</html>
