<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="core" prefix="c"%>
<%@ taglib uri="fmt" prefix="fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js lt-ie9 lt-ie8" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js lt-ie9" lang="en"><![endif]-->
<!--[if (IE 9)]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>

<!-- Meta Tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>学库</title>   

<meta name="description" content="Insert Your Site Description" /> 

<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>   

<!-- Mobile Internet Explorer ClearType Technology -->
<!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->

<!-- Bootstrap -->
<link href="_include/css/bootstrap.min.css" rel="stylesheet">

<!-- jquery -->
<script type="text/javascript" src="_include/js/jquery-1.11.1.min.js"></script>

<!-- Main Style -->
<link href="_include/css/main.css" rel="stylesheet">

<!-- Supersized -->
<link href="_include/css/supersized.css" rel="stylesheet">
<link href="_include/css/supersized.shutter.css" rel="stylesheet">


<!-- Font Icons -->
<link href="_include/css/fonts.css" rel="stylesheet">

<!-- Shortcodes -->
<link href="_include/css/shortcodes.css" rel="stylesheet">

<!-- Responsive -->
<link href="_include/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="_include/css/responsive.css" rel="stylesheet">

<!-- Supersized -->
<link href="_include/css/supersized.css" rel="stylesheet">
<link href="_include/css/supersized.shutter.css" rel="stylesheet">

<!-- Google Font -->
<link href='intdaim/xin.css' rel='stylesheet' type='text/css'>

<!-- Fav Icon -->
<link rel="shortcut icon" href="#">

<link rel="apple-touch-icon" href="#">
<link rel="apple-touch-icon" sizes="114x114" href="#">
<link rel="apple-touch-icon" sizes="72x72" href="#">
<link rel="apple-touch-icon" sizes="144x144" href="#">

<!-- Modernizr -->


<!-- Analytics -->
<style type="text/css">
</style>

<!-- End Analytics -->
<!-- tanchuang -->

<style type="text/css">

input{margin:10px 0px;}
input{width:height:25px;}
#div1{position:fixed;left:0;top:0;width:100%;height:100%;display:table;background:rgba(0,0,0,0.5);display:none;position:absoulte;z-index:5555;}
#div2{width:300px;height:300px; border:10px solid #4D4D4D(255,153,51,0.3);border-radius:10px;background:rgba(255,255,255,0.7);position:fixed;left:40%;top:30%;z-index:100;}
#div3{position:fixed;left:0;top:0;width:100%;height:100%;display:table;background:rgba(0,0,0,0.5);display:none;position:absoulte;z-index:5555;}
#div4{width:300px;height:300px; border:10px solid #4D4D4D(255,153,51,0.3);border-radius:10px;background:rgba(255,255,255,0.7);position:fixed;left:40%;top:30%;z-index:100;}
</style>

<!--/tanchuang-->
<script type="text/javascript" src="_include/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#username").blur(function(){
			$.ajax({
				type:"GET",
				url:"checkUser.htm",
				data:"username="+$("#username").val(),
				beforeSend:function(XMLHttpRequest)
                {	
                    $("#wenzi").text("正在查询...");
                },
                success:function(msg)
                {   
                   if(msg==0){
                   	$("#wenzi").text("该用户可以注册");
                   	$("input[name=tijiao]").show();
                   }else if(msg==1||msg>1){                      
                   	$("#wenzi").text("该用户已存在,不允许注册");
                   	$("input[name=tijiao]").hide();
                   }
                }
			});
		});
	});
	</script>
</head>
<!--********************************************************************************************************************************************************************************************************************************************-->
<body>

<!-- This section is for Splash Screen -->
<div class="ole">
<section id="jSplash">
	<div id="circle"></div>
</section>
</div>
<!-- End of Splash Screen -->

<!-- Homepage Slider -->
<div id="home-slider">	
    <div class="overlay"></div>

    <div class="slider-text" style="top:30%;">
    	<div id="slidecaption"></div><!--this is yemian biaoti-->
    </div>   
	
	<div class="control-nav">
        <a id="prevslide" class="load-item"><i class="font-icon-arrow-simple-left"></i></a>
        <a id="nextslide" class="load-item"><i class="font-icon-arrow-simple-right"></i></a>
        <ul id="slide-list"></ul>
        
        <a id="nextsection" href="#file"><i class="font-icon-arrow-simple-down"></i></a>
    </div>
