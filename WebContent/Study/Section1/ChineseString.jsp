<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!	
	public String codeToString(String str) {
		String s=str;
		try {
			byte tempB[] = s.getBytes("ISO-8859-1");
			s=new String(tempB);
			return s;
		}
		catch (Exception e) {
			return s;
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中文字符处理</title>
</head>
<body>
	<form name="form1" action="ChineseString.jsp" method="post">
		请输入你的姓名:
		<input type="text" name="username"/>
		<input type="submit" name="submit" value="提交" />
	</form><br>
	<% 
		if (request.getParameter("username") == null) {
			out.println("请输入姓名！");
		} else {
			out.println("你输入的姓名为："+ codeToString(request.getParameter("username")));
		}
	%>
</body>
</html>