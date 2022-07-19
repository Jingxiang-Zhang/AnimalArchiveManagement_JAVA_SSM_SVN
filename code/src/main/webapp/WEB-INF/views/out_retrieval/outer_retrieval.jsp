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
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<title>外部检索系统</title>
	<link rel="icon" href="${root_path}static/archive.ico" sizes="16x16">
	
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="${root_path}static/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/animate.css" rel="stylesheet">
	<link href="${root_path}static/bootstrap-3.3.7-dist/css/style.css" rel="stylesheet">
	<!-- JQuery -->
	<script type="text/javascript" src="${root_path}static/js/jquery-1.11.0.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"crossorigin="anonymous"></script>
	
	<!-- Mainly scripts -->
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/popper.min.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	
	<!-- Custom and plugin javascript -->
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/inspinia.js"></script>
	<script src="${root_path}static/bootstrap-3.3.7-dist/js/plugins/pace/pace.min.js"></script>	
	<link href="${root_path}static/bootstrap-3.3.7-dist/loading/loading.css"  rel="stylesheet"/>
	
	<!-- 日期 -->
	<link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/moment.js/2.24.0/moment-with-locales.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

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
					if(i!=3){
						$(this).removeClass("active");
					}
					if(i==3){
						$(this).addClass("active");
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
            <div class="row wrapper border-bottom white-bg dashboard-header">
                <h2>档案检索  - Archive  Retrieval</h2>             	
            </div>
            <!-- 内容设置 -->
            <div class="wrapper wrapper-content animated fadeInRight">
		        <div class="tabs-container">
			        	<ul class="nav nav-tabs" role="tablist">
		                  	<li><a class="nav-link active" data-toggle="tab" href="#tab1"> <i class="glyphicon glyphicon-search"></i>关键词检索 </a></li>
		                   	<li><a class="nav-link" data-toggle="tab" href="#tab2"><i class="glyphicon glyphicon-search"></i>高级检索</a></li>
		                </ul>
		                <div class="tab-content">
		                	<div id="tab1" class="tab-pane active">
		                		<div class="panel-body">
		                			<div class="row">
			                			<div class="input-group col-md-8">
				                            <input type="text" placeholder="Input the Keyword of Description..." class="input form-control" id = "inp_kw1">
			                                <span class="input-group-append">
			                                        <button type="button" class="btn btn btn-primary" id="btn_sc1"> <i class="fa fa-search"></i> Search</button>
			                                </span>
				                        </div>
			                        </div>
			                        <p> </p>  
									<div class="panel panel-primary">
										<div class = "panel-heading"> 
											<h3 class="panel-title text-center">档案列表</h3>
										</div>
										<div class="panel-body">
											<div class="table">
					                        	<table class="table table-striped table-bordered table-hover" id="ans_table" >
					                        		<thead>
														<tr>
															<th>档案编号</th>
															<th>档案描述</th>
															<th>建档日期</th>
															<th>档案售价</th>
															<th>详细信息</th>
														</tr>
													</thead>
												<tbody>
												</tbody>
					                        	</table>
					                        </div>
					                        <div class="row">
												<!-- 分页文字信息 -->
												<div class="col-md-8" id="page_info_area"></div>
												<!-- 分页条信息 -->
												<div id="page_nav_area"></div>
					                        </div>
					                    </div>
									</div>	<!-- end of table -->				
		                		</div>  
		                	</div> <!-- end of tab1 -->
		                	
		                	<div id="tab2" class="tab-pane">
		                		<div class="panel-body">
			                		<div class="ibox ">
						                <div class="ibox-title">
						                    <h5>查询条件设置</h5>
						                    <div class="ibox-tools">
						                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>    
					                            <a class="close-link"><i class="fa fa-times"></i></a>
					                        </div>
					                    </div>
						                <div class="ibox-content">
						                    <form id="query_area">
						                        	<div class="row">
						                        		<div class='col-sm-4'>
															<label for="inp_kw" >关键字段1</label>
															<input type="text" class="form-control input-sm" id="inp_kwd1">
														</div>
														<div class='col-sm-4'>
															<label for="inp_kw" >关键字段2</label>
															<input type="text" class="form-control input-sm" id="inp_kwd2">
														</div>
														<div class='col-sm-4'>
															<label for="inp_kw" >关键字段3</label>
															<input type="text" class="form-control input-sm" id="inp_kwd3">
														</div>
													</div> <!-- first line of info -->
													<p> </p>
													<div class="row">	
														<div class='col-sm-1'>
															<label for="inp_id" >档案编号</label>
															<input type="text" class="form-control input-sm" id="inp_id">
														</div>
														<div class='col-sm-3'>
												            <label>建档日期时段下限</label>
												            <!--指定 date标记-->
												            <div class='input-group date' id='datetimepicker1'>
												                <input type='text' class="form-control input-sm" name="initialdate" id="inp_st">
												                <span class="input-group-addon">
												                    <span class="fa fa-calendar"></span>
												                </span>
												            </div>
														</div>
														<div class='col-sm-3'>
													        <label>时段上限</label>
													        <!--指定 date标记-->
													        <div class='input-group date' id='datetimepicker2'>
													            <input type='text' class="form-control" name="enddate" id="inp_et">
													            <span class="input-group-addon">
												                    <span class="fa fa-calendar"></span>
												                </span>
													        </div>
													    </div>
													    <div class='col-sm-3'>
															<label for="hprice">档案价格</label>
															<div class="input-group">
																<span class="input-group-addon">￥</span>
																<input type="text" class="form-control input-sm" id="inp_pr" placeholder="填入查询上限">
															</div>
														</div>
														<div class="col-sm-2 text-right">
															<p></p>
															<button type="button" class="btn btn-success btn-primary btn-lg" id="btn_sc2"><i class="fa fa-search"></i> Search</button>								
														</div>
													</div> <!-- 2nd line of info -->
												</form>
						                </div>
						            </div><!-- end of 查询条件框 -->
						            <div class="panel panel-success">
										<div class = "panel-heading"> 
											<h3 class="panel-title text-center">档案列表</h3>
										</div>
										<div class="panel-body">
											<div class="table">
						                       	<table class="table table-striped table-bordered table-hover" id="ans2_table" >
							                       	<thead>
														<tr>
															<th>档案编号</th>
															<th>档案描述</th>
															<th>建档日期</th>
															<th>档案售价</th>
															<th>详细信息</th>
														</tr>
													</thead>
													<tbody>
													</tbody>
					                        	</table>
					                        </div>
					                        <div class="row">
												<!-- 分页文字信息 -->
												<div class="col-md-8" id="page_info_area2"></div>
												<!-- 分页条信息 -->
												<div id="page_nav_area2"></div>
					                        </div>
										</div> <!-- end of table -->
									</div> <!-- end of success panel -->
						        </div>		
							</div> <!-- end of tab2 -->
						</div> <!-- end of tabs -->
					</div> <!-- end of tab define area -->         
		        </div> <!-- end of my page -->
			    
			    <!-- 页面底端授权信息 -->
		        <div class="footer">
		            <div class="float-right">
		                <strong>Experiment Animal Achieve Management Group</strong> Design.
		            </div>
		            <div>
		                <strong>Copyright</strong> Experiment Animal Achieve Management Group  &copy; 2020-2021
		            </div>
		        </div>
		    </div> <!-- end of right page -->
	</div> <!-- end of page -->

	<script type="text/javascript">
		//普通检索关键字
		var kw = "";
		//高级检索信息 编号 关键字段 日期 价格 品种 性别 血型
		var id = "";	var kwd = "";
		var st = "";	var et = "";
		var pr = "";	var as = "";
		var ag = "";	var ab = "";
			
	
		$(function(){
			to_page(1,kw);
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
		})
		
		$("#btn_sc1").click(function(){
			kw = $("#inp_kw1").val();
			to_page(1);
		})
		
		$("#btn_sc2").click(function(){
			id = $("#inp_id").val();	pr = $("#inp_pr").val();
			st = $("#inp_st").val();	et = $("#inp_et").val();
			kwd1 = $("#inp_kwd1").val();	kwd2 = $("#inp_kwd2").val();
			kwd3 = $("#inp_kwd3").val();
			var flag = 1;
			var test1 = /^\d{4}\-\d{2}\-\d{2}$/;
			if (!test1.test(st)) {
				alert("请输入正确的开始日期！");
				flag = 0;
			}
			if (!test1.test(et)) {
				alert("请输入正确的结束日期！");
				flag = 0;
			}
			if(pr<0){
				alert("档案价格请输入正数！")
			}
			if(flag = 1){
				to_page_h(1);
			}
			
		})
		
		function to_page_h(pn){
			$.ajax({
				url:"${root_path}/out_retrieval/highlevel",
				type:"GET",
				data:"pn="+pn+"&id="+id+"&kwd1="+kwd1+"&st="+st+"&et="+et+
					 "&pr="+pr+"&kwd2="+kwd2+"&kwd3="+kwd3,
				success:function(result){
					build_table2(result);
					build_page_info2(result);
					build_page_nav2(result);
				}
			})
		}
		
		function build_table2(result){
			var f = result.extend.pageInfo.list;
			$("#ans2_table tbody").empty();
			$.each(f, function(index, item){
				var timestamp = item.initialdate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate())
				var aid = item.archivenumber ;           
				var ar_number = $("<td></td>").append(item.archivenumber);
				var ar_despription = $("<td></td>").append(item.archivedescription)	;				
				var ar_initialdate = $("<td></td>").append(date);
				var ar_price = $("<td></td>").append(item.price);
				var infobtn = $("<button></button>").addClass("btn btn-success btn-sm").append(
				$("<span></span>").addClass("glyphicon glyphicon-arrow-right"));
				$("<tr></tr>").append(ar_number).append(ar_despription).append(
					ar_initialdate).append(ar_price).append(infobtn).appendTo("#ans2_table tbody");
				infobtn.attr("ar_number", item.archivenumber);
				infobtn.click(function() {
					var user_name="${user_name}";
					if(user_name==""){
						alert("登录后可查看档案详细信息，请退出访客模式并登录")
					}
					else{
						$.ajax({
							url:"${root_path}/out_retrieval/checkpaid",
							type:"GET",
							data:"uid="+${user_uid},
							success:function(result){
								var fids = result.extend.fids;
								var flag=1;
								$.each(fids, function(index, item) {
									var pid = item;
									if(pid==aid){
										window.location.href = "${root_path}user_archives/fileInfo?id="+aid;
										flag=0;
									}
								})
								if(flag==1){
									alert("暂无查看权限，请先购买该档案");
									pay(aid);
								}
							}
						})
					}
				
				})
			})
		}
		
		function pay(aid){
			console.log(aid);
			$.ajax({
				url:"${root_path}/out_retrieval/pay",
				type:"GET",
				data:"uid="+${user_uid}+"&aid="+aid,
				success:function(result){
					var r = result.extend.res;
					if(r==1){
						alert("购买成功！");
						window.location.href = "${root_path}user_archives/fileInfo?id="+aid;
					}
					else{
						alert("购买失败！");
					}
				}
			})
		}
		
		
		function to_page(pn){
			
			$.ajax({
				url:"${root_path}/out_retrieval/loadpage",
				type:"GET",
				data:"pn="+pn+"&kw="+kw,
				success:function(result){
					build_table1(result);
					build_page_info1(result);
					build_page_nav1(result);
				}
			})
		}
			
		function build_table1(result){
			var f = result.extend.pageInfo.list;
			$("#ans_table tbody").empty();
			$.each(f, function(index, item){
				console.log(item);
				var timestamp = item.initialdate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate())
				var aid = item.archivenumber            
				var ar_number = $("<td></td>").append(item.archivenumber)
				var ar_despription = $("<td></td>").append(item.archivedescription)					
				var ar_initialdate = $("<td></td>").append(date)
				var ar_price = $("<td></td>").append(item.price)
				var infobtn = $("<button></button>").addClass("btn btn-primary btn-sm").append(
				$("<span></span>").addClass("glyphicon glyphicon-arrow-right"))
				infobtn.attr("ar_number", item.archivenumber);
				$("<tr></tr>").append(ar_number).append(ar_despription).append(
					ar_initialdate).append(ar_price).append(infobtn).appendTo("#ans_table tbody");
					
				infobtn.click(function() {
					var user_name="${user_name}";
					if(user_name==""){
						alert("登录后可查看档案详细信息，请退出访客模式并登录")
					}
					else{
						$.ajax({
							url:"${root_path}/out_retrieval/checkpaid",
							type:"GET",
							data:"uid="+${user_uid},
							success:function(result){
								var fids = result.extend.fids;
								var flag = 1;
								$.each(fids, function(index, item) {
									var pid = item;
									if(pid==aid){
										flag = 0;
										window.location.href = "${root_path}user_archives/fileInfo?id="+aid;
									}
								});
								if(flag==1){
									alert("暂无查看权限，请先购买该档案");
									pay(aid);
								}
							}
						})
					}
				})
				
			})
		}
		
		//分页条1
		function build_page_nav1(result) {
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
					to_page(result.extend.pageInfo.pageNum - 1,kw);
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
		
		//分页信息1
		function build_page_info1(result) {

			$("#page_info_area").empty();

			$("#page_info_area").append(
					"当前第 " + result.extend.pageInfo.pageNum + " 页" + " 总 "
							+ result.extend.pageInfo.pages + " 页" + " 总 "
							+ result.extend.pageInfo.total + " 条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
		
		//分页条2
		function build_page_nav2(result) {
			
			$("#page_nav_area2").empty();

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
					to_page_h(1);
				});
				prePageLi.click(function() {
					to_page_h(result.extend.pageInfo.pageNum - 1,kw);
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
					to_page_h(result.extend.pageInfo.pages);
				});
				nextPageLi.click(function() {
					to_page_h(result.extend.pageInfo.pageNum + 1);
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
					to_page_h(item);
				})
				ul.append(pageLi);
			});
			ul.append(nextPageLi).append(lastPageLi);
			var navEle = $("<nav></nav>").append(ul);
			$("#page_nav_area2").append(navEle);
		}
		
		//分页信息2
		function build_page_info2(result) {

			$("#page_info_area2").empty();

			$("#page_info_area2").append(
					"当前第 " + result.extend.pageInfo.pageNum + " 页" + " 总 "
							+ result.extend.pageInfo.pages + " 页" + " 总 "
							+ result.extend.pageInfo.total + " 条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
              
     </script>
</body>
</html>