</div>

<!-- End Homepage Slider -->

<!-- Header -->
<header>
    <div class="sticky-nav">
    	<a id="mobile-nav" class="menu-nav" href="#menu-nav"></a>
       	<c:if test="${not empty userName}"><div id="logo"><div style="float:left;margin-left:120px;font-family:Icons;">欢迎归来，${userName}</div><a onclick="if(confirm('确定下线吗 ？')){window.location.href='loginout.htm';}" title="注销">ztf</a></div></c:if>
        <nav id="menu">
        	<ul id="menu-nav">
            	<li class="current"><a href="#home-slider">主页</a></li>
                <li><a href="#file">视频</a></li>
                <li><a href="#contact">留言</a></li>
            </ul>
        </nav>
        
    </div>
</header>
<!-- End Header -->
<!-- **************************************************************************denglu********************************************************************* -->
<div id="div1">
<div id="div2">
<form action="loginit.htm" method="post" style="width:240px;margin:50px auto;">
用户名：<input type="text"   placeholder="yourname" name="username"/><br />
密码: <input type="password"   placeholder="password" name="password"/> <br />

<input type="submit" value="登录"  style="background:#7D7D7D;width:100px;height:35px;border:1px solid #7d7d7d">&nbsp;
<input type="reset" value="重写"  style="background:#7D7D7D;width:100px;height:35px;border:1px solid #7d7d7d"><br>
&nbsp;&nbsp;
<a onclick="sp('div1')">[退出]</a>
</form>
</div>
</div>
<!-- **************************************************************************zhuxiao********************************************************************* -->
<div id="div3">
<div id="div4">
<form action="loginout.htm" method="post" style="width:240px;margin:50px auto;">
${userName},确认下线吗？
<input type="submit" value="确认注销"  style="background:#7D7D7D;width:100px;height:35px;border:1px solid #7d7d7d">&nbsp;
&nbsp;&nbsp;
<a  onclick="sp('div3')">[close]</a>
</form>
</div>
</div>
<!-- Twitter Feed -->
<!-- End Twitter Feed -->
<!-- Our Work Section -->
<a name="xiazai" id="xiazai"> </a>
<div id="file" class="page">
	<div class="container">
    	<!-- Title Page -->
        <div class="row">
            <div class="span12">
                <div class="title-page">
                    <h2 class="title">视频</h2>
                  <h3 class="title-description">你可以在这里选择你想要的视频进行学习</h3>
                </div>
            </div>
        </div>
        <!-- End Title Page -->

<!--***************************************************************************************************************************************************************************************************************************-->       
        <!-- Portfolio Projects -->
      
