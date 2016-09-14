<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script language="javascript">
<!--
	function on_submit() {
		//验证数据的合法性
		if (form1.file_content.value == "") {
			alert("文件内容不能为空,请输入文件内容!");
			form1.file_content.focus();
			return false;
		}
	}
//-->
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交文件内容</title>
</head>
<body>
	<form action="/HFWeb/Servlet/IOFileServlet" method="post" name="form1"
		onsubmit="return on_submit()">
		<table border="1" align="center">
			<tr>
				<th colspan="2">用Servlet处理输入文件内容</th>
			</tr>
			<tr>
				<td>请输入文件内容:</td>
				<td><textarea rows="7" cols="52" name="file_content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>