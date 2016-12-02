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
				<a href="#">留言管理</a>
				<a href="#" class="current">留言列表</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						
						
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon icon-file"></i>
								</span>
								<h5>公告列表</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
									<tr>
										<th>id</th>
										<th>内容</th>
										<th>日期</th>
										<th>操作</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${message}" var="ms">
									<tr>
										<td><center>${ms.mId}</center></td>
										<td><center><a id="add-event" data-toggle="modal" href="#modal-add-event" class="btn btn-success btn-mini" onclick="javascript:showDiv('${ms.mContent}')">显示全部</a></center>
										<div class="modal hide" id="modal-add-event">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">×</button>
											</div>
											<div class="modal-body">
												<div class="control-group">
													<label class="control-label">公告内容</label>
													<div class="controls">
														<textarea style="width:97%;" id="neirong" readonly></textarea>
													</div>
												</div>
											</div>
										</div>
										<td><center><fmt:formatDate value="${ms.mDate}" pattern="yyyy-MM-dd hh:ss:SSS" /></center></td>
										</td>
										<td><center><a href="deletem.html?mId=${ms.mId}" onclick= "return confirm('真的要删除吗？？？再考虑考虑？？？');"><i class="icon-trash"></i>删除</a></center></td>
									</tr>
									</c:forEach>
									</tbody>
								</table>							
							</div>
							<center>
									<c:if test="${page==0}">
							        <h1>没有这样的存货！亲！</h1>	
							         </c:if>
							         <c:if test="${page!=0}">
								        <c:if test="${page>1}">
								           <a href="findm.html?startpage=${page-1}">上一页</a>
								          </c:if>
								          	<span>第${page}/${pagecount}页</span>
								          <c:if test="${page<pagecount}">
								           <span><a href="findm.html?startpage=${page+1}">下一页</a></span>
								         </c:if>
								         <form action="findm.html" method="get" onsubmit="return gotoo()">
								         	<input type="text" maxLength="5" id="goto" name="startpage" placeholder="跳转页面，最大数为${pagecount}"/>
								         	<button type="submit">Go</button>
								         </form>
							         </c:if>
							      </center>
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
