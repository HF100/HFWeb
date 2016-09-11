<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="query" type="com.section5.QueryJava" scope="page">
</jsp:useBean>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物</title>
</head>
<body>
	我要<a href="MyCar.jsp">查看购物车</a><br>
	<%
		//查询数据库
		ResultSet rs = null;
		String stringSqlString = "SELECT * FROM Goods";

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
		
		out.println("<table border=\"1\" width=\"800px\" align=\"center\">");
		out.println("<tr><td colspan=4>网上书店商城<td></tr>");
		out.println("<tr>");
		out.println("<td>序号</td>");
		out.println("<td>书名</td>");
		out.println("<td>价格(单位:元)</td>");
		out.println("<td>上架时间</td>");
		out.println("<td>购物吗？</td>");
		out.println("</tr>");
		
		while (rs.next()) {
			out.println("<tr>");
			out.println("<td>"+rs.getInt("Goods_id")+"</td>");
			out.println("<td>"+rs.getString("Goods_name")+"</td>");
			out.println("<td>"+rs.getString("Goods_money")+"</td>");
			out.println("<td>"+rs.getDate("creat_date")+"</td>");
			out.println("<td><a href='myCar.jsp?Goods_id="+rs.getInt(0)+"'>购买</a></td>");
			out.println("</tr>");
		}
		out.println("</table>");
		rs.close();
	%>
</body>
</html>