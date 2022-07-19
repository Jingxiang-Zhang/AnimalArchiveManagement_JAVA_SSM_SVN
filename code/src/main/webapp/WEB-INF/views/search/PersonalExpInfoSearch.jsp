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

<title>动物档案管理系统 /内部查询子系统</title>
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

<!-- 日期 -->
<link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/moment.js/2.24.0/moment-with-locales.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>


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
		<nav class="navbar-default navbar-static-side" role="navigation">
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
				<li><a href="index.html"> <i
						class="glyphicon glyphicon-plus"></i> <span class="nav-label">档案添加</span>
						<span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level">
						<li><a
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
				<li class="active"><a href="#"> <i class="glyphicon glyphicon-search"></i>
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
						<li class="active"><a href="${root_path}search/PersonalExpInfoSearch">个人实验信息查询</a>
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
			<div class="row  border-bottom white-bg dashboard-header"
				id="container_1">
				<h2>实验动物档案管理系统 / 档案查询 / <strong>个人实验信息查询</strong></h2>
			</div>
				
			<!-- 容器2  -->
			<div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>输入所要查询的数据</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>    
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                        <!--            表格在这                     -->
                        <form id="query_area">
                        	<div class="row">
	                        	<div class='col-sm-2'>
	                        	<label>动物档案号：</label>
									<div class="form-group input-group input-group-sm">
									
										<input type="text" class="form-control" name="experimentnumber" 
										placeholder="请输入档案号...">
									</div>
								</div>
								<div class='col-sm-3'>
								<label>实验目的：</label>
									<div class="form-group input-group input-group-sm">
										<input type="text" class="form-control" name="experimentpurpose" 
										placeholder="请输入实验目的...">
									</div>
								</div>
								<div class='col-sm-3'>
								<label>实验地点：</label>
									<div class="form-group input-group input-group-sm">
									
										<input type="text" class="form-control" name="experimentlocation" 
										placeholder="请输入实验地点...">
									</div>
								</div>
								<div class='col-sm-4'>
								<label>实验方法：</label>
									<div class="form-group input-group input-group-sm">
									
										<input type="text" class="form-control" name="experimentapproach" 
										placeholder="请输入实验方法...">
									</div>
								</div>
							</div>
							
							<div class="row">
	                        	<div class='col-sm-6'>
	                        	<label>实验记录：</label>
									<div class="form-group input-group input-group-sm">
									
										<input type="text" class="form-control" name="experimentrecord"
											placeholder="请输入实验记录...">
									</div>
									</div>
								<div class='col-sm-6'>
								<label>实验结果：</label>
									<div class="form-group input-group input-group-sm">
									
										<input type="text" class="form-control" name="experimentresult"
											placeholder="请输入实验结果...">
									</div>
								</div>
							</div>
							
							<div class="row">
							    <div class='col-sm-2'>
							    <label>查询开始日期：</label>
							        <div class="form-group">
							            
							            <!--指定 date标记-->
							            <div class='input-group date input-group input-group-sm' id='datetimepicker1'>
							                <input type='text' class="form-control" name="experimentdate" id="r1">
							                <span class="input-group-addon">
							                    <span class="glyphicon glyphicon-calendar"></span>
							                </span>
							            </div>
							        </div>
								</div>
								
							    <div class='col-sm-2'>
							    <label>查询结束日期：</label>
							        <div class="form-group">
							            
							            <!--指定 date标记-->
							            <div class='input-group date input-group input-group-sm' id='datetimepicker2'>
							                <input type='text' class="form-control" name="enddate" id="r2">
							                <span class="input-group-addon">
							                    <span class="glyphicon glyphicon-calendar"></span>
							                </span>
							            </div>
							        </div>
							    </div>
							    
							    <div class='col-sm-4'>
							    <label>实验备注：</label>
									<div class="form-group input-group input-group-sm">
									
										<input type="text" class="form-control"  name="experimentnote"
											placeholder="请输入备注...">
									</div>
								</div>
								<div class='col-sm-4'>
								<p></p>
									<div style="float:right;" class="form-group">
										<button type="button" class="btn btn-success btn-primary btn-lg" onclick="d()">导出excel（所有个人实验数据）</button>&nbsp;								
									</div>
									<div style="float:right;" class="form-group">
										<button type="button" class="btn btn-success btn-primary btn-lg" id="query_emp_btn">查询</button>&nbsp;					
									</div>
									
								</div>

							</div>

						</form>	
                        </div>
                    </div>
                </div>
            </div>
            </div>
            
            
            
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>数据查询后的结果</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>    
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<!-- 显示表格数据 -->
                    	<div class="row">
								<div class="col-md-12">
									<table class="table table-bordered table-hover" id="emps_table">
										<thead>
											<tr>
												<th>id</th>
												<th>动物档案号</th>
												<th>实验日期</th>
												<th>实验目的</th>
												<th>实验地点</th>
												<th>实验方法</th>
												<th>实验记录</th>
												<th>实验结果</th>
												<th>实验备注</th>
											</tr>
										</thead>
										<tbody>
											<div align="center" id='loader' style='display: none;'>
										  		<img src="${root_path}static/test2.gif">
											</div>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 显示分页信息 -->
							<div class="row">
								<!-- 分页文字信息 -->
								<div class="col-md-6" id="page_info_area"></div>
								<!-- 分页条信息 -->
								<div class="col-md-6" id="page_nav_area"></div>
							</div>
                    
                    </div>
                	</div>
				</div>
				</div>
			
			                
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

