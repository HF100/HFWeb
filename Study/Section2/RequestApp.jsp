<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request常用方法</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-16" data-genuitec-path="/HFWeb/WebContent/Study/Section2/RequestApp.jsp">
	请求信息如下：<br data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-16" data-genuitec-path="/HFWeb/WebContent/Study/Section2/RequestApp.jsp">
	请求的方法是：<%=request.getMethod() %><br>
	请求的URI是：<%=request.getRequestURI() %><br>
	请求的协议是：<%=request.getProtocol() %><br>
	接收客户提交信息的页面路径是：<%=request.getServletPath() %><br>
	请求中查询的字符串是：<%=request.getQueryString() %><br>
	请求中信息的总长度是：<%=request.getContentLength() %><br>
	服务器名称是：<%=request.getServerName() %><br>
	提供HTTP服务的服务端口号是：<%=request.getServerPort() %><br>
	客户端IP地址是：<%=request.getRemoteAddr() %><br>
	客户端机器名称是：<%=request.getRemoteHost() %><br>
	HTTP头文件中User-Agent的值是：<%=request.getHeader("User-Agent") %><br>
	HTTP头文件中accept的值是：<%=request.getHeader("accept") %><br>
	HTTP头文件中Host的值是：<%=request.getHeader("Host") %><br>
	HTTP头文件中accept-encoding的值是：<%=request.getHeader("accept-encoding") %><br>
	头名字的一个枚举:
	<% 
		Enumeration enumHead = request.getHeaderNames();
		while (enumHead.hasMoreElements()) {
			out.println((String)enumHead.nextElement());
		}
	%>
	<br>头文件中指定名字的全部值得一个枚举：
	<%
		Enumeration enum_HeadValues = request.getHeaders("cookie");
		while (enum_HeadValues.hasMoreElements()) {
			out.println((String)enum_HeadValues.nextElement());
		}
	%>
</body>
</html>