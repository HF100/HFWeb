<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.jspsmart.upload.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传处理页面</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/HFWeb/WebContent/Study/Section3/Do_upload.jsp">
	<%
		//新建一个SmartUpload对象
		SmartUpload su = new SmartUpload();
		//上传初始化
		su.initialize(pageContext);
		//设置上传限制
		//1.限制每隔上传文件的最大长度
		su.setMaxFileSize(10000);
		//2.限制总上传数据的长度
		su.setTotalMaxFileSize(20000);
		//4.设定允许上传的文件(通过扩展名限制),仅允许doc txt 文件
		su.setAllowedFilesList("doc,txt");
		//3.设定禁止上传的文件(通过扩展名限制),禁止上传带有 exe,bat,jsp,htm,html 扩展名的文件和没有扩展名的文件
		su.setDeniedFilesList("exe,bat,jsp,htm,html,,");
		//上传文件
		su.upload();
		//将上传文件全部保存到指定目录
		int count = su.save("/upload");
		out.println(count + "个文件上传成功！<br>");
		//逐一提取上传文件信息,同时可保存文件
		for (int i=0;i<su.getFiles().getCount();i++) {
			com.jspsmart.upload.File file = su.getFiles().getFile(i);
			//若文件表单中的文件选项没有选择文件则继续
			if (file.isMissing()) continue;
			
			//显示当前文件信息
			out.println("<table border=1>");
			out.println("<tr><td>表单项名(FieldName)</td><td>" + file.getFieldName() + "</td></tr>");
			out.println("<tr><td>文件长度(Size)</td><td>" + file.getSize() + "</td></tr>");
			out.println("<tr><td>文件名(FileName)</td><td>" + file.getFileName() + "</td></tr>");
			out.println("<tr><td>文件扩展名(FileExt)</td><td>" + file.getFileExt()+ "</td></tr>");
			out.println("<tr><td>文件全名(FilePathName)</td><td>" + file.getFilePathName()+ "</td></tr>");
			out.println("</table><br>");
		}
	%>
</body>
</html>