<div class="row">
	<center><h3><c:if test="${lei==0}">all projects</c:if><c:if test="${lei==1}">document</c:if><c:if test="${lei==2}">video</c:if><c:if test="${lei==3}">code</c:if></font></h3></center>
        	<div class="span3">
            	<!-- Filter -->
                <nav  class="work-nav">
                    <ul id="filters" class="option-set" data-option-key="filter">
                    	<li class="type-work">课程列表</li>
                        <a href="index.htm#xiazai" ><li><a href="index.htm#xiazai"  class="selected document" >所有视频</a></li></a>
                        <c:forEach items="${type}" var="type">
                        <a href="findtype.htm?lei=${type.tName }#xiazai"><li><a href="findtype.htm?lei=${type.tName }#xiazai" data-option-value=".code" onclick="gototo(3);">${type.tName }</a></li></a>
                   		</c:forEach>
                    </ul>
                    <div class="row space30" style="border=0px;"> <!-- row 1 begins -->
                        <div class="col-xs-6 col-sm-3">
                            <div class="page-header" style="float:left;">
                                <form action="findv.htm#xiazai" method="get" id="contact-form" class="contact-form" >
                                    <input type="text" maxLength="14" name="content" placeholder="输入关键字" class="form-control"/>
                                    <br/>
                                    <p class="contact-submit">
                						<button  class="submit" type="submit" style="color:#fff;border-color: #696969" >submit</button>
                					</p>
                                    <br><br>
                                    	<center>
                                    		<a href="index.htm?startpage=1#xiazai">首页</a> 
                                    		<c:if test="${page!=1}"><a href="index.htm?startpage=${fpage-1}#xiazai">上一页</a></c:if>
                                    		<c:if test="${page<pagecount}"><a href="index.htm?startpage=${fpage+1}#xiazai">下一页</a></c:if>
                                    		<a href="index.htm?startpage=${pagecount}#xiazai">尾页</a>
                                    	</center>
                                    <center>第 ${page}/${pagecount} 页</center>
                                </form>
                            </div>
                        </div>
                        
                    </div> <!-- /row 1 -->
                </nav>
                <!-- End Filter -->
            </div>
            <div class="copyrights">Collect from <a href="#" >Website Template</a></div>
            <div class="span9">
            	<div class="row">
                	<section id="projects">
                    	<ul id="thumbs">
 <!--****************************************zhelishixiazai*******************************************-->                       
							<!-- Item Project and Filter Name -->
                          <c:forEach items="${file}" var="file">
                        	<a href="play.htm?id=${file.vId}" target="_blank"><li class="item-thumbs span3 caonima" style="width:270px;height:217px;background:url(images/222.png);">
                               <div style="color:#000;font-size:25px;font-weight:bold;margin-top:25px;margin-left:10px;height:50px;width:220px;">${file.vName}</div>
                               <div style="width:220px;height:130px;margin-left:10px;">&nbsp;&nbsp;&nbsp;&nbsp;${file.vContent}</div>
                            </li></a>
						</c:forEach>
                        	<!-- End Item Project -->							
                        </ul>
                    </section>
                    
            	</div>
            </div>
        </div>
        <!-- End Portfolio Projects -->
    </div>
</div>
<!-- End Our Work Section -->
<!--*****************************************************************************************************************
<!-- Contact Section -->
<a name="message" id="message"> </a>
<div id="contact" class="page">
<div class="container">
    <!-- Title Page -->
    <div class="row">
        <div class="span12">
            <div class="title-page">
                <h2 class="title">留言</h2>
                <h3 class="title-description">写下你们相对我们说的话</h3>
            </div>
        </div>
    </div>
    <!-- End Title Page -->
    
    <!-- Contact Form -->
    <div class="row">
    	<div class="span9">
        
        	<form action="additPost.htm" name="formq" method="post" id="contact-form" class="contact-form" ">
               
                <p class="contact-message">
                	<textarea id="contact_message" placeholder="你想说的话" name="content" rows="15" cols="40"></textarea>
                </p>
                <p class="contact-submit">
                	<button id="but" class="submit" type="button" style="border-color: #696969" >submit</button>
                </p>
                 
                <div id="response">
                	
                </div>
            </form>
         <script>
         	document.getElementById("but").oncluck = function(){
         		if(document.getElementById("contact_message"),value!=''){
         			alert('发送成功，多谢支持');
         			document.getElementById("formq").submit();
         		}else{
         			alert('请填写标题或者内容');
         		}
         	}
         </script>
        </div>
        
        <div class="span3">
        	<div class="contact-details">
        		<h3>联系我们</h3>
                <h3>识库</h3>
                <ul>
                    <li><a href="#">Welcome</a></li>
                    <li>8888-8888</li>
                    <li>
                         	中国
                        <br>
                       	浙江 
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- End Contact Form -->
</div>
</div>
<!-- End Contact Section -->

<!--*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************-->


