<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Initialize Value for DateTime - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="jquery-ui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-ui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="jquery-ui/themes/demo.css">
	<script type="text/javascript" src="jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="jquery-ui/jquery.easyui.min.js"></script>
</head>
<body>
	<input id="db"/>
<script>
    $(function () {
        $('#db').datebox({
            onShowPanel: function () {//显示日趋选择对象后再触发弹出月份层的事件，初始化时没有生成月份层
                span.trigger('click'); //触发click事件弹出月份层
                if (!tds) setTimeout(function () {//延时触发获取月份对象，因为上面的事件触发和对象生成有时间间隔
                    tds = p.find('div.calendar-menu-month-inner td');
                    tds.click(function (e) {
                        e.stopPropagation(); //禁止冒泡执行easyui给月份绑定的事件
                        var year = /\d{4}/.exec(span.html())[0]//得到年份
                        , month = parseInt($(this).attr('abbr'), 10) + 1; //月份
                        $('#db').datebox('hidePanel')//隐藏日期对象
                        .datebox('setValue', year + '-' + month); //设置日期的值
                    });
                }, 0)
            },
            parser: function (s) {//配置parser，返回选择的日期
                if (!s) return new Date();
                var arr = s.split('-');
                return new Date(parseInt(arr[0], 10), parseInt(arr[1], 10) - 1, 1);
            },
            formatter: function (d) { return d.getFullYear() + '-' + d.getMonth(); }//配置formatter，只返回年月
        });
        var p = $('#db').datebox('panel'), //日期选择对象
            tds = false, //日期选择对象中月份
            span = p.find('span.calendar-text'); //显示月份层的触发控件
    });
</script>
</body>
</html>