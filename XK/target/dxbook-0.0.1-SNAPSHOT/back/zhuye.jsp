<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="core"%>
<%@ taglib prefix="fmt" uri="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ENDDING</title>
<style type="text/css">
body{
	width:1200px;
	height:170px;
	background-image:url(images/a1.jpg);
	display:block;
}
#lead{
	margin-top:480px;
	margin-left:120px;
	width:1000px;
	height:160px;
}
#lead ul{
	list-style:none;
}
#lead ul li{
	float:left;
}
#commed{
	font-family:华文彩云;
	margin-left:80px;
	width:150px;
	height:50px;
	line-height:50px;
	font-size:20px;
	text-align:center;
	}
#commed a{
	text-decoration:none;
	}
#commed a:hover{
	text-decoration:none;
	font-size:28px;
	font-weight:bold;
	}
</style>
</head>

<body>
	<div id="lead">
    	<ul>
        	<li><div id="commed"><a href="postlist.html">留言板</a></div></li>	
            <li><div id="commed"><a href="userlist.html">用户管理</a></div></li>	
            <li><div id="commed"><a href="gonggao.html">公告管理</a></div></li>	
            <li><div id="commed"><a href="flist.html">文件管理</a></div></li>	
        </ul>
    </div>
</body>
</html>
