<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Applet</title>
</head>
<body>
	<applet code="HannoiTower.Tower.class" width="200" height="200"></applet>
	<jsp:plugin type="applet" code="HannoiTower.class" codebase="." jreversion="1.6" width="200" height="260">
	<jsp:fallback>
		浏览器不支持
	</jsp:fallback>
	</jsp:plugin>
</body>
</html>