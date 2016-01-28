<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
    <title>test div</title>
    <style>
            #dlg{
                    height: 200px;
                    width: 350px;
                    border: solid black 1px;
            }
            td{
                    padding: 5px;
            }
    </style>
    <style type="text/css">
         
    </style>
    <script language="javascript">
        //mask为遮盖层div，
        function showDialog(){
            var masklayer = document.all("mask") ;
            masklayer.style.width = screen.width ;
            masklayer.style.height = screen.height ;
            masklayer.style.display = "" ;
            var dlg = document.getElementById("dlg");
            dlg.style.display = "";
        }
        function hideDialog(){
            var masklayer = document.all("mask") ;
            masklayer.style.display = "none" ;
            var dlg = document.getElementById("dlg");
            dlg.style.display = "none";
        }
    function doEscape(){
        var masklayer = document.all("mask") ;
        var dlg = document.getElementById("dlg") ;
        if(masklayer.style.display==""||mask.style.display==""){
            if (event.ctrlKey){
                alert("event.key") ;
            }
        }
    }
    </script>
    <body>
        <input type="submit" value="Show dialog" onClick="showDialog();">
        <div id="mask" name="mask" style="position:absolute;left:0px;top:0px;display:none;z-index:999;filter:alpha(opacity=40);background-color:silver"></div>
        <div id="dlg"  onkeydown="doEscape();" name="dlg" style="position:absolute;display:none;left:380px;top:250px;z-index:1000;border:1px;border-color:red">
        <table border=1 height="200" width="350" aligh="center" style="border-collapse:collapse;background-color:#eeeeee;"><tr><td>This is a customer dialog</td></tr><tr><td>
        <input type="submit" value="Close dialog" onClick="hideDialog();"></td></tr><tr><td></td></tr></table></div>
    </body>
</html>