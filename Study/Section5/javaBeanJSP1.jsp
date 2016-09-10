<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.section5.Box"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JavaBean 使用</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-58" data-genuitec-path="/HFWeb/WebContent/Study/Section5/javaBeanJSP1.jsp">
	<jsp:useBean id="box" class="com.section5.Box" scope="page">
	</jsp:useBean>
	<%
		box.setLength(10);
		box.setWidth(11);
		box.setHeight(12);

		out.println("在jsp 中使用javaBean<br>");
		out.println("盒子的长为:" + box.getLength() + "<br>");
		out.println("盒子的宽为:" + box.getWidth() + "<br>");
		out.println("盒子的高为:" + box.getHeight() + "<br>");
		out.println("盒子的容积为:" + box.volumn() + "<br>");
		out.println("盒子的表面积为:" + box.surfaceArea() + "<br>");
	%>
	<hr data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-58" data-genuitec-path="/HFWeb/WebContent/Study/Section5/javaBeanJSP1.jsp">
	<jsp:setProperty name="box" property="length" value="10"/>
	<jsp:setProperty name="box" property="width" value="11"/>
	<jsp:setProperty name="box" property="height" value="12"/>
	在jsp 中使用javaBean<br>
	盒子的长为:<jsp:getProperty name="box" property="length"/><br>
	盒子的宽为:<jsp:getProperty name="box" property="width"/><br>
	盒子的高为:<jsp:getProperty name="box" property="height"/><br>
	<%
		out.println("盒子的容积为:" + box.volumn() + "<br>");
		out.println("盒子的表面积为:" + box.surfaceArea() + "<br>");
	%>

</body>
</html>