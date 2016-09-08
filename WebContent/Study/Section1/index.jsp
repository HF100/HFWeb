<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!--JSP指令标签-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HFKeep</title>
</head>
<body>
	<form name="form1" action="index.jsp" method="post">
		<input type="text" 	name="jcs">
		<input type="submit" name="submit" value="提交">
	</form>	
	<%! String sss=null; %> <!-- 变量声明 -->
	<% //java程序片段
		sss=request.getParameter("jcs");
		if (sss==null) {
			out.println("你输入的字符串为空！");
		}
		else {
			out.println("你输入的字符串为:"+ sss);
		}
	%>
</body>
</html>