<script type="text/javascript">
          function d(){
			if("${user_dept}"!="实验室" && "${user_dept}"!="动物房" && "${user_dept}"!="转平台" && "${user_dept}"!="所有"){
				alert("只有动物房、实验室、转平台三个部门可查看档案数据，您无权限查看！");
				$("#loader").hide();
				return;
			}
			var recoddate = $("#r1").val();
			var enddate = $("#r2").val();
			var flag = 1;
			var test1 = /^\d{4}\-\d{2}\-\d{2}$/;
			if (!test1.test(recoddate)) {
				alert("请输入正确的开始日期！");
				flag = 0;
			}
			if (!test1.test(enddate)) {
				alert("请输入正确的结束日期！");
				flag = 0;
			}
			if (flag == 0) {
				return;
			}
              window.location.href="${root_path}/excel/?t="+"${user_uid}";
          }
      </script>

<script type="text/javascript">
		var totalRecord;
		var currentPage;
		//页面加载完成后，发送ajax请求，获取分页数据
		
		$(function() {

			$('#datetimepicker1').datetimepicker({
	            format: 'YYYY-MM-DD',
	            locale: moment.locale('zh-cn'),
	            defaultDate: "1970-01-01",
	
	        });
	        $('#datetimepicker2').datetimepicker({
	            format: 'YYYY-MM-DD',
	            locale: moment.locale('zh-cn'),
	            defaultDate: "2050-01-01",
	
	        });
			//to_page(1);
		})

		function to_page(pn) {
			$.ajax({
				url : "${root_path}/search/PersonalExpInfoSearch/queryExp",
				data : "pn="+pn+"&"+$("#query_area").serialize()+"&experimenternumber="+"${user_uid}",
				type : "POST",
				success : function(result) {
					//1. 解析JSON 显示员工数据
					build_emps_table(result);
					//2. 显示分页信息
					build_page_info(result);
					//3. 显示分页条
					build_page_nav(result);
				}
			});
		}
		
		$("#query_emp_btn").click(function(){
			//alert("查询完成");
			$("#loader").show();
			if("${user_dept}"!="实验室" && "${user_dept}"!="动物房" && "${user_dept}"!="转平台" && "${user_dept}"!="所有"){
				alert("只有动物房、实验室、转平台三个部门可查看档案数据，您无权限查看！");
				$("#loader").hide();
				return;
			}
			var recoddate = $("#r1").val();
			var enddate = $("#r2").val();
			var flag = 1;
			var test1 = /^\d{4}\-\d{2}\-\d{2}$/;
			if (!test1.test(recoddate)) {
				alert("请输入正确的开始日期！");
				flag = 0;
			}
			if (!test1.test(enddate)) {
				alert("请输入正确的结束日期！");
				flag = 0;
			}
			if (flag == 0) {
				$("#loader").hide();
				return;
			}
			//alert($("#query_area").serialize()+"&experimenternumber="+"${user_uid}");
			$.ajax({
				url:"${root_path}/search/PersonalExpInfoSearch/queryExp",
				type:"POST",
				data:$("#query_area").serialize()+"&experimenternumber="+"${user_uid}",
				complete: function(){
			        $("#loader").hide();
			    },
				success:function(result){
					//1. 显示员工信息
					build_emps_table(result);
					//2. 显示分页信息
					build_page_info(result);
					//3. 显示分页条
					build_page_nav(result);
				}
			});
			
		});

		function build_emps_table(result) {
			var emps = result.extend.pageInfo.list;
			//清空table表格
			$("#emps_table tbody").empty();
			$.each(emps, function(index, item) {
				var timestamp = item.experimentdate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate()) + " " + 
				           (d.getHours()) + ":" + 
				           (d.getMinutes()) + ":" + 
				           (d.getSeconds());
				           
				var id = $("<td></td>").append(item.id);
				var nb = $("<td></td>").append(item.experimentnumber);
				var rd = $("<td></td>").append(date);
				var rc = $("<td></td>").append(item.experimentpurpose);
				var hl = $("<td></td>").append(item.experimentlocation);
				var me = $("<td></td>").append(item.experimentapproach);
				var ec = $("<td></td>").append(item.experimentrecord);
				var er = $("<td></td>").append(item.experimentresult);
				var en = $("<td></td>").append(item.experimentnote);

				
				$("<tr></tr>").append(id).append(nb).append(rd).append(rc).append(hl).append(me).append(ec).append(er).append(en).appendTo("#emps_table tbody");
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
