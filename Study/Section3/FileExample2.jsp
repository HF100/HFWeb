<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>读文件示例</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-28" data-genuitec-path="/HFWeb/WebContent/Study/Section3/FileExample2.jsp">
	<%
		//字节输入流
		int size;
		FileInputStream f = new FileInputStream("/Users/KDiOS/Desktop/TESTFile/不懂就问所需接口");
		size = f.available();
		out.println("文件总计可读的字节数:" + size);
		
		BufferedInputStream buffer1 = new BufferedInputStream(f); 
		byte bufferArray[] = new byte[90];
		int n = 0;
		out.println("<br>/Users/KDiOS/Desktop/TESTFile/不懂就问所需接口 内容是：");
		while ((n = buffer1.read(bufferArray)) != -1) {
			String temp = new String(bufferArray,0,n);
			out.print(temp);
		}
		
		buffer1.close();
		f.close();
		
		//字节输出流
		FileOutputStream outf1 = new FileOutputStream("/Users/KDiOS/Desktop/TESTFile/不懂就问所需接口"); 
		BufferedOutputStream bufferout = new BufferedOutputStream(outf1);
		byte b[] ="<br>这是写入文档的内容。".getBytes();
		bufferout.write(b);
		bufferout.flush();
		bufferout.close();
		
	%>
</body>
</html>