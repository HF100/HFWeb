<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="box" class="com.section5.Box" scope="page">
</jsp:useBean>
<jsp:setProperty name="box" property="*" />
<%
	String box_length = request.getParameter("box_length");
	String box_width = request.getParameter("box_width");
	String box_height = request.getParameter("box_height");
	if (box_length == null) box_length="0";
	if (box_width == null) box_width="0";
	if (box_height == null) box_height="0";
	
	double double_length = Double.parseDouble(box_length);
	double double_width= Double.parseDouble(box_width);
	double double_height = Double.parseDouble(box_height);
%>
<jsp:setProperty name="box" property="length" value="<%=double_length%>"/>
<jsp:setProperty name="box" property="width" value="<%=double_width%>"/>
<jsp:setProperty name="box" property="height" value="<%=double_height%>"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用HTML表单设置javaBean属性</title>
</head>
<body>
	<form action="javaBeanJSP2.jsp" method="post" name="form1">
		<table border="1" width="600px">
			<tr>
				<td>请输入盒子的长:</td>
				<td><input type="text" name="box_length" style="width: 80%"
					value="0"></td>
			</tr>
			<tr>
				<td>请输入盒子的宽:</td>
				<td><input type="text" name="box_width" style="width: 80%"
					value="0"></td>
			</tr>
			<tr>
				<td>请输入盒子的高:</td>
				<td><input type="text" name="box_height" style="width: 80%"
					value="0"></td>
			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" name="submit"
					value="提交"><input type="reset" name="reset" value="重置"></td>
			</tr>
			<tr>
				<td>你输入的盒子的长:</td>
				<td><jsp:getProperty name="box" property="length" /></td>
			</tr>
			<tr>
				<td>你输入的盒子的宽:</td>
				<td><jsp:getProperty name="box" property="width" /></td>
			</tr>
			<tr>
				<td>你输入的盒子的高:</td>
				<td><jsp:getProperty name="box" property="height" /></td>
			</tr>
		</table>
	</form>
</body>
</html>