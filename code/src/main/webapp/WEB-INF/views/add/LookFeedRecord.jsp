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
	
	//从前台获得jsp代码
	String str = request.getParameter("animalID");
	int animalID=Integer.parseInt(str);
	request.setAttribute("animalID", animalID);
%>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<title>查看饲养表添加记录</title>
	
	<!-- icon -->
	<link rel="icon" href="${root_path}static/archive.ico" sizes="16x16">
	
	<!-- 最新的 Bootstrap 核心 CSS文件 -->
	<link href="${root_path}static/add/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- 主题界面的CSS文件 -->
	<link href="${root_path}static/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/animate.css" rel="stylesheet">
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/style.css" rel="stylesheet">
	
	<!-- table -->
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
	
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

	<!-- table -->
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/dataTables/datatables.min.js"></script>
    <script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
</head>


<body>
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
						<li><a href="${root_path}add/AddExperimentRecord">动物实验记录添加</a></li>
						<li class="active"><a href="${root_path}add/AddFeedRecord">动物饲养记录添加</a></li>
						<li ><a href="${root_path}add/AddBreedecord">动物繁殖记录添加</a></li>
						<li ><a href="${root_path}add/AddHealthRecord">动物健康记录添加</a></li>
					</ul></li>			
				<!-- 档案修改子系统 -->
				<li><a href="#"> <i class="glyphicon glyphicon-pencil"></i>
						<span class="nav-label">档案修改</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level collapse">
						<li><a href="${root_path}update/animal_archive">动物档案修改</a></li>
						<li><a href="${root_path}update/experiment_data">动物实验记录修改</a>
						</li>
						<li><a href="${root_path}update/Feed_record">动物健康记录修改</a></li>
						<li><a href="${root_path}update/Feed_record">动物繁殖记录修改</a></li>
						<li><a href="${root_path}update/feed_record">动物饲养记录修改</a></li>
						
						<!-- 新增  -->
						<li><a href="${root_path}update/log">修改日志</a></li>
						<li>
                        	<a href="${root_path}update/inspect">
                        		<span class="nav-label">删除申请审核</span>
                        		<span class="float-right label label-danger">1</span>
                        	</a>
                    	</li>
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
						<li><a href="${root_path}search/AnimalFeedInfoSearch">动物健康记录查询</a>
						</li>
						<li><a href="${root_path}search/AnimalFeedInfoSearch">动物繁殖记录查询</a>
						</li>
						<li><a href="${root_path}search/AnimalFeedInfoSearch">动物饲养记录查询</a>
						</li>
						<li><a href="${root_path}search/PersonalExpInfoSearch">个人实验信息查询</a>
						</li>
						<li><a href="${root_path}search/HistorySearch">历史查询</a>
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
				<br>
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
			
			<!-- --------------在此处完成对应的界面设计 ------------------>
			<div class="wrapper wrapper-content animated fadeInRight ecommerce">
               		
               	<!-- 导航 -->
	            <div class="ibox-content m-b-sm border-bottom">
	            	<h2>实验动物饲养记录表</h2>
					<ol class="breadcrumb">
                    	<li class="breadcrumb-item">
                        	<a href="index.jsp">实验动物档案管理系统</a>
                       	</li>
                       	<li class="breadcrumb-item">
                           	<a herf="#">添加子系统</a>
                       	</li>
                       	<li class="breadcrumb-item">
                           	实验动物饲养记录表
                       	</li>
                       	<li class="breadcrumb-item active">
                           	<strong>动物档案编号：${animalID}</strong>
                       	</li>
                   	</ol>
				</div>
	                
				<!-- 表格 -->
				<div class="row" id="cmd">
                    <div class="col-lg-12">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Experiment Animal Feed Record Table</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            
                            <div class="ibox-content" style="font-size:14px">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover dataTables-example" id="emps_table">
                                        <thead>
                                            <tr>
                                            	<th>饲养日期</th>	
                                                <th>动物档案编号</th>
                                           		<th>饲养记录表编号</th>
                                            	<th>饲养记录员编号</th>   
                                            </tr>
                                        </thead>
                                        <!-- 数据:通过ajax获得-->
                                        <tbody></tbody>      
                                        <tfoot>
                                            <tr>
                                            	<th>饲养日期</th>	
                                                <th>动物档案编号</th>
                                           		<th>饲养记录表编号</th>
                                            	<th>饲养记录员编号</th>                                                	
                                            </tr>
                                        </tfoot>
                                    </table>                                    
                                     <!-- 显示分页信息 ：通过ajax获得-->                                							
									<div class="row">
										<!-- 分页文字信息 -->									
										<div class="col-lg-8" style='font-size:14px' id="page_info_area"></div>
										<!-- 分页条信息 -->
										<div class="col-lg-3 col-lg-offset-1" style='font-size:14px' id="page_nav_area"></div>
									</div>
                                </div>
                            </div>
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


	<!-- 登录按钮事件 -->
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
	
	
	<!-- 主要的 脚本程序-->
	<script type="text/javascript">	
   		//页面加载完成后，发送ajax请求，获取分页数据
		$(function() {
			//权限判断
			if("${user_dept}" != "实验室" && "${user_dept}" != "所有"){
				alert("您没有权限查看饲养记录！");
				$("<h1 class='text-center'>未检索到任何记录，请向管理员核实身份信息和操作权限！</h1>").appendTo("#cmd");
				return false;
			}
			to_page(1);
		})
	
		//转至某一分页
		function to_page(pn) {
			//清空table表格
			$("#emps_table tbody").empty();			
			
			//用ajax请求查询实验动物档案表
			$.ajax({
				url : "${root_path}/add/LookFeedRecord/query",
				data : "id=" + ${animalID} + "&pn=" + pn,
				type : "GET",
				success : function(result) {
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
	
	
		/* 为表格中填写数据 */
		function build_emps_table(result) {				
			//从后端拿到数据对象
			var emps = result.extend.pageInfo.list;
			var dates = result.extend.date;
			
			//遍历从后端拿到的所有数据
			$.each(emps, function(index, item) {

				//添加表格中数据列				
				var RecordDateTd = $("<td></td>").append(dates[index]);
				var archiveNumberTd = $("<td></td>").append(item.archivenumber);
				var idTd = $("<td></td>").append(item.id);
				var RecorderTd = $("<td></td>").append(item.recorder);		
				
				//添加一行数据到表格中
				$("<tr></tr>").append(RecordDateTd).append(archiveNumberTd).append(idTd).append(RecorderTd).appendTo("#emps_table tbody");
			});
		}
		
		
		/*分页条的设计和实现*/
		function build_page_nav(result) {
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
						to_page(1);
					});
					prePageLi.click(function() {
						to_page(result.extend.pageInfo.pageNum - 1);
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
						to_page(result.extend.pageInfo.pages);
					});
					nextPageLi.click(function() {
						to_page(result.extend.pageInfo.pageNum + 1);
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
						to_page(item);
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
   	</script>  	

</body>
</html>

