<!DOCTYPE html>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("root_path", basePath);
%>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>500 Error</title>
	<link rel="icon" href="static/archive.ico" sizes="16x16">
	
    <link href="${root_path}static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${root_path}static/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${root_path}static/bootstrap-3.3.7-dist/css/animate1.css" rel="stylesheet">
    <link href="${root_path}static/bootstrap-3.3.7-dist/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">


    <div class="middle-box text-center animated fadeInDown">
        <h1>500</h1>
        <h3 class="font-bold">Internal Server Error</h3>
        <div class="error-desc">
            <br/>
            	The server encountered something unexpected that didn't allow it to complete the request. We apologize.
            <br/>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>

</body>

</html>
