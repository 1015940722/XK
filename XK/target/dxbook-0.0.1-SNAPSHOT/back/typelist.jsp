<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="core" %>
<%@ taglib prefix="fmt" uri="fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>东旭工作室后台管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript">
function showDiv(fid){
var aaa;
if(fid.length>150){
	aaa='　　'+fid.substr(0,150)+'......';
}else if(fid.length>35&&fid,length<=150){
	aaa='　　'+fid;
}else{
	aaa=fid;
}
document.getElementById('neirong').value=aaa;
}
</script>
	</head>
	<body style="background:#EEE;">
		
		<div id="content" style="margin-left:0px; min-height:400px;">
			
			<div id="breadcrumb" style="height:40px;line-height:33px;">
				<a href="index02.html" title="去首页" class="tip-bottom"><i class="icon-home"></i>后台首页</a>
				<a href="#">学科管理</a>
				<a href="#" class="current">学科列表</a>
				<div style="float:right;">
					<form style="float:left;" action="findtype.html">
						<div style="margin-right:85px;margin-top:9px;">
						<input type="hidden" name="qo" value="5">
						<input type="text" maxLength="5" id="goto" name="content" placeholder="输入ID，账号或昵称"/>
						</div>
						<div style="float:right;margin-top:-43px;margin-right:30px;">
						<button type="submit" >搜索</button></div>
					</form>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						
						
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon icon-file"></i>
								</span>
								<h5>学科列表</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
									<tr>
										<th>id</th>
										<th>学科名</th>
										<th>该学科拥有课程数</th>
										<th>操作</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${type}" var="type">
									<tr>
										<td><center>${type.tId}</center></td>
										<td><center>${type.tName}</center></td>
										<td><center>${type.tSum}</center></td>
										<td><center><a href="deletet.html?tId=${type.tId}" onclick= "return confirm('真的要删除吗？？？再考虑考虑？？？');"><i class="icon-trash"></i>删除</a></center></td>
									</tr>
									</c:forEach>
									</tbody>
								</table>							
							</div>
							<center>
								<div>
								 <form action="findtype.html" method="get" onsubmit="return gotoo()">
									<c:if test="${page==0}">
							        <h1>没有这样的存货！亲！</h1>	
							         </c:if>
							         <c:if test="${page!=0}">
								        <c:if test="${page>1}">
								           <a href="gonggaolist.html?startpage=${page-1}">上一页</a>
								          </c:if>
								          	<span>第${page}/${pagecount}页</span>
								          <c:if test="${page<pagecount}">
								           <span><a href="gonggaolist.html?startpage=${page+1}">下一页</a></span>
								         </c:if>
								         	<input type="text" maxLength="5" id="goto" name="startpage" placeholder="跳转页面，最大数为${pagecount}"/>
								         	<button type="submit">Go</button>
								         </form>
							         </c:if>
							      </center>
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
            <scri pt src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/jquery.dataTables.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.tables.js"></script>
	</body>
</html>
