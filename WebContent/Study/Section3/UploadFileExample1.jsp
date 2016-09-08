<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文件例子</title>
</head>
<body>
	上传文件程序示例<br>
	<form action="AcceptUploadFile.jsp" method="post" enctype="multipart/form-data">
		请选择上传的文件:<input type="file" name="upfile" size="50"><br>
					 <input type="submit" value="提交">
	</form>
</body>
</html>