<!-- Socialize -->
<div id="social-area" class="page-alternate">
<center><h2>Connection</h2></center>
	<div class="container">
    	<div class="row">
            <div class="span12">
                <nav id="social">
                    <ul>
                        <li><label><a href="http://yun.baidu.com/" title="Follow Me on Twitter" target="_blank"><span class="font-icon-social-twitter"></span></a>百度云</label></li>
                        <li><label><a href="http://www.csdn.net/" title="Follow Me on Forrst" target="_blank"><span class="font-icon-social-forrst"></span></a>CSDN IT社区</label></li>
                        <li><label><a href="http://coolshell.cn/"  title="Follow Me on Behance" target="_blank"><span class="font-icon-social-behance"></span></a>酷壳网</label></li>
                        <li><label><a href="http://www.w3school.com.cn/"  title="Follow Me on Facebook" target="_blank"><span class="font-icon-social-facebook"></span></a>W3C</label></li>
                        <li><label><a href="http://www.codecademy.com/zh/" title="Follow Me on Google Plus" target="_blank"><span class="font-icon-social-google-plus"></span></a>代码学院</label></li>
                        <li><label><a href="http://www.zjweu.edu.cn/" title="Follow Me on Dribbble" target="_blank"><span class="font-icon-social-dribbble"></span></a>校网</label></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>

					<div class="aaww" style="width:300px;height:200px;position:absolute;left:530px;top:175px;">
                    	<img src="images/111.png" style="width:300px;height:200px;"/>
					</div>
<!-- End Socialize -->

<!-- Footer -->
<!-- End Footer -->

<!-- Back To Top -->
<a id="back-to-top" href="#">
	<i class="font-icon-arrow-simple-up"></i>
</a>
<!-- <a href="#" id="back-to-top"><li class="font-icon-user"></li></a> -->
<!-- End Back to Top -->


<!-- Js -->
<script src="intdaim/jq.js"></script> <!-- jQuery Core -->
<script src="_include/js/bootstrap.min.js"></script> <!-- Bootstrap -->
<script src="_include/js/supersized.3.2.7.min.js"></script> <!-- Slider --><!-- xiaoguo -->
<script src="_include/js/waypoints.js"></script> <!-- WayPoints -->
<script src="_include/js/waypoints-sticky.js"></script> <!-- Waypoints for Header -->
<script src="_include/js/jquery.isotope.js"></script> <!-- Isotope Filter --><!--/ xiaoguo -->
<script src="_include/js/jquery.tweet.js"></script> <!-- Tweet -->
<script src="_include/js/plugins.js"></script> <!-- Contains: jPreloader, jQuery Easing, jQuery ScrollTo, jQuery One Page Navi -->
<script src="_include/js/main.js"></script> <!-- Default JS -->
<script src="_include/js/modernizr.js"></script>
<!-- End Js -->

<script type="text/javascript">
window.onload=function() {
var oBtn1=document.getElementById('btn1');
var oDiv1=document.getElementById('div1');
oBtn1.onclick=function(){
(oDiv1.style.display=='block') ? oDiv1.style.display='none' : oDiv1.style.display='block';
	};
};
function sp(aaa){
	var qqq=document.getElementById(aaa);
	qqq.style.display='none';
	document.getElementById('div1').style.display='none';
}
</script>

<!--************************************用户提交验证******************************************************-->
<script type="text/javascript">
function beforeSubmit(form){
if(form.uUsername.value==''){
alert('用户名不能为空！');
form.uUsername.focus();
return false;
}
if(form.uName.value.length==''){
alert('姓名 不允许为空');
form.uName.focus();
return false;
}
if(form.uPassword.value==''){
alert('密码不能为空！');
form.uPassword.focus();
return false;
}
if(form.uPassword.value.length<6){
alert('密码至少为6位，请重新输入！');
form.uPassword.focus();
return false;
}
if(form.uPassword.value!=form.uPassword2.value) {
alert('你两次输入的密码不一致，请重新输入！');
form.uPassword2.focus();
return false;
}
return true;
}
</script>
<!--************************************留言提交验证******************************************************-->
<script type="text/javascript">
function beforePost(form){
if(form.pTitle.value==''){
	form.pTitle.value='null';
}
if(form.pContent.value==''){
alert('内容不能为空！');
form.pContent.focus();
return false;
}
return true;
}
</script>
<!--************************************注册提交验证******************************************************-->
<script type="text/javascript">
function check(){
if($("#wenzi").val().equals("该用户已存在")){
alert('该用户名已经存在！');
window.href.location="index.htm#registration";
	}
}
</script>

</body>
</html>