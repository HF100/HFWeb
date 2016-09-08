<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<script language="javascript">
	function on_submit() {
		if (form1.username.value=="") {
			alert("用户名不能为空,请输入用户名!");
			form1.username.focus();
			return false;
		}
		if (form1.userpassword.value=="") {
			alert("密码不能为空,请输入密码!");
			form1.userpassword.focus();
			return false;
		}
	}
</script>    
<%!
	public String codeToString(String str) {
	String session_s = str;
	try {
		byte tempB[] = session_s.getBytes("ISO-8859-1");
		session_s = new String(tempB);
		return session_s;
	} 
	catch (Exception e) {
		return session_s;
	}
}
%>

<%
	String username = request.getParameter("username");
	String userpassword= request.getParameter("userpassword");
	if (username != null & userpassword != null) {
		//如果用户名和密码都合法,保存用户名和密码到数据库中,
		//用数据库中的信息与提交的用户名和密码比较进行合法性检查
		session.setAttribute("username",codeToString(username));
		response.sendRedirect("SessionUserLogin1.jsp");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
	<table align="center">
		<form name="form1" method="post" action="SessionUserLogin.jsp" onsubmit="return on_submit()">
			<tr align="center">
			<td>用户登录</td>
			</tr>
			
			<tr align="center">
			<td>请输入用户名:<input type="text" name="username" size="20"> </td>
			</tr>
			
			<tr align="center">
			<td>请输入密码:&nbsp;&nbsp;<input type="password" name="userpassword" size="20"> </td>
			</tr>
			
			<tr align="center">
			<td>
				<input type="submit" value="提交" name="B1"> 
				<input type="reset" value="全部重写" name="B2">
			</td>		
			</tr>
		</form>
	</table>
</body>
</html>