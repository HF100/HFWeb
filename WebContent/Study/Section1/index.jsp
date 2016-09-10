<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!--JSP指令标签-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HFKeep</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-10" data-genuitec-path="/HFWeb/WebContent/Study/Section1/index.jsp">
	<form name="form1" action="index.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-10" data-genuitec-path="/HFWeb/WebContent/Study/Section1/index.jsp">
		<input type="text" 	name="jcs">
		<input type="submit" name="submit" value="提交">
	</form>	
	<%! String sss=null; %> <!-- 变量声明 -->
	<% //java程序片段
		sss=request.getParameter("jcs");
		if (sss==null) {
			out.println("你输入的字符串为空！");
		}
		else {
			out.println("你输入的字符串为:"+ sss);
		}
	%>
</body>
</html>