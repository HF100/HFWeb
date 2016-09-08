<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java"
	import="com.jspsmart.upload.*,java.util.*,javax.servlet.*,com.jspsmart.upload.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传处理页面</title>
</head>
<body>
	<p align="center">jspSmartUpload组件应用之员工档案</p>
	<hr>

	<%
		//新建一个SmartUpload对象
		SmartUpload su = new SmartUpload();
		//上传初始化
		su.initialize(pageContext);
		//设定允许上传的文件(通过扩展名限制) 仅允许.jpg .bmp .gif 文件
		su.setAllowedFilesList("jpg,bmp,gif");
		//上传文件
		su.upload();
		//将上传文件保存到指定目录
		su.save("/upload/images");
	%>
	<div align="center">
		<table cellspacing="0" cellpadding="3" border="1" width="474">
			<tr>
				<td width="150">
					<div align="left">
						<p>
							<small><font face="Verdana">姓名:&nbsp;</font></small>
						</p>
					</div>
				</td>
				<td width="324">
					<div align="left">
						<p>
							<small><font face="Verdana"> <%=su.getRequest().getParameter("username")%>
							</font></small>
						</p>
					</div>
				</td>
			</tr>
			<tr>
				<td width="150">
					<div align="left">
						<p>
							<small><font face="Verdana">照片:&nbsp;</font></small>
						</p>
					</div>
				</td>
				<td width="324">
					<div align="left">
						<p>
							<small><font face="Verdana"> <img alt="照片"
									src="<%="../upload/images/"
					+ su.getFiles().getFile(0).getFieldName()%>">
							</font></small>
						</p>
					</div>
				</td>
			</tr>
			<tr>
				<td width="150">
					<div align="left">
						<p>
							<small><font face="Verdana">年龄:&nbsp;</font></small>
						</p>
					</div>
				</td>
				<td width="324">
					<div align="left">
						<p>
							<small><font face="Verdana"><%=su.getRequest().getParameter("userage")%></font></small>
						</p>
					</div>
				</td>
			</tr>
			<tr>
				<td width="150">
					<div align="left">
						<p>
							<small><font face="Verdana">工作单位:&nbsp;</font></small>
						</p>
					</div>
				</td>
				<td width="324">
					<div align="left">
						<p>
							<small><font face="Verdana"><%=su.getRequest().getParameter("userloc")%></font></small>
						</p>
					</div>
				</td>
			</tr>
			<tr>
				<td width="474" colspan="2">
					<div align="center">
						<p>
							<small><font face="Verdana"><input type="submit"
									name="submit" value="提交"></font></small>
						</p>
					</div>
				</td>
			</tr>
			<tr>
		</table>
	</div>
</body>
</html>