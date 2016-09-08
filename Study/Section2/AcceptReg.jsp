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
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-12" data-genuitec-path="/HFWeb/WebContent/Study/Section2/AcceptReg.jsp">
	这是新用户注册所提交的数据:<br data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-12" data-genuitec-path="/HFWeb/WebContent/Study/Section2/AcceptReg.jsp">
	用户名是:<%= codeToString(request.getParameter("username")) %><br>
	密码是:<%= codeToString(request.getParameter("userpassword")) %><br>
	性别是:<%= codeToString(request.getParameter("sex")) %><br>
	出生年月是:
	<%= request.getParameter("year") + request.getParameter("month") + request.getParameter("day")  %><br>
	电子邮箱是:<%= codeToString(request.getParameter("email")) %><br>
	家庭住址是:<%= codeToString(request.getParameter("address")) %><br>
</body>
</html>