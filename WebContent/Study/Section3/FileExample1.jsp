<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%!
	class FileXLSX implements FilenameFilter 
	{
		String str = null;
		FileXLSX (String s) {
			str = "." + s;
		}
		public boolean accept(File dir,String name) {
			return name.endsWith(str);
		}
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列出文件目录</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-27" data-genuitec-path="/HFWeb/WebContent/Study/Section3/FileExample1.jsp">
	<font size=2 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-27" data-genuitec-path="/HFWeb/WebContent/Study/Section3/FileExample1.jsp">
		<%
			File file1 = new File("/Users/KDiOS/Desktop/TESTFile");
			File file2 = new File("/Users/KDiOS/Desktop/TESTFile/mkfile");
			file2.mkdir();//创建目录
			File file[] = file1.listFiles();
			
			FileXLSX filexlsx = new FileXLSX("xlsx");
			File m_file[] = file1.listFiles(filexlsx);

		%>
		列出目录下所有文件和文件夹<br>
		
 		目录有:<br>
		<%
			for (int i=0;i<file.length;i++) {
				if (file[i].isDirectory()) {
					out.println(file[i].toString() + "<br>");
					if(i>3) {
						file[i].delete();
					}
				}
			} 
		
		%> 
		<br>文件有:<br> 
		<%
			for (int i=0;i<file.length;i++) {
				if (file[i].isFile()) {
					out.println(file[i].toString() + "<br>");
				}
			}
		
			out.println("<br>");
			
			for (int i=0;i<m_file.length;i++) {
				if (file[i].isFile()) {
					out.println(m_file[i].toString() + "<br>");
					m_file[i].delete();//删除文件
				}
			} 
		%>
	</font>
</body>
</html>