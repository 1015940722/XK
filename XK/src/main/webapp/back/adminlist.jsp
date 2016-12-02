<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="core" prefix="c"%>
<%@ taglib uri="fmt"  prefix="fmt"%>
<%@ taglib uri="fn"   prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Unicorn Admin</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body style="background:#EEE;">
		
		<div id="content" style="margin-left:0px; min-height:400px;">
			
			<div id="breadcrumb" style="height:40px;line-height:33px;">
				<a href="index02.html" title="去首页" class="tip-bottom"><i class="icon-home"></i>后台首页</a>
				<a href="#">后台管理人员</a>
				<a href="#" class="current">管理人员列表</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						
						
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon icon-user"></i>
								</span>
								<h5>管理人员列表</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
									<tr>
										<th>id</th>
										<th>管理员</th>
										<th>用户名</th>
										<th>密码</th>
										<th>等级</th>
										<th>日期</th>
										<th>操作</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${admin}" var="admin">
									<tr>
										<td><center>${admin.aId}</center></td>
										<td><center>${admin.aName}</center></td>
										<td><center>${admin.aUsername}</center></td>
										<td><center>${admin.aPassword}</center></td>
										<td><center>${admin.aRank}</center></td>
										<td><center><fmt:formatDate value="${admin.aLasttime}" pattern="yyyy-MM-dd hh:ss:SSS" /></center></td>
										<td><center>
											<c:if test="${admin.aRank!=1}"><a href="deleteitAdmin.html?id=${admin.aId}" onclick= "return confirm('真的要删除吗？？？再考虑考虑？？？');" ><i class="icon-trash"></i>删除</a>
											</c:if>
											</center>
										</td>
									</tr>
									</c:forEach>
									
									</tbody>
								</table>							
							</div>
							
						</div>


					</div>
				</div>
				
				<div class="row-fluid">
					<div id="footer" class="span12">
						Copyright © 2014 东旭工作室|made by messTeam
					</div>
				</div>
			</div>
		</div>
		
		
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/jquery.dataTables.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.tables.js"></script>
	</body>
</html>
