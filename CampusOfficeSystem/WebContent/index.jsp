<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link rel="stylesheet" type="text/css" href="jquery-ui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-ui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="jquery-ui/themes/demo.css">
<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<!-- <script src="js/jquery.gritter.min.js"></script>  -->
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 
<title>Aaban</title>
<style type="text/css">
	body{
		padding: 0px;
	}
	#tle{
		float:right;
		width:83.5%;
		height:7.9%;
		background-color: #222222;
	}
	#left{
		float:left;
		width: 16.5%;
		height: 100%;
		background-color: #2E363F;
	}
	#center{
		float:left;
		width: 83.5%;
		height: 92.1%;
	}
	#sidebar{
		width: 15%;
	}
	#fn1{
		float:left;
		color:white;
	}
	#fn2{
		color:#00ccff;
		float: left;
	}
	#content-header{
		margin-top: 0px;
	}
	.tickLabel{
		height: 30px;
	}
	#but1,#but2,#but3{
		/* filter:alpha(opacity=100); */
		background-color:#222222;
		/* opacity: 0.1;haha */
		border: 0px;
		color: #939DA8;
		margin-top: 10px;
		margin-left: 20px;
	}
</style>
<script type="text/javascript">
		function changeteam(){
			if($('#left img').attr('src')!="img/log.png"){
				$('#left img').attr('src',"img/log.png");
				$('button').css("background-color","#3C8DBC");
				$('button').css("color","white");
				$('#tle').css("background-color", "#3C8DBC");
				$('#left').css("background-color", "#222D32");
				$('#but3').css("background-color","#3C8DBC");
				$('#but3').css("color","white");
			}else{
				$('#left img').attr('src',"img/Image7.png");
				$('button').css("background-color","#222222");
				$('#but3').css("background-color","#222222");
				$('#tle').css("background-color", "#222222");
				$('#left').css("background-color", "#2E363F");
				$('button').css("color","#939DA8");
				$('#but3').css("color","#939DA8");
			}
		}
		window.onresize = function () {
			$('img').css('width')
			$('img').css('height')
		}
</script>
</head>
<body>
	<div id="tle">
	<div class="btn-group">
	 <button type="button" class="btn btn-default dropdown-toggle" 
	      data-toggle="dropdown" id="but1">
	    	 Admin <span class="caret"></span>
	 </button>
	   <ul class="dropdown-menu" >
	      <li><a href="#">我的账户</a></li>
	      <li><a href="#">资料修改</a></li>
	      <li><a href="#">密码修改</a></li>
	      <li class="divider"></li>
	      <li><a href="#">其他</a></li>
	   </ul>
	   </div>
	   <div class="btn-group">
	   <button type="button" class="btn btn-default dropdown-toggle" 
	      data-toggle="dropdown" id="but2">
	    	 信息 <span class="caret"></span>
	 </button>
	   <ul class="dropdown-menu" >
	      <li><a href="#">新信息</a></li>
	      <li><a href="#">已发送</a></li>
	      <li><a href="#">收件箱</a></li>
	      <li class="divider"></li>
	      <li><a href="#">草稿箱</a></li>
	   </ul>
	   </div>
	    <a href="login.jsp" class="btn btn-default" id="but3">退出</a>
	</div>
	<div id="left">
	<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>首页</a>
		<div id="font" style="height: 97px;width: 219px;">
			<img src="img/Image7.png" style="width: 101.6%;height: 100%"/>
		</div>
	 <ul>
		<li><a href="#" onclick="changeteam()"><i class="icon icon-home"></i><span>更换主题</span></a> </li>
		<li><a href="fileinput.jsp" target="con"><i class="icon icon-signal"></i> <span>上传</span></a> </li>
		<li><a href="#"><i class="icon icon-inbox"></i> <span>办公</span></a> </li>
    	<li><a href="#"><i class="icon icon-th"></i> <span>办公</span></a></li>
    	<li><a href="#"><i class="icon icon-fullscreen"></i> <span>办公</span></a></li>
    	<li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>办公</span> <span class="label label-important">3</span></a>
	      <ul>
	        <li><a href="#">办公</a></li>
	        <li><a href="#">办公</a></li>
	        <li><a href="#">办公</a></li>
	      </ul>
	    </li>
	    <li><a href="#"><i class="icon icon-tint"></i> <span>办公</span></a></li>
    	<li><a href="#"><i class="icon icon-pencil"></i> <span>办公</span></a></li>
	 </ul>
	 </div>
	</div>
	<div id="center">
		<iframe name="con" src="index2.jsp" scrolling="no" width="100%" height="101%" frameborder="1"></iframe>
	</div>
</body>
</html>
