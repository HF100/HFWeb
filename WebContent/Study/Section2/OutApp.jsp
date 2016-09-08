<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out应用示例</title>
</head>
<body>
	<% 
		out.print("<table border='1' width='100%'>");
		out.print("<tr><td width='100%' colspan='4'>");
		
		out.print("参会人员名单(用out输出表格)" + "</tr>");
		out.print("<tr><td width='25%'>" + "姓名" + "</td>");
		out.print("<td width='25%'>" + "年龄" + "</td>");
		out.print("<td width='25%'>" + "性别" + "</td>");
		out.print("<td width='25%'>" + "工作单位" + "</td></tr>");
		
		out.print("<tr><td width='25%'>" + "张兰" + "</td>");
		out.print("<td width='25%'>" + "42" + "</td>");
		out.print("<td width='25%'>" + "男" + "</td>");
		out.print("<td width='25%'>" + "上海唠唠叨叨网络科技公司" + "</td></tr>");
		
		out.print("<tr><td width='25%'>" + "李胜利" + "</td>");
		out.print("<td width='25%'>" + "23" + "</td>");
		out.print("<td width='25%'>" + "男" + "</td>");
		out.print("<td width='25%'>" + "上海九日网络科技公司" + "</td></tr>");
		
		out.print("<tr><td width='25%'>" + "李友兰" + "</td>");
		out.print("<td width='25%'>" + "33" + "</td>");
		out.print("<td width='25%'>" + "女" + "</td>");
		out.print("<td width='25%'>" + "上海比格科技公司" + "</td></tr>");
		out.print("</table>");
		
	%>
</body>
</html>