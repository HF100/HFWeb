<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件操作示例</title>
</head>
<body>
	<%
		File file1 = new File("/");
		File file2 = new File("BS-CS.md");
	%>
	<p>
	目录file1是否可读:<%= file1.canRead() %><br>
	目录file1是否可写:<%= file1.canWrite() %><br>
	目录file1是否存在:<%= file1.exists() %><br>
	目录file1的绝对路径:<%= file1.getAbsolutePath() %><br>
	目录file1父目录:<%= file1.getParent() %><br>
	目录file1文件长度:<%= file1.length() %><br>
	目录file1是否是目录:<%= file1.isDirectory() %><br>
	目录file1是否是文件:<%= file1.isFile() %><br>
	目录file1最后一次修改时间是:<%= file1.lastModified() %><br>
	<hr>
	目录file2是否可读:<%= file2.canRead() %><br>
	目录file2是否可写:<%= file2.canWrite() %><br>
	目录file2是否存在:<%= file2.exists() %><br>
	目录file2的绝对路径:<%= file2.getAbsolutePath() %><br>
	目录file2父目录:<%= file2.getParent() %><br>
	目录file2文件长度:<%= file2.length() %><br>
	目录file2是否是目录:<%= file2.isDirectory() %><br>
	目录file2是否是文件:<%= file2.isFile() %><br>
	目录file2是否是隐藏文件:<%= file2.isHidden() %><br>
	目录file2最后一次修改时间是:<%= file2.lastModified() %><br>
</body>
</html>