<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<%
		//得到向客户端输出的输出流
		OutputStream outStream1 = response.getOutputStream();
		//输出文件用的字节数组,每次向输出流发送600个字节
		byte b[] = new byte[600];
		//要下载的文件
		File fileLoad = new File("/Users/KDiOS/Desktop/UPloadFile/upload/","11.doc");
		//客户端使用保存文件的对话框
		response.setHeader("Content-disposition","attachment;  filename =11.doc");
		//通知客户文件的MIME类型
		response.setContentType("application/msword");
		//通知客户文件长度
		long fileLength = fileLoad.length();
		String length = String.valueOf(fileLength);
		response.setHeader("Content-Length",length);
		//读取文件11.doc 并发送给客户下载
		FileInputStream in = new  FileInputStream(fileLoad);
		int n = 0;
		while ((n=in.read(b)) != -1) {
			outStream1.write(b,0,n);
		}
	%>
</body>
</html>