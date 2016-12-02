<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <title>东旭图书管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/unicorn.login.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
    <body>
        <div id="logo">
            <img src="img/logo.png" alt="" />
        </div>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="loginit.html" method="post"/>
				<p>输入你的账户及密码</p>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span>
							<input type="text" placeholder="Username" name="aname"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="Password" name="apassword" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="登陆" /></span>
                </div>
            </form>
        </div>
        <script src="js/jquery.min.js"></script>  
        <script src="js/unicorn.login.js"></script> 
    </body>
</html>
