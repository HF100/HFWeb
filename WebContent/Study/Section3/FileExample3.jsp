<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>读文件应用示例</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-29" data-genuitec-path="/HFWeb/WebContent/Study/Section3/FileExample3.jsp">
	<%
	
		//字符输入流
		try {
			FileReader f = new FileReader("/Users/KDiOS/Desktop/TESTFile/不懂就问所需接口");
			BufferedReader bufferR1 = new BufferedReader(f);
			String tempString = null;
			while((tempString=bufferR1.readLine())!=null) {
				out.println("<br>" + tempString);
			}
			bufferR1.close();
			f.close();
		} 
		catch (Exception e) {
			
		}
	
		//字符输出流
		
		try {
			FileWriter outfile1 = new FileWriter("/Users/KDiOS/Desktop/TESTFile/不懂就问所需接口",true);
			BufferedWriter outBuffer1 = new BufferedWriter(outfile1);
			outBuffer1.write("2.大家好 中国人民共和国万岁！");
			outBuffer1.flush();
			outBuffer1.close();
		}
		catch (Exception e) {
			out.println("输出异常。。。。");
		}
	%>
</body>
</html>