<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="core" %>
<%@ taglib prefix="fmt" uri="fmt" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Unicorn Admin</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/colorpicker.css" />
        <link rel="stylesheet" href="css/datepicker.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/progressBar.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<style type="text/css">
			body {
				font-size: 11px;
			}
			
			#progress {
				left: 400px;
				top: 200px;
				position: absolute;
				width: 345px;
				height: 85px;
				border: 1px solid black;
				display: none;
			}
			
			#progressBar {
				border: 1px solid black;
				width: 300px;
				height: 30px;
				margin-left: 20px;
				margin-top: 15px;
			}
			
			#uploaded {
				height: 30px;
				width: 1px;
				background:url("<%=path%>/back/images/jindu.gif");
			}
			
			#title {
				height: 20px;
				background-color: #B511F0;
				pading: -10px;
				font-size:15px;
			}
			
			#close {
				width: 30px;
				height: 10px;
				right: 1px;
				top: 0px;
				position: absolute;
				display: none;
				cursor: pointer;
			}
		</style>
	</head>
	<body style="background:#EEE;">
		
		<div id="content" style="margin-left:0px; min-height:400px;">
			
			<div id="breadcrumb" style="height:40px;line-height:33px;">
				<a href="index02.html" title="去首页" class="tip-bottom"><i class="icon-home"></i>后台首页</a>
				<a href="#">文件管理</a>
				<a href="#" class="current">上传文件</a>
			</div>

			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon icon-inbox"></i>
								</span>
								<h5>上传文件</h5>
							</div>
							<!--------------------------------------------->
							<div class="widget-content nopadding">
								<form id="uploadForm" action="up.html" method="post" class="form-horizontal" enctype="multipart/form-data"/>
									<div class="control-group">
										<label class="control-label">视频名称</label>
										<div class="controls">
											<input type="text" id="qtitle" name="title"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">视频简介</label>
										<div class="controls">
											<input type="text" name="content" id="qcontent" maxLength="80"/>
										</div>
									</div>	
									<div class="control-group">
										<label class="control-label">视频类型</label>
										<div class="controls">
											<select id="qkind" name="kind">
												<c:forEach items="${lei}" var="type">
												<option value="${type.tName}">${type.tName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<input id="fileName" name="fileName" type="hidden" value=""/>
									
									<div class="control-group">
										<label class="control-label">文件上传</label>
										<div class="controls">
											<input type="file" id="qupload" name="file" />
										</div>
									</div>
									<div class="form-actions">
										<input type="button" id="subButton" value="提交" class="btn btn-primary" onclick="jiance()"/>
									</div>
								</form>
							</div>
							<!--------------------------------------------->
						</div>
					</div>
				</div>
						<div id="progress">
							<div id="title" align="center">
								<span id="text">上传进度</span>
								<div id="close">
									关闭
								</div>
							</div>
							<div id="progressBar" class="progress progress-striped active">
				    			<div  id="uploaded" style="width: 0%;"></div>
							</div>
						<!--  	<div id="progressBar">
								<div id="uploaded"></div>
							</div>-->
							<div style="font-size:12px;" align="center" id="info"></div>
						</div>
				<div class="row-fluid">
					<div id="footer" class="span12">
						Copyright © 2014 东旭工作室|made by messTeam
					</div>
				</div>
			</div>
		</div>
		
<script >
	function jiance(){
		var temp = document.getElementById("qupload").value.split(".");
		var video = ['flv','mp4'];
		if(document.getElementById("qupload").value!=''&&document.getElementById("qtitle").value!=''){
			if(video.indexOf(temp[temp.length-1])==-1){alert('请上传正确文件');}
			else{
				document.getElementById("uploadForm").submit();
			}
		}else{alert('请填写所需参数');}
	}
</script>		
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/bootstrap-colorpicker.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.form_common.js"></script>
	</body>
</html>
