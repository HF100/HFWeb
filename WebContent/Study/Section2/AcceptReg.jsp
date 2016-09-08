<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String codeToString(String str) {
		//处理中文字符
		String s = str;
		try {
			byte tempB[] = s.getBytes("ISO-8859-1");
			s = new String(tempB);
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
<title>接收新用户注册</title>
</head>
<body>
	这是新用户注册所提交的数据:<br>
	用户名是:<%= codeToString(request.getParameter("username")) %><br>
	密码是:<%= codeToString(request.getParameter("userpassword")) %><br>
	性别是:<%= codeToString(request.getParameter("sex")) %><br>
	出生年月是:
	<%= request.getParameter("year") + request.getParameter("month") + request.getParameter("day")  %><br>
	电子邮箱是:<%= codeToString(request.getParameter("email")) %><br>
	家庭住址是:<%= codeToString(request.getParameter("address")) %><br>
</body>
</html>