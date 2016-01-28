<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap-3.3.5-dist/css/bootstrap.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>明德办公系统</title>
<style type="text/css">
	body{
		background:url(images/banner-1.jpg)no-repeat center fixed;
		background-size:100%;
	}
	#head{
		margin-top: 20px;
	}
	.logo{
		height:60px;
		padding-left: 80px;
	}
	.navigation{
		margin-left: 500px;
	}
	li{
		list-style:none;
		float: left;
		padding-right: 60px;
		font-size: 20px;
	}
	.menu{
		padding-top:0px;
		padding-left: 690px;
	}
	#center{
		/* margin-top: 150px; */
		padding-top:100px;
		margin-left: 540px;
	}
	#login,#register{
		width: 100px;
		margin-left: 30px;
	}
	#login{
		background:#00ccff;
	}
	#register{
		background:#ff0030;
		padding-left: 20px;
	}
	#fn1{
		color:white;
	}
	#fn2{
		color:#00ccff;
	}
	#font{
		height:50px;
		padding-top:60px;
		padding-left: 360px;
	}
	h1{
		font-size: 46px;
	}
	h2 {
		font-size: 27px;
		padding-left: 215px;
	}
	#f1{
		height:50px;
		margin-top:130px;
		margin-left: 400px;
	}
</style>
</head>
<body onkeydown="keyLogin();">
<div id="head">
	<div class="logo">
		<a href="#"><img src="images/logo.png" alt="" /></a>
	</div>
	<div class="menu">
		<ul>
			<li><a href="index.html">首页</a></li>
			<li><a href="#services">业务</a></li>
			<li><a href="#experties">备忘录</a></li>
			<li><a href="#pricing">校园新闻</a></li>
			<li><a href="#team">关于Aaban</a></li>
		</ul>
	</div>
</div>
<br/>
<div class="modal" id="mymodal">
    <div class="modal-dialog"style="width: 350px; height: 120px;margin-top: 220px;">
        <div class="modal-content" style="width: 150px;">
            <div class="modal-header" style="background-color: white; width: 350px;height: 40px;">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title"><strong>警告</strong></h4>
			</div>
			<div class="modal-body" style="background-color: white;width: 350px;height: 80px;">
				<h5 class="modal-title">账户信息错误</h5>
			</div>
		</div>
	</div>
</div>
<div id="font">
	<h1>Welcome To <strong id="fn1">Aab</strong><strong id="fn2">an</strong> Office System!</h1>
		<h2>&nbsp;&nbsp;&nbsp;Ming De College</h2>
</div>
<div id="f1">
<form class="form-inline">
    <label for="userId"><h3><strong>Userid</strong></h3></label>
    <input type="text" class="form-control" id="userId" placeholder="userid">
    <label for="password"><h3><strong>Password</strong></h3></label>
    <input type="password" class="form-control" id="password" placeholder="password">
</form>
</div>
<div id="center">
	<a id="login" href="#" class="btn btn-info btn-lg">login</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a id="register" href="#" class="btn btn-info btn-lg">sign up</a>
</div>
<script type="text/javascript">
function keyLogin(){
	 if(event.keyCode==13)  //回车键的键值为13
	   $('#login').click(); 
	}
	$('.alert alert-danger').hide();
	$('#login').click(function(){
		if($('#userId').val()=='gaozhen'&&$('#password').val()=='123'){
			window.location.href="index.jsp";
		}else{
			$("#mymodal").modal("toggle");
			return;
		}
	});
</script>
</body>
</html>