<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>档案管理系统</title>
<link rel="icon" href="static/archive.ico" sizes="16x16">

<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="static/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<link href="static/bootstrap-3.3.7-dist/css/animate.css"
	rel="stylesheet">
<link href="static/bootstrap-3.3.7-dist/css/style.css" rel="stylesheet">

<!-- Bootstrap -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/jquery-1.11.0.min.js"></script>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<style>
        *{box-sizing: border-box;}
        body{
            background: #000;
            margin: 0;
            padding: 0;
            overflow: hidden;
            text-shadow: 0px 0px 80px;
        }
        h1{
            margin: 0;
            padding: 0;
            color: #0ff;
        }
        a{color: #fff;}
        /* 盒子↓ */
        p{
            margin: 0;
        }
        .box{
            /* 盒子宽度↓ ---最好别改*/
            width: 700px;
            /* 让视频居中对齐↓---最好别动 */
            text-align: center;
            /* border: 1px solid #f00; */
            color: #fff;
            
            position: absolute;
            margin: 20px auto 0;
            top: 20px;
            left: 0;
            right: 0;
        }
        /* 图片样式↓ */

        img{
            /* 视频宽度↓ ---最好不要大于上面盒子的宽度*/
            width: 700px;
            height: 390px;
            /* 灰色的描边↓ ---px是粗细 solid是实线 #555是颜色代码 可以百度html颜色代码修改*/
            border: 2px solid #222;
            /* 图片的圆角 */
            border-radius: 5px;
            /* 动画时间 */
            transition: 0.8s;
        }
        .img2:hover{border: 2px solid #980b18}

        .box>div{
            padding: 20px;
            /* border: 1px solid #f00; */
        }
        .szj{
            position: absolute;
            top: 0;
            left: 0;
            color: #fff;
            padding: 5px;
            border: 1px solid #eee;
            background-color: rgb(0,0,0,0.7)
        }
        .yl{
            display: inline;
            border-bottom:1px dotted #0ff;
        }
        .yl a{
            text-decoration: none;
            color:#c6d491;
            
        }
        .yl span{
            margin-right: 8px;
        }
    </style>
<!-- web路径：
	不以/开始的相对路径，以当前资源的路径为基准，！！！！！！！
	以/开始的相对路径，资源以服务器的路径为标准
	比如(http://localhost:3360):需要加上项目名
	http://localhost:3306/crud
 -->
<!-- 增加登录功能 -->
<!-- 设置访问人数 -->


<!-- Bootstrap -->
<link
	href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${APP_PATH}/static/js/jquery-1.11.0.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script
	src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<body >
	
<!-- <body class="gray-bg">
<body background="static/login.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%;
		background-attachment: fixed;">
	 -->
	<canvas id="canvas"></canvas>
    <!-- 以下js -->
    <script>
    var canvas = document.getElementById('canvas');
		var ctx = canvas.getContext('2d');


		canvas.height = window.innerHeight;
		canvas.width = window.innerWidth;
        // 下面的雷军就是代码雨的文字
		var texts = '动物档案管理'.split('');

		var fontSize = 16;
		var columns = canvas.width/fontSize;
		// 用于计算输出文字时坐标，所以长度即为列数
		var drops = [];
		//初始值
		for(var x = 0; x < columns; x++){
			drops[x] = 1;
		}

		function draw(){
			//让背景逐渐由透明到不透明
			ctx.fillStyle = 'rgba(0, 0, 0, 0.05)';
			ctx.fillRect(0, 0, canvas.width, canvas.height);
			//文字颜色
			ctx.fillStyle = '#0F0';
			ctx.font = fontSize + 'px arial';
			//逐行输出文字
			for(var i = 0; i < drops.length; i++){
				var text = texts[Math.floor(Math.random()*texts.length)];
				ctx.fillText(text, i*fontSize, drops[i]*fontSize);

				if(drops[i]*fontSize > canvas.height || Math.random() > 0.95){
					drops[i] = 0;
				}

				drops[i]++;
			}
		}
	setInterval(draw, 33);
	</script>
	<div class="modal fade" id="visitor_login_modal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">游客身份访问</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">访客身份将不具备任何修改权限，但您仍然可以浏览系统</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">关闭</button>
					<button type="button" id="inter_system_btn" class="btn btn-primary">内部系统</button>
					<button type="button" id="outer_system_btn" class="btn btn-primary">外部系统</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 开发者名单 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="producer_modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">开发者名单</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>指导老师：李林</p>
					<p>组长：宋怡馨</p>
					<p>组员：林超、车思聪、郭际虎、颜君峻、张靖祥</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="box">
	
	
	
	<duv id="contentt">
	<div class="middle-box text-center loginscreen animated fadeInDown">
		<div>
			<div>
				<h1 class="logo-name">G9</h1>
			</div>
			<h3>欢迎使用</h3>
			<h3>实验动物档案管理系统</h3>
			<p>Welcome to Experiment AnimalAchieve Management System!</p>
			<!-- <p>Please Login In First:</p>  -->
			<p>右键选择主题风格</p>
			<form class="m-t" role="form" id="userlogin_form">
				<div class="form-group">
					<input type="text"
						onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"
						class="form-control" id="username" placeholder="Telephone">
					<!-- 此内容为新增美化反馈信息的内容 -->
					<div class="invalid-feedback" id="username_input_feedback"></div>
				</div>
				<div class="form-group">
					<input type="password"
						onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"
						class="form-control" id="password" placeholder="Password">
					<div class="invalid-feedback" id="password_input_feedback"></div>
				</div>
				<button type="button" class="btn btn-info btn-block"
					data-toggle="modal" data-placement="top" id="visitor_in_btn" 
					title="访客身份将不具备任何修改权限，但您仍然可以浏览系统">以访客身份进入</button>
				<button type="button" class="btn btn-success btn-block"
					id="LoginForward">登陆</button>
			</form>
		</div>
	</div>
	</duv>

	<script type="text/javascript">
		//弹出modal
		$("#visitor_in_btn").click(function() {
			//弹出新增模态框
			$("#visitor_login_modal").modal({
				//backdrop : "static"
			});
		});
		
		//用户身份访问，内部系统
		$("#inter_system_btn").click(function() {
			window.location="${APP_PATH}/userlogin/interUser";
		});
		
		//用户身份访问，外部系统
		$("#outer_system_btn").click(function() {
			window.location="${APP_PATH}/userlogin/outerUser";
		});
		
		//登陆按钮点击事件		
		$("#LoginForward").click(function() {
			//发送ajax校验用户名是否可用
			var username = $("#username").val().trim();
			var password = $("#password").val().trim();
			var flag = 1;
			if (username == "") {
				show_validate_msg("#username", "error", "用户名不能为空");
				flag = 0;
			}
			if (password == "") {
				show_validate_msg("#password", "error", "密码不能为空");
				flag = 0;
			}
			if (flag == 0) {
				return;
			}
	
			$.ajax({
				url : "${APP_PATH}/userlogin",
				type : "POST",
				data : "userName=" + username + "&passWord=" + password,
				success : function(result) {
					if (result.code == 101) {
						show_validate_msg("#username", "success", "");
						show_validate_msg("#password", "success", "");
						window.location = "${APP_PATH}/userlogin/interUser";
					} else if (result.code == 102) {
						show_validate_msg("#username", "success", "");
						show_validate_msg("#password", "success", "");
						window.location = "${APP_PATH}/userlogin/outerUser";
					} else if (result.code == 201) {
						document.getElementById('password').value = '';
						show_validate_msg("#password", "error", "密码错误");
					} else {
						show_validate_msg("#username", "error", "该用户不存在");
						document.getElementById('password').value = '';
					}
	
				}
			});
		});
	</script>

	<!-- 此内容为新增美化反馈信息的内容 -->
	<script type="text/javascript">
		//合法性检验的输出
		function show_validate_msg(ele, status, msg) {
			$(ele).removeClass("is-invalid is-valid");
			$(ele).next("div").text("");
			if ("success" == status) {
				$(ele).addClass("is-valid");
				$(ele).next("div").text("");
			} else if ("error" == status) {
				$(ele).addClass("is-invalid");
				$(ele).next("div").text(msg);
			}
	
		}
	
		//用于清空表单样式
		function reset_form(ele) {
			$(ele).find(".form-control").removeClass("is-invalid is-valid");
			$(ele).find(".invalid-feedback").text("");
		}
	
		//当输入内容改变，清空之前的提示
		$("#password").change(function() {
			reset_form("#userlogin_form");
		});
		$("#username").change(function() {
			reset_form("#userlogin_form");
		});
	</script>

	</div>
	
	<!-- 右键弹出菜单 -->

	<div id="menu" style="width: 170px; background: #CCC;position: absolute; display: none;">
		<a class="dropdown-item" href="login.jsp">
			良辰美景主题
		</a> 
		<a class="dropdown-item" href="login2.jsp">
			<span class="nav-label">黑客帝国主题</span>
			<span class="glyphicon glyphicon-ok">&nbsp;</span>
		</a>
		<div class="dropdown-divider"></div>
		<button class="dropdown-item" id="producer_btn">开发者名单</button>
		
	</div>
	<script>	//　获取当前的元素
		var content = document.getElementById("contentt");
		content.oncontextmenu = function(ev) {
			//阻止鼠标的默认事件
			ev.preventDefault(); //做一些兼容性的处理
			var ev = ev || event;
			var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
			menu.style.display = "block";
			menu.style.left = ev.clientX + "px";
			//当滑动滚动条时也能准确获取菜单位置
			menu.style.top = ev.clientY + scrollTop + "px";
		// return false;
		}
		content.onclick = function(){
			menu.style.display = "none";
		}
		
		//显示开发者名单
		$("#producer_btn").click(function() {
			$("#producer_modal").modal({});
			menu.style.display = "none";
		});
	</script>
</body>
</html>



