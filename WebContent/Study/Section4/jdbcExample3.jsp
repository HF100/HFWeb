<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*"%>
<%!//处理中文字符串
	public String codeToString(String str) {
		String tempB = str;
		try {
			byte s[] = tempB.getBytes("ISO-8859-1");
			tempB = new String(s);
			return tempB;
		} catch (Exception e) {
			return tempB;
		}
	}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	function on_submit() {
		if (form1.site_name.value == "") {
			alert("请输入站点名称");
			form1.site_name.focus();
			return false;
		}

		if (form1.site_url.value == "") {
			alert("请输入站点地址");
			form1.site_url.focus();
			return false;
		}
		if (form1.site_alexa.value == "") {
			alert("请输入站点排名");
			form1.site_alexa.focus();
			return false;
		}
		if (form1.site_country.value == "") {
			alert("请输入所属国家");
			form1.site_country.focus();
			return false;
		}

	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>追加记录</title>
</head>
<body>
	<form action="AcceptInsertWensiteTable.jsp" method="post" name="form1"
		onsubmit="return on_submit()">
		<div align="center">
			<table border="1" width="400">
				<tr>
					<td colspan="2" align="center">向websites表中追加网站地址</td>
				</tr>
				<tr>
					<td>站点名称:</td>
					<td><input type="text" name="site_name" style="width: 99%"></td>
				</tr>
				<tr>
					<td>站点网址:</td>
					<td><input type="text" name="site_url" style="width: 99%"></td>
				</tr>
				<tr>
					<td>站点排名:</td>
					<td><input type="text" name="site_alexa" style="width: 99%"></td>
				</tr>
				<tr>
					<td>所属国家:</td>
					<td><input type="text" name="site_country" style="width: 99%"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="submit" value="提交"> <input type="reset" name="reset"
						value="重输"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>