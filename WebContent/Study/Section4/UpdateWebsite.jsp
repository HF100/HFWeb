<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*"%>
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

<%
	//构造查询SQL语句
	String sqlString = null;
	String site_id = codeToString(request.getParameter("id"));
	sqlString = "SELECT * FROM websites WHERE id = " + site_id;
	out.print(sqlString);
%>
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

	<%
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			//注册 JDBC 驱动
			Class.forName("com.mysql.jdbc.Driver");

			String connection_url = "jdbc:mysql://localhost:3306/RUNOOB??useUnicode=true&characterEncoding=utf-8";
			String user_name = "root";
			String user_pass = "123456hf";

			//打开链接
			System.out.println("连接数据库...");
			connection = DriverManager.getConnection(connection_url, user_name, user_pass);

			//执行查询语句
			System.out.println("实例化statement对。。。");
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlString);
			rs.next();
	%>


	<form action="UpdateWebsite1.jsp?site_id=<%=rs.getInt("id") %>" method="post" name="form1"
		onsubmit="return on_submit()">
		<div align="center">
			<table border="1" width="400">
				<tr>
					<td colspan="2" align="center">修改数据</td>
				</tr>
				<tr>
					<td>站点名称:</td>
					<td><input type="text" name="site_name" style="width: 99%" value="<%=rs.getString("name") %>"></td>
				</tr>
				<tr>
					<td>站点网址:</td>
					<td><input type="text" name="site_url" style="width: 99%" value="<%=rs.getString("url") %>"></td>
				</tr>
				<tr>
					<td>站点排名:</td>
					<td><input type="text" name="site_alexa" style="width: 99%" value="<%=rs.getString("alexa") %>"></td>
				</tr>
				<tr>
					<td>所属国家:</td>
					<td><input type="text" name="site_country" style="width: 99%" value="<%=rs.getString("country") %>"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="submit" value="提交"> <input type="reset" name="reset"
						value="重输"></td>
				</tr>
			</table>
		</div>
	</form>
	<%
		rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException se) {
			System.out.println("jdbc 处理错误" + se);
		} catch (Exception e) {
			System.out.print("Class.ForName" + e);
		} finally {
			//关闭资源
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException se1) {

			}

			try {
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException se2) {
				System.out.print("Sql Error" + se2);
			}
		}
	%>

</body>
</html>