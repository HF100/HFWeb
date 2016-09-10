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

<%
	//构造查询SQL语句
	String sqlString = null;
	String site_id = codeToString(request.getParameter("id"));
	sqlString = "DELETE FROM websites WHERE id = " + site_id;
	out.print(sqlString);
%>

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
		connection = DriverManager.getConnection(connection_url,
				user_name, user_pass);

		//执行查询语句
		System.out.println("实例化statement对。。。");
		stmt = connection.createStatement();
		stmt.executeUpdate(sqlString);
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<p>删除成功!</p>
</body>
</html>