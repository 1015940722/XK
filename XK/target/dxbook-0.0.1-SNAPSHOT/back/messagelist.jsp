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
		<title>东旭工作室后台管理系统</title>
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
				<a href="#">留言板管理</a>
				<a href="#" class="current">留言列表</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						
					
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon icon-pencil"></i>
								</span>
								<h5>留言列表</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
									<tr>
										<th>id</th>
										<th>标题</th>
										<th>作者</th>
										<th>内容</th>
										<th>日期</th>
										<th>删除</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${post}" var="post">
									<tr>
										<td><center>${post.pId}</center></td>
										<td><center>${post.pTitle}</center></td>
										<td><center>${post.pAuthor}</center></td>
										<td>
											<a id="add-event" data-toggle="modal" href="#modal-add-event" class="btn btn-success btn-mini"><i class="icon-plus icon-white" style="background-position: -408px -98px;"></i>查看</a>
											<div class="modal hide" id="modal-add-event">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">×</button>
													<h3>标题:${post.pTitle}<font/></h3>
												</div>
												<div class="modal-body">
													<div class="control-group">
														<label class="control-label">公告内容</label>
														<div class="controls">
															<textarea style="width:97%;" readonly>${post.pContent}</textarea>
														</div>
													</div>
												</div>
												<div class="modal-footer">
													<a href="#" class="btn" data-dismiss="modal">退出</a>
												</div>
											</div>
										</td>
										
										<td><center><fmt:formatDate value="${post.pDate}" pattern="yyyy-MM-dd" /></center></td>
										<td><center><a href="deleteitPost.html?pId=${post.pId}" onclick= "return confirm('真的要删除吗？？？再考虑考虑？？？');"><i class="icon-trash"></i>删除</a></center></td>
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
								           <a href="messagelist.html?startpage=${page-1}">上一页</a>
								          </c:if>
								          	<span>第${page}/${pagecount}页</span>
								          <c:if test="${page<pagecount}">
								           <span><a href="messagelist.html?startpage=${page+1}">下一页</a></span>
								         </c:if>
								         <form action="messagelist.html" method="get" onsubmit="return gotoo()">
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

            <script src="js/fullcalendar.min.js"></script>
            <script src="js/unicorn.calendar.js"></script>
	</body>
</html>
