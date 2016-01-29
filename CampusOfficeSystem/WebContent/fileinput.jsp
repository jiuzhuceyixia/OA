<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/default.css">
    <link href="bootstrap-3.3.5-dist/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />	
    <script src="jquery-1.11.0.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/fileinput.js" type="text/javascript"></script>
    <script src="bootstrap-3.3.5-dist/js/fileinput_locale_zh.js" type="text/javascript"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
     <div class="form-group">
      <input id="file" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="fileinput" data-preview-file-icon="">
     </div>
    <!-- <script type="text/javascript">
	    $("#file").fileinput({
			uploadExtraData: {kvId: '10'}
		});
	    $(".btn-warning").on('click', function() {
	        if ($('#file').attr('disabled')) {
	            $('#file').fileinput('enable');
	        } else {
	            $('#file').fileinput('disable');
	        }
	    });    
	    $(".btn-info").on('click', function() {
	        $('#file').fileinput('refresh', {previewClass:'bg-info'});
	    });
	    $(document).ready(function(){
	        $("#file").fileinput({
	            'showPreview' : false,
	            'allowedFileExtensions' : ['jpg', 'png','gif'],
	            'elErrorContainer': '#errorBlock'
	      });
	   });
    </script> -->
</body>
</html>
