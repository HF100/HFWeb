<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out应用示例</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-14" data-genuitec-path="/HFWeb/WebContent/Study/Section2/OutApp.jsp">
	<% 
		out.print("<table border='1' width='100%'>");
		out.print("<tr><td width='100%' colspan='4'>");
		
		out.print("参会人员名单(用out输出表格)" + "</tr>");
		out.print("<tr><td width='25%'>" + "姓名" + "</td>");
		out.print("<td width='25%'>" + "年龄" + "</td>");
		out.print("<td width='25%'>" + "性别" + "</td>");
		out.print("<td width='25%'>" + "工作单位" + "</td></tr>");
		
		out.print("<tr><td width='25%'>" + "张兰" + "</td>");
		out.print("<td width='25%'>" + "42" + "</td>");
		out.print("<td width='25%'>" + "男" + "</td>");
		out.print("<td width='25%'>" + "上海唠唠叨叨网络科技公司" + "</td></tr>");
		
		out.print("<tr><td width='25%'>" + "李胜利" + "</td>");
		out.print("<td width='25%'>" + "23" + "</td>");
		out.print("<td width='25%'>" + "男" + "</td>");
		out.print("<td width='25%'>" + "上海九日网络科技公司" + "</td></tr>");
		
		out.print("<tr><td width='25%'>" + "李友兰" + "</td>");
		out.print("<td width='25%'>" + "33" + "</td>");
		out.print("<td width='25%'>" + "女" + "</td>");
		out.print("<td width='25%'>" + "上海比格科技公司" + "</td></tr>");
		out.print("</table>");
		
	%>
</body>
</html>