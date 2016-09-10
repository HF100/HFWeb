<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jdbc 倒序显示列表 并指定 显示第2条数据</title>
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
			connection = DriverManager.getConnection(connection_url,user_name,user_pass);
			
			//执行查询语句
			System.out.println("实例化statement对。。。");
			stmt = connection.createStatement();
			String sql = "select * from websites";
			rs =  stmt.executeQuery(sql);
			
			out.println("<table border width=\"800px\" align=\"center\">");
			
			out.println("<tr>");
			out.println("<td colspan=4>倒序列出表websites的内容</td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td>ID</td>");
			out.println("<td>站点名称</td>");
			out.println("<td>站点dizhi</td>");
			out.println("<td>操作</td>");
			out.println("</tr>");
			
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>" + rs.getInt("id") + "</td>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("url") +"</td>");
				out.println("<td><a href=\"jdbcDelete.jsp?id=" +rs.getInt("id") + "\">删除</a></td>");
				out.println("</tr>");
			}		
			out.println("</table>");
			
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