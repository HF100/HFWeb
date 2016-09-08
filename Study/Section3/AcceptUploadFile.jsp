<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%!
	//处理中文字符
	public String codeToString(String str) {
		String s = str;
		try {
			byte tempB[] = s.getBytes("ISO-8859-1");
			s = new String(tempB);
			return s;
		}
		catch (Exception e) {
			return s;
		}
	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>接收上传文件</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-21" data-genuitec-path="/HFWeb/WebContent/Study/Section3/AcceptUploadFile.jsp">
	<%
		//接收上传的文件内容的临时文件的文件名
		String tempFileName = new String("tempFileName1");
		//tempFile1对象指向这个临时文件
		File tempFile1 = new File("/Users/KDiOS/Desktop/UPloadFile/Tmp/",tempFileName);
		//outputFile1文件输出流指向这个文件
		FileOutputStream outputFile1 = new FileOutputStream(tempFile1);
		//得到客户端提交的数据
		InputStream fileSource1 = request.getInputStream();
		//将得到的客户端数据写入文件
		byte b[] = new byte[1000];
		int n;
		while ((n=fileSource1.read(b)) != -1) {
			outputFile1.write(b,0,n);
		}
		//关闭输入输出流
		outputFile1.close();
		fileSource1.close();
		//randomFile1 对象指向临时文件
		RandomAccessFile randomFile1 = new RandomAccessFile(tempFile1,"r");
		//读取临时文件的第一行数据
		randomFile1.readLine();
		//读取临时文件的第二行数据,这行数据包括了文件的路径和文件名
		String FilePath = randomFile1.readLine();		
		
		out.println("文件名 " + FilePath + "<br>");
		
		//得到文件名
		int position = FilePath.lastIndexOf('\\');
		String filename = codeToString(FilePath.substring(position+1,FilePath.length()-1));
		//重新定位文件指针到文件头
		randomFile1.seek(0);
		//得到第4行回车符号的位置，这个是上传文件数据的开始位置
		long forthEnterPosition = 0;
		int forth = 1;
		while ((n=randomFile1.readByte()) != -1 && (forth <= 4)) {
			if (n == '\n') {
				forthEnterPosition = randomFile1.getFilePointer();
				forth++;
			}
		}
		//生成上传文件目录
		File FileUploadDir = new File("/Users/KDiOS/Desktop/UPloadFile/","upload");
		FileUploadDir.mkdir();
		//saveFile1对象指向要保存的文件
		File saveFile1 = new File("/Users/KDiOS/Desktop/UPloadFile/upload/",filename);
		RandomAccessFile randomFile2 = new RandomAccessFile(saveFile1,"rw");
		//找到上传的文件数据的结束位置,即倒数第4行
		randomFile1.seek(randomFile1.length());
		long endPosition = randomFile1.getFilePointer();
		int j=1;
		while ((endPosition >=0) && (j<=4)) {
			endPosition--;
			randomFile1.seek(endPosition);
			if (randomFile1.readByte() == '\n') {
				j++;
			}
		}
		
		//从上传文件数据的开始位置到结束位置,把数据写入要保存的文件中
		randomFile1.seek(forthEnterPosition);
		long startPoint = randomFile1.getFilePointer();
		while (startPoint < endPosition-1) {
			randomFile2.write(randomFile1.readByte());
			startPoint = randomFile1.getFilePointer();
		}
		//关闭文件输入输出流
		randomFile1.close();
		randomFile2.close();
		tempFile1.delete(); 
		out.println("文件" + filename + "已成功上传！<br>");
	%>
</body>
</html>