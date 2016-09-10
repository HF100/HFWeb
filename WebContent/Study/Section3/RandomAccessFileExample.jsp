<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>随机读写文件</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-30" data-genuitec-path="/HFWeb/WebContent/Study/Section3/RandomAccessFileExample.jsp">
	<%
		try {
			out.println("随机读取文件 /Users/KDiOS/Desktop/TESTFile/不懂就问所需接口 示例：<br>");
			RandomAccessFile randomFile = new RandomAccessFile("/Users/KDiOS/Desktop/TESTFile/不懂就问所需接口","rw");
			out.println("文件长度为:" + randomFile.length() + "个字节.<br>");
			out.println("当前文件指针位置在:" + randomFile.getFilePointer() + "<br>");
			out.println("文件内容为:");
			String tempString = null;
			byte byteArray1[] = new byte[100];
			while ((tempString = randomFile.readLine()) != null) {
				byteArray1 = tempString.getBytes("ISO-8859-1");
				tempString = new String(byteArray1);
				out.println("<br>" + tempString);
			}
			
			out.println("<br>文件读取完毕,当前文件指针位置在: " + randomFile.getFilePointer() + "<br>" );
			randomFile.close();
			
		}
		catch (Exception e) {
			out.println("<br>文件操作异常:" + e);
		}
	%>
</body>
</html>