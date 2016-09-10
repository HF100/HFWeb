<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP指令</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/HFWeb/WebContent/Study/Section1/command.jsp">
	<% 
	//1 page 指令
	//	<%@ page [language="脚本语言种类"] [import="包或类"] [contentType="MIME类型"]
	//			 [session="true/false"] [buffer="缓存区大小"] [autoFlash="true/false"] 
	//			 [isThreadSafe="true/false"] [info="text"] [errorPage="异常时间页面URL"] [isErrorPage="true/flase"] %/>
	//page指令 中contentType属性不能在同一个页面多次指定
	
	//2 include 指令
	//<%@ include file="文件路径"%/>
	
	
	//JSP动作指令
	//include 动作指令 -- 动态包含
	//<jsp:include page="文件路径"/>
	//
	//<jsp:include page="文件路径">
	//<jsp:para name="参数名1" value="参数 1 值"/>
	//<jsp:para name="参数名n" value="参数 2 值"/>
	//</jsp:include>
	
	//
	
	//forward 动作指令--重定向网页
	//<jsp:forward page="文件路径"/>
	//
	//<jsp:forward page="文件路径">
	//<jsp:para name="参数名1" value="参数 1 值"/>
	//<jsp:para name="参数名n" value="参数 2 值"/>
	//</jsp:forward>

	//plugin 动作指令--加载Java applet
	//<jsp:plugin type="applet" code="小程序的类文件" codebase="小程序的位置" jreversion="虚拟机版本号" width="显示宽度" height="显示高度"/>
	
	//useBean动作指令 -- JavaBean组件开发
	//<jsp:useBean id="bean名称" scope="有效范围" class="包名.类名">
	//</jsp:useBean>
	//scope: page request session application
	
	//setProperty 动作指令 -- 设置bean中属性的值
	//<jsp:setProperty name="bean名称" property="*" />
	//<jsp:setProperty name="bean名称" property="属性名称" />
	//<jsp:setProperty name="bean名称" property="属性名称" param="参数名称"/>
	//<jsp:setProperty name="bean名称" property="属性名称" value="属性值"/>
	
	
	//getProperty 动作指令 -- 获取bean中属性的值并转为字符串
	//<jsp:getProperty name="bean名称" property="属性名称" />

	%>
</body>
</html>