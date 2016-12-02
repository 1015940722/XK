<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>学库后台管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/fullcalendar.css" />	
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body style="height:100%;">
		
		
		<div id="header">
			<h1><a href="./dashboard.html">东旭工作室后台管理系统</a></h1>		
		</div>
		<div style="width:220px;height:75px;z-index:2000;position:absolute;left:0px;top:0px;"><img src="images/111.jpg" style="width:220px;height:75px;"/></div>
		
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-user"></i> <span class="text">${adminame}</span></a></li>
                
                
                <li class="btn btn-inverse">
					<a title="" href="loginout.html">
						<i class="icon icon-share-alt"></i> 
						<span class="text">注销</span>
					</a>
				</li>
            </ul>
        </div>
            
		<div id="sidebar">
			<a href="#" class="visible-phone"><i class="icon icon-home"></i>后台首页</a>
			<ul>
				<li class="active"><a href="index02.html" target="iframe"><i class="icon icon-home"></i> <span>后台首页</span></a></li>
				
				<li class="submenu">
				<c:if test="${adminrank==1}">
					<a href="#"><i class="icon icon-user"></i> <span>后台管理人员</span> <span class="label">2</span></a>
					<ul>
						<li><a href="adminlist.html" target="iframe">管理人员列表</a></li>
						<li><a href="adminadd.html" target="iframe">增加管理人员</a></li>
					</ul>
					</c:if>
				</li>
				<li class="submenu">
					<a href="#"><i class="icon icon-file"></i> <span>视频管理</span> <span class="label">3</span></a>
					<ul>
						<li><a href="findvedio.html" target="iframe">视频列表</a></li>
						<li><a href="upload.html" target="iframe">视频上传</a></li>
					</ul>
				</li>
				<li class="submenu">
					<a href="#"><i class="icon icon-inbox"></i> <span>学科管理</span> <span class="label">2</span></a>
					<ul>
						<li><a href="findtype.html" target="iframe">学科列表</a></li>
						<li><a href="typeadd.html" target="iframe">增加学科</a></li>
					</ul>
				</li>
				<li class="submenu">
					<a href="#"><i class="icon icon-list-alt"></i> <span>留言管理</span> <span class="label">1</span></a>
					<ul>
						<li><a href="findm.html" target="iframe">留言列表</a></li>
					</ul>
				</li>
			</ul>
		
		</div>
		
		<div id="content">
			<div id="content-header">
				<h1>欢迎归来！</h1>
				
			</div>
			
		<!------------------------------------------------>
			<div class="main-content">

				<iframe border="0" frameSpacing="0" frameBorder="no" cols="100%" style="width:100%;height:513px;" src="white.html" name="iframe" >

				</iframe>

			</div><!-- /.main-content -->

			
		<!------------------------------------------------>
		</div>
		

            <script src="js/excanvas.min.js"></script>
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.flot.min.js"></script>
            <script src="js/jquery.flot.resize.min.js"></script>
            <script src="js/jquery.peity.min.js"></script>
            <script src="js/fullcalendar.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.dashboard.js"></script>
	</body>
</html>
