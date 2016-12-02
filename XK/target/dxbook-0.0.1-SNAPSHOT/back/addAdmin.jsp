<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>购物车界面 - Bootstrap后台管理系统模版Ace下载</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<script type="text/javascript">
			function cupload(){
				var tt = document.getElementById("qtitle");
				var ff  = document.getElementById("qupload");
				if(ff.value!=''&&tt.value!=''){
					 return true;
				}else{
					alert("请填写所需参数并上传文件");
					return false;
				}
			}
		</script>
		<style tyep="text/css">
			.ace-file-multiple .file-label {
				width:500px;
				height:130px;
			}
		</style>
	</head>

	<body>
		<div class="main-content" style="padding:0px;">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
				</script>
	
				<ul class="breadcrumb">
					<li>
						<i class="icon-home home-icon"></i>
						<a href="#">后台管理</a>
					</li>
	
					<li>
						<a href="#">管理员管理</a>
					</li>
					<li class="active">增加管理员</li>
				</ul><!-- .breadcrumb -->
			</div>
			<div class="page-content">
				<div class="page-header">
					<h1 style="margin:10px;margin-left:350px;">
						增加管理员
					</h1>
				</div><!-- /.page-header -->
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<form name="form" class="form-horizontal" name="addAdmin" role="form" action="additAdmin.html" method="post" enctype="multipart/form-data">							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名 </label>

								<div class="col-sm-9">
									<input type="text" id="form-field-1"  placeholder="姓名" class="col-xs-10 col-sm-5" name="aName" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 账号 </label>

								<div class="col-sm-9">
									<input type="text" id="form-field-1"  placeholder="账号 " class="col-xs-10 col-sm-5" name="aUsername" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 密码 </label>

								<div class="col-sm-9">
									<input type="password" id="form-field-1"  placeholder="密码" class="col-xs-10 col-sm-5" name="aPassword" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 密码确认 </label>

								<div class="col-sm-9">
									<input type="text" id="form-field-1"  placeholder="暂时不可用" class="col-xs-10 col-sm-5" name="222" readonly />
								</div>
							</div>
							<div class="col-md-offset-3 col-md-9">
									<button class="btn btn-info" type="submit" >
										<i class="icon-ok bigger-110"></i>
										Submit
									</button>

									&nbsp; &nbsp; &nbsp;
									<button class="btn" type="reset">
										<i class="icon-undo bigger-110"></i>
										Reset
									</button>
							</div>
						</form>
				<div class="space-4"></div>
			</div>
		</div>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>


		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/chosen.jquery.min.js"></script>
		<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="assets/js/date-time/moment.min.js"></script>
		<script src="assets/js/date-time/daterangepicker.min.js"></script>
		<script src="assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="assets/js/jquery.knob.min.js"></script>
		<script src="assets/js/jquery.autosize.min.js"></script>
		<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
		<script src="assets/js/bootstrap-tag.min.js"></script>

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<script type="text/javascript">
			jQuery(function($) {
				$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'icon-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
					/**,before_remove : function() {
						return true;
					}*/
					,
					preview_error : function(filename, error_code) {
						//name of the file that failed
						//error_code values
						//1 = 'FILE_LOAD_FAILED',
						//2 = 'IMAGE_LOAD_FAILED',
						//3 = 'THUMBNAIL_FAILED'
						//alert(error_code);
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
			});
		</script>
</body>
</html>
