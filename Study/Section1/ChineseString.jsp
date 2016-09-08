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
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/HFWeb/WebContent/Study/Section1/ChineseString.jsp">
	<form name="form1" action="ChineseString.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/HFWeb/WebContent/Study/Section1/ChineseString.jsp">
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