<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分页读取文件内容</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-25" data-genuitec-path="/HFWeb/WebContent/Study/Section3/FenYe.jsp">
	<p align="center" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-25" data-genuitec-path="/HFWeb/WebContent/Study/Section3/FenYe.jsp">
		分页读取文件内容。文件内容为:<br>
	</p>
	<p>
		<%
			String pages = request.getParameter("page");
			if (pages == null) {
				pages = "0";
			}
			int diPage = Integer.parseInt(pages);
		%>

		<%
			//从文件读取数据
			int pageFileSize = 20;//每页20行数据
			int fileLineCount = 0;//文件总页数
			int fileCoutPage = 0;//文件页数
			
			File f = new File("/Users/KDiOS/Desktop/UPloadFile/fenye.txt");
			//得到文件的总行数
			if (f.exists()) {
				FileReader fileReader1 = new FileReader(f);
				BufferedReader buffer1 = new BufferedReader(fileReader1);
				String tempString = null;
				while ((tempString=buffer1.readLine()) != null) {
					fileLineCount++;
				}
				buffer1.close();
				fileReader1.close();
			}
			//得到文件页数
			if (fileLineCount%pageFileSize == 0) {
				fileCoutPage = fileLineCount / pageFileSize;
			} else {
				fileCoutPage = fileLineCount / pageFileSize + 1;
			}
			
			//读取当前文件内容
			if (f.exists()) {
				FileReader fileReader1 = new FileReader(f);
				BufferedReader buffer1 = new BufferedReader(fileReader1);
				String tempString = null;
				for (int i=0;i<diPage * pageFileSize;i++) {
					buffer1.readLine();
				}
				
				for (int i=0;i<pageFileSize && (tempString=buffer1.readLine()) != null;i++) {
					out.println(tempString + "<br>");
				}
				buffer1.close();
				fileReader1.close();
			} else {
				out.println("文件中暂时没有内容.");
			}
		%>
	</p>
	<p align="center">
		<% if (diPage > 0) { %>
		<a href="FenYe.jsp?page=<%=diPage-1 %>">上一页</a>
		<% } %>
		<% if (diPage < fileCoutPage) { %>
		<a href="FenYe.jsp?page=<%=diPage+1 %>">下一页</a>
		<a>共<%= fileCoutPage %>页，当前第<%= diPage+1%>页</a>
		<% } %>
	</p>
</body>
</html>