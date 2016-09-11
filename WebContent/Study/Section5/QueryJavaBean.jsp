<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="query" class="com.section5.QueryJava" scope="page">
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用javaBean查询数据库</title>
</head>
<body>
	<%
		//查询数据库
		ResultSet rs = null;
		String stringSqlString = "SELECT * FROM websites";

		try {
			//设置连接
			query.setConnection("com.mysql.jdbc.Driver", "jdbc:mysql://localhost:3306/RUNOOB", "root", "123456hf");
			//设置SQL语句
			query.setQuery_statement(stringSqlString);
			//得到查询的结果
			rs = query.getResult();
		} catch (SQLException e) {
			out.print("SQL 异常");
		}
	%>

	<%
		//显示查询结果
		out.println("<table border=\"1\" width=\"800px\" align=\"center\">");
		out.println("<tr><td colspan=5 align=\"center\">用javaBean查询网站数据</td></tr>");

		out.println("<tr>");
		out.println("<td>ID</td>");
		out.println("<td>网站名称</td>");
		out.println("<td>网站地址</td>");
		out.println("<td>网站排名</td>");
		out.println("<td>所属国家</td>");
		out.println("</tr>");

		while (rs.next()) {
			out.println("<tr>");
			out.println("<td>" + rs.getInt("id") + "</td>");
			out.println("<td>" + rs.getString("name") + "</td>");
			out.println("<td>" + rs.getString("url") + "</td>");
			out.println("<td>" + rs.getString("alexa") + "</td>");
			out.println("<td>" + rs.getString("country") + "</td>");
			out.println("</tr>");
		}
		rs.close();
		out.println("</table>");
	%>

</body>
</html>

<%-- 	<%	//参数化查询
		//查询数据库
		String param1,param2,param3;
		ResultSet rs1 = null;
		param1 = "...";
		param2 = "...";
		param3 = "...";
		query.setConnection("com.mysql.jdbc.Driver", "jdbc:mysql://localhost:3306/RUNOOB", "root", "123456hf");
		String [] param = { param1,param2,param3 };
		//设置Select 语句
		query.setQuery_statement("SELECT * FROM table where filed1=? and filed2=? and file3=?");
		query.setParam(param);
		rs = query.getResult();
	%> --%>


