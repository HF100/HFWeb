<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>页面重定向</title>
</head>
<body>
	<%
		String url;
		url = request.getParameter("goaddress");
		if (url != null) {
			response.sendRedirect(url);
		}
	%>
	
	<form name="form1" action="SendRedirect.jsp" method="post">
	页面重定向：
	<select name="goaddress" onchange="javascropt:form1.submit()">
		<option value="">======请选择======</option>
		<option value="https://www.baidu.com/">百度一下,你就知道</option>
		<option value="https://github.com/">Github,develpers home!</option>
		<option value="http://stackoverflow.com/">stackoverflow</option>
	</select>
	</form>
</body>
</html>