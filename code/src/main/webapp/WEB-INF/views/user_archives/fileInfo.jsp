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
	
	<title>档案详细信息</title>	 
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

        <!-- 右侧界面设置 -->
            <!-- 标题设置 -->
            <div class="row wrapper border-bottom white-bg dashboard-header">
                    <h2>档案具体信息 - Archive Details</h2>
            </div> 
            <!-- 内容设置 -->
            <div class="wrapper wrapper-content" id = "details" style='display: none;'>
            	<div class="tabs-container">
                	<ul class="nav nav-tabs" role="tablist">
                    	<li><a class="nav-link active" data-toggle="tab" href="#tab-1"> <i class="glyphicon glyphicon-file"></i>档案基本信息 </a></li>
                    	<li><a class="nav-link" data-toggle="tab" href="#tab-2"><i class="glyphicon glyphicon-scale"></i>动物基本信息</a></li>
                    </ul>
                    <div class="tab-content">
                        <div role="tabpanel" id="tab-1" class="tab-pane active">
                            <div class="panel-body">
                            <div class="row">
								<div class="col-md-4">
									<div class="row">
										<p class="col-md-4 text=left"> <strong>档案编号：</strong></p>
										<p class="col-md-8 text=left" id = "aa_aid"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>档案简介：</strong></p>
										<p class="col-md-8 text=left" id = "aa_intro"></p>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row">
										<p class="col-md-4 text=left"> <strong>建档人：</strong></p>
										<p class="col-md-8 text=left" id = "aa_iuser"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>建档日期：</strong></p>
										<p class="col-md-8 text=left" id = "aa_idate"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>档案责任人：</strong></p>
										<p class="col-md-8 text=left" id = "aa_ruser"></p>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row">
										<p class="col-md-4 text=left"> <strong>授权情况：</strong></p>
										<p class="col-md-8 text=left" id = "aa_authz"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>档案售价：</strong></p>
										<p class="col-md-8 text=left" id = "aa_price"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>推广情况：</strong></p>
										<p class="col-md-8 text=left" id = "aa_adverts"></p>
									</div>
								</div>
							</div>
                            </div>
                        </div>
                        <div role="tabpanel" id="tab-2" class="tab-pane">
                            <div class="panel-body">
                            <div class="row">
								<div class="col-md-4">
									<div class="row">
										<p class="col-md-4 text=left"> <strong>动物编号：</strong></p>
										<p class="col-md-8 text=left" id = "ab_aid"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>动物体重：</strong></p>
										<p class="col-md-8 text=left" id = "ab_weight"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>动物体长：</strong></p>
										<p class="col-md-8 text=left" id = "ab_length"></p>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row">
										<p class="col-md-4 text=left"> <strong>动物血型：</strong></p>
										<p class="col-md-8 text=left" id = "ab_blood"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>来源地：</strong></p>
										<p class="col-md-8 text=left" id = "ab_origin"></p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>动物简介：</strong></p>
										<p class="col-md-8 text=left" id = "ab_intro"></p>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row">
										<p class="col-md-4 text=left"> <strong>动物类型：</strong></p>
										<p class="col-md-8 text=left" id = "ab_kind"> 1234</p>
									</div>
									<div class="row">
										<p class="col-md-4 text=left"> <strong>动物性别：</strong></p>
										<p class="col-md-8 text=left" id = "ab_gender"> 1123</p>
									</div>
								</div>
							</div>   
                        	</div>
                   		</div>
                   	</div>
                </div>
                
                <p> </p><!-- 设置间隔 -->
                
                <div class="tabs-container">
                	<ul class="nav nav-tabs" role="tablist">
                    	<li><a class="nav-link active" data-toggle="tab" href="#tab-3"><i class="glyphicon glyphicon-piggy-bank"></i>动物健康记录</a></li>
                    	<li><a class="nav-link" data-toggle="tab" href="#tab-4"><i class="glyphicon glyphicon-plus-sign"></i>动物繁殖记录</a></li>
                    	<li><a class="nav-link" data-toggle="tab" href="#tab-5"><i class="glyphicon glyphicon-baby-formula"></i>动物饲养记录</a></li>
                    	<li><a class="nav-link" data-toggle="tab" href="#tab-6"><i class="glyphicon glyphicon-filter"></i>动物实验记录</a></li>                   
                    </ul>
                    <div class="tab-content">
                        <div role="tabpanel" id="tab-3" class="tab-pane active">
                   			<div class="panel-body">
                        	<div class="panel panel-primary">
                        	<div class = "panel-heading"> 
								<h5 class="panel-title text-center">健康记录表</h5>
							</div>
							<div class="panel-body">
	                            <div class="table-responsive">
	                        	<table class="table table-striped table-bordered table-hover table-condensed" id="health_table" >
	                        	<thead>
								<tr>
									<th >记录编号</th>
									<th >记录员</th>
									<th >记录时间</th>
									<th >健康等级</th>
									<th >具体描述</th>
								</tr>
								</thead>
								<tbody>
								</tbody>
	                        	</table>
	                            </div>
	                            <div class="row">
									<!-- 分页文字信息 -->
									<div class="col-md-9" id="page_info_area1"></div>
									<!-- 分页条信息 -->
									<div id="page_nav_area1"></div>
                        		</div>   
                            </div><!-- end of panel body-->
                            </div><!-- end of panel color-->
                            </div>
                        </div>
                        <div role="tabpanel" id="tab-4" class="tab-pane">
                            <div class="panel-body">
                            <div class="panel panel-success">
                        	<div class = "panel-heading"> 
								<h5 class="panel-title text-center">繁殖记录表</h5>
							</div>
							<div class="panel-body">
                            	<div class="table-responsive">
	                        	<table class="table table-striped table-bordered table-hover" id="breed_table" >
	                        	<thead>
								<tr>
									<th>记录编号</th>
									<th>记录员</th>
									<th>记录时间</th>
									<th>具体描述</th>
								</tr>
								</thead>
								<tbody>
								</tbody>
	                        	</table>
	                            </div>
	                            <div class="row">
									<!-- 分页文字信息  -->
									<div class="col-md-9" id="page_info_area2"></div>
									<!-- 分页条信息 -->
									<div id="page_nav_area2"></div>
                        		</div>   
                            </div><!-- end of panel body-->
                            </div><!-- end of panel color-->
                            </div>
                   		</div>
                   		<div role="tabpanel" id="tab-5" class="tab-pane">
                   			<div class="panel-body">
                            <div class="panel panel-warning">
                        	<div class = "panel-heading"> 
								<h5 class="panel-title text-center">饲养记录表</h5>
							</div>
							<div class="panel-body">
	                            <div class="table-responsive">
	                        	<table class="table table-striped table-bordered table-hover" id="feed_table" >
	                        	<thead>
								<tr>
									<th>记录编号</th>
									<th>记录员</th>
									<th>记录时间</th>
									<th>进食前状态</th>
									<th>食物类型</th>
									<th>饲养习惯</th>
								</tr>
								</thead>
								<tbody>
								</tbody>
	                        	</table>
	                            </div>
	                            <div class="row">
									<!-- 分页文字信息  -->
									<div class="col-md-9" id="page_info_area3"></div>
									<!-- 分页条信息 -->
									<div id="page_nav_area3"></div>
                        		</div>   
                            </div><!-- end of panel body-->
                            </div><!-- end of panel color-->
                            </div>
                        </div>
                        <div role="tabpanel" id="tab-6" class="tab-pane">
                        	<div class="panel-body">
                        	<div class="panel panel-info">
                        	<div class = "panel-heading"> 
								<h5 class="panel-title text-center">实验记录表</h5>
							</div>
                            <div class="panel-body">
                            	<div class="table-responsive">
	                        	<table class="table table-striped table-bordered table-hover" id="ex_table" >
	                        	<thead>
								<tr>
									<th width="50">编号</th>
									<th width="60">负责人</th>
									<th width="200">实验目的</th>
									<th width="80">实验室</th>
									<th width="200">实验方法</th>
									<th>实验记录</th>
									<th>实验结果</th>
									<th width="70">实验时间</th>
								</tr>
								</thead>
								<tbody>
								</tbody>
	                        	</table>
	                            </div>
	                            <div class="row">
									<!-- 分页文字信息  -->
									<div class="col-md-9" id="page_info_area4"></div>
									<!-- 分页条信息 -->
									<div id="page_nav_area4"></div>
                        		</div>   
                            </div><!-- end of panel body-->
                            </div><!-- end of panel color-->
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
    
    <script type="text/javascript">
	    var u;
	    var pram;
	    var key;
	    var id;
	    
	    $(function() {
	    	getclear();
	    	var flag = 1;
		   	var url = window.location.href;
		   	u = url.split("?");
			pram = u[1];
			key = pram.split("=");
			id = key[1];
			
			$.ajax({
				url:"${root_path}/out_retrieval/checkpaid",
				type:"GET",
				data:"uid="+${user_uid},
				async:false,
				success:function(result){
					var fids = result.extend.fids;
					$.each(fids, function(index, item) {
						var pid = item;
						if(pid==id){
							flag=0;
						}
					})
				}
			})
		    if(flag==0){
		    	$("#details").show();
				loadaa();
				loadab();
				loadtablehealth(1);			
				loadtablebreed(1);
				loadtablefeed(1);
				loadtableex(1);
		    }
		    else{
		    	alert("您没有查看该档案的权限！");
		    }
		})
				
		function loadaa() {			
			$.ajax({	
				url : "${root_path}user_archives/loadaa",
				data : "id=" + id,
				type : "GET",
				success : function(result) {
					var f = result.extend.file;
									
					var timestamp = f.initialdate;
					var d = new Date(timestamp);    //根据时间戳生成的时间对象
					var date = (d.getFullYear()) + "-" + 
					           (d.getMonth() + 1) + "-" +
					           (d.getDate())

					$("#aa_aid").text(f.archivenumber);
					$("#aa_idate").text(date);
					$("#aa_iuser").text(f.iuser.name);
					$("#aa_ruser").text(f.ruser.name);
					$("#aa_intro").text(f.archivedescription);
					$("#aa_authz").text(f.authzstate);
					$("#aa_adverts").text(f.advertsstate);
					
					if(f.authzstate=="已授权"){
						$("#aa_price").text("￥"+f.price);
					}
					else{
						$("#aa_price").text("未标价");
					}
				}
			});
		}
		
		function loadab() {			
			$.ajax({	
				url : "${root_path}user_archives/loadab",
				data : "id=" + id,
				type : "GET",
				success : function(result) {
					var f = result.extend.file;
					$("#ab_aid").text(f.basicnumber);
					$("#ab_weight").text(f.animalweight+" kg");
					$("#ab_length").text(f.animallengh+" cm");
					$("#ab_blood").text(f.animalbloodtype);
					$("#ab_origin").text(f.animalorigin);
					$("#ab_intro").text(f.animaldescription);
					$("#ab_kind").text(f.animalspecies);
					$("#ab_gender").text(f.animalsex);	
				}
			});
		}

		function loadtablehealth(pn){
			$.ajax({	
				url : "${root_path}user_archives/loadhealth",
				data : "id=" + id+"&pn="+pn,
				type : "GET",
				success : function(result) {
					to_health(result);
					build_page_info1(result);
					build_page_nav1(result);
				}
			});
		}
		
		function to_health(result){
			var files = result.extend.pageInfo.list;
			$("#health_table tbody").empty();
					
			$.each(files, function(index, item) {
						
				console.log(item);
				var timestamp = item.recorddate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate())          
				var id = $("<td></td>").append(item.id)
				var recorder = $("<td></td>").append(item.user.name)					
				var recorddate = $("<td></td>").append(date)
				var healthlevel = $("<td></td>").append(item.healthlevel)
				var healthdescription = $("<td></td>").append(item.healthdescription)
					
				$("<tr></tr>").append(id).append(recorder).append(recorddate).append(
				healthlevel).append(healthdescription).appendTo("#health_table tbody");
			});	
		}
		
		function loadtablebreed(pn){
			$.ajax({	
				url : "${root_path}user_archives/loadbreed",
				data : "id=" + id+"&pn="+pn,
				type : "GET",
				success : function(result) {
					to_breed(result);
					build_page_info2(result);
					build_page_nav2(result);
				}
			});
		}
		
		function to_breed(result){
			var files = result.extend.pageInfo.list;
			$("#breed_table tbody").empty();
			$.each(files, function(index, item) {
				var timestamp = item.recorddate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate())        
				var id = $("<td></td>").append(item.id)
				var recorder = $("<td></td>").append(item.user.name)					
				var recorddate = $("<td></td>").append(date)
				var breeddescription = $("<td></td>").append(item.breeddescription)
				
				$("<tr></tr>").append(id).append(recorder).append(
						recorddate).append(breeddescription).appendTo("#breed_table tbody");
			});	
		}
		
		function loadtablefeed(pn){
			$.ajax({	
				url : "${root_path}user_archives/loadfeed",
				data : "id=" + id+"&pn="+pn,
				type : "GET",
				success : function(result) {
					to_feed(result);
					build_page_info3(result);
					build_page_nav3(result);
				}
			});
		}
		
		function to_feed(result){
			var files = result.extend.pageInfo.list;
			$("#feed_table tbody").empty();
			$.each(files, function(index, item) {
				var timestamp = item.recorddate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate())        
				var id = $("<td></td>").append(item.id)
				var recorder = $("<td></td>").append(item.user.name)					
				var recorddate = $("<td></td>").append(date)
				var statusbeforefeed = $("<td></td>").append(item.statusbeforefeed)
				var feedobject = $("<td></td>").append(item.feedobject)
				var feedprocess = $("<td></td>").append(item.feedprocess)
				
				$("<tr></tr>").append(id).append(recorder).append(recorddate).append(
						statusbeforefeed).append(feedobject).append(feedprocess).appendTo("#feed_table tbody");
			});	
		}
		
		function loadtableex(pn){
			$.ajax({	
				url : "${root_path}user_archives/loadex",
				data : "id=" + id+"&pn="+pn,
				type : "GET",
				success : function(result) {
					to_ex(result);
					build_page_info4(result);
					build_page_nav4(result);
				}
			});
		}
		
		function to_ex(result){
			var files = result.extend.pageInfo.list;
			$("#ex_table tbody").empty();
			$.each(files, function(index, item) {
				var timestamp = item.experimentdate;
				var d = new Date(timestamp);    //根据时间戳生成的时间对象
				var date = (d.getFullYear()) + "-" + 
				           (d.getMonth() + 1) + "-" +
				           (d.getDate())         
				var id = $("<td></td>").append(item.id)
				var experimenternumber = $("<td></td>").append(item.user.name)					
				var experimentpurpose = $("<td></td>").append(item.experimentpurpose)
				var experimentlocation = $("<td></td>").append(item.experimentlocation)
				var experimentapproach = $("<td></td>").append(item.experimentapproach)
				var experimentrecord = $("<td></td>").append(item.experimentrecord)
				var experimentresult = $("<td></td>").append(item.experimentresult)
				var experimentdate = $("<td></td>").append(date)
	
				$("<tr></tr>").append(id).append(experimenternumber).append(experimentpurpose).append(
							experimentlocation).append(experimentapproach).append(experimentrecord).append(
							experimentresult).append(experimentdate).appendTo("#ex_table tbody");
			});	
		}
		
		function getclear(){
		// 清空页面数据--表格
			$("#health_table tbody").empty();
			$("#breed_table tbody").empty();
			$("#feed_table tbody").empty();
			$("#ex_table tbody").empty();	
		// 清空页面数据 -- 表单
			$("#aa_aid").empty();
			$("#aa_eid").empty();
			$("#aa_idate").empty();
			$("#aa_iuser").empty();
			$("#aa_ruser").empty();
			$("#aa_intro").empty();
			$("#aa_authz").empty();
			$("#aa_adverts").empty();
			$("#aa_price").empty();
			
			$("#ab_aid").empty();
			$("#ab_weight").empty();
			$("#ab_length").empty();
			$("#ab_blood").empty();
			$("#ab_origin").empty();
			$("#ab_intro").empty();
			$("#ab_kind").empty();
			$("#ab_gender").empty();

		}
        
        //分页条1
		function build_page_nav1(result) {
			//page_nav_area
			$("#page_nav_area1").empty();

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
					loadtablehealth(1);
				});
				prePageLi.click(function() {
					loadtablehealth(result.extend.pageInfo.pageNum - 1);
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
					loadtablehealth(result.extend.pageInfo.pages);
				});
				nextPageLi.click(function() {
					loadtablehealth(result.extend.pageInfo.pageNum + 1);
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
					loadtablehealth(item);
				})
				ul.append(pageLi);
			});
			ul.append(nextPageLi).append(lastPageLi);
			var navEle = $("<nav></nav>").append(ul);
			$("#page_nav_area1").append(navEle);
		}
		
		//分页信息1
		function build_page_info1(result) {

			$("#page_info_area1").empty();

			$("#page_info_area1").append(
					"当前第 " + result.extend.pageInfo.pageNum + " 页" + " 总 "
							+ result.extend.pageInfo.pages + " 页" + " 总 "
							+ result.extend.pageInfo.total + " 条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
       
    	//分页条2
		function build_page_nav2(result) {
			//page_nav_area
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
					loadtablebreed(1);
				});
				prePageLi.click(function() {
					loadtablebreed(result.extend.pageInfo.pageNum - 1);
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
					loadtablebreed(result.extend.pageInfo.pages);
				});
				nextPageLi.click(function() {
					loadtablebreed(result.extend.pageInfo.pageNum + 1);
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
					loadtablebreed(item);
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

        //分页条3
		function build_page_nav3(result) {
			//page_nav_area
			$("#page_nav_area3").empty();

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
					loadtablefeed(1);
				});
				prePageLi.click(function() {
					loadtablefeed(result.extend.pageInfo.pageNum - 1);
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
					loadtablefeed(result.extend.pageInfo.pages);
				});
				nextPageLi.click(function() {
					loadtablefeed(result.extend.pageInfo.pageNum + 1);
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
					loadtablefeed(item);
				})
				ul.append(pageLi);
			});
			ul.append(nextPageLi).append(lastPageLi);
			var navEle = $("<nav></nav>").append(ul);
			$("#page_nav_area3").append(navEle);
		}
		
		//分页信息3
		function build_page_info3(result) {

			$("#page_info_area3").empty();

			$("#page_info_area3").append(
					"当前第 " + result.extend.pageInfo.pageNum + " 页" + " 总 "
							+ result.extend.pageInfo.pages + " 页" + " 总 "
							+ result.extend.pageInfo.total + " 条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}

        //分页条4
		function build_page_nav4(result) {
			//page_nav_area
			$("#page_nav_area4").empty();

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
					loadtableex(1);
				});
				prePageLi.click(function() {
					loadtableex(result.extend.pageInfo.pageNum - 1);
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
					loadtableex(result.extend.pageInfo.pages);
				});
				nextPageLi.click(function() {
					loadtableex(result.extend.pageInfo.pageNum + 1);
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
					loadtableex(item);
				})
				ul.append(pageLi);
			});
			ul.append(nextPageLi).append(lastPageLi);
			var navEle = $("<nav></nav>").append(ul);
			$("#page_nav_area4").append(navEle);
		}
		
		//分页信息4
		function build_page_info4(result) {

			$("#page_info_area4").empty();

			$("#page_info_area4").append(
					"当前第 " + result.extend.pageInfo.pageNum + " 页" + " 总 "
							+ result.extend.pageInfo.pages + " 页" + " 总 "
							+ result.extend.pageInfo.total + " 条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}

   
    </script>

</body>
</html>
