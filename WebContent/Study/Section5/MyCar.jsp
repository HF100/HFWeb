<%@page import="java.util.Enumeration"%>
<%@page
	import="com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.section5.BuyCar"%>
<%@ page import="com.section5.QueryJava"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="query" class="com.section5.QueryJava" scope="page">
</jsp:useBean>
<jsp:useBean id="mycar" class="com.section5.BuyCar" scope="session">
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
</head>
<body>
	<%
		//查询数据库
		ResultSet rs = null;

		try {
			//设置连接
			query.setConnection("com.mysql.jdbc.Driver", "jdbc:mysql://localhost:3306/RUNOOB", "root", "123456hf");

			if (request.getParameter("Goods_id") == null || request.getParameter("Goods_id").trim().length() == 0) {
				//noting to do
			} else {
				int Goods_id = Integer.parseInt(request.getParameter("Goods_id"));
				String stringSqlString = "SELECT * FROM Goods where Goods_id=" + Goods_id;
				//设置SQL语句
				query.setQuery_statement(stringSqlString);
				//得到查询的结果
				rs = query.getResult();

				out.println("<table border='1' align='center' width='800px'>");
				out.println("<tr><td colspan='4'>你要买的书是:</td></tr>");
				out.println("<tr>");
				out.println("<td>序号</td>");
				out.println("<td>书名</td>");
				out.println("<td>单价</td>");
				out.println("<td>数目</td>");
				out.println("</tr>");

				rs.next();
				out.println("<tr>");
				out.println("<td>" + Goods_id + "</td>");
				out.println("<td>" + rs.getString("Goods_name") + "</td>");
				out.println("<td>" + rs.getString("Goods_money") + "</td>");
				out.println("<form action=\"addGoods.jsp\" method=\"post\">");
				out.println("<td><input type=\"text\" name=book_count size=6>");
				out.println("<input type=\"hidden\" name=Goods_id value=" + Goods_id + ">");
				out.println("<input type=\"submit\" value=\"提交\"></td></form>");
				out.println("</tr>");
				out.println("</table>");
			}

			//列出已放入购物车的书
			double all_price = 0;
			out.println("<table border=\"1\" align=\"center\" width='100%'>");
			out.println("<tr><td colspan=7 align='center'>你的购物车的商品:</td></tr>");

			out.println("<tr>");
			out.println("<td>序号</td>");
			out.println("<td>书名</td>");
			out.println("<td>数目</td>");
			out.println("<td>单价(单位:元/个)</td>");
			out.println("<td>总价(单位:元)</td>");
			out.println("<td>删除</td>");
			out.println("<td>减少</td>");
			out.println("</tr>");

			Hashtable list = mycar.listMyGoods();
			Enumeration enum1 = list.keys();
			while (enum1.hasMoreElements()) {
				String goods = (String) enum1.nextElement();
				byte tempB[] = goods.getBytes("ISO-8859-1");
				goods = new String(tempB);

				String stringSqlString = "SELECT * FROM Goods where Goods_id=" + goods;
				//设置SQL语句
				query.setQuery_statement(stringSqlString);
				//得到查询的结果
				rs = query.getResult();
				out.println("<td>" + rs.getInt("Goods_id") + "</td>");
				out.println("<td>" + rs.getString("Goods_name") + "</td>");
				out.println("<td>" + list.get(goods) + "</td>");
				out.println("<td>" + rs.getDouble("Goods_money") + "</td>");
				all_price = rs.getDouble("Goods_money") * Float.parseFloat((String) list.get(goods));
				out.println("<td>" + rs.getDouble("Goods_money") * Float.parseFloat((String) list.get(goods))
						+ "</td>");
				out.println("<td><a herf='deleteGoods.jsp?Goods_id=" + goods + "'>从购物车中删除</td>");
				out.println("<form action=minusGoods.jsp method=post>");
				out.println("<td><input type=\"text\" name=book_count size=6>");
				out.println("<input type=\"hidden\" name=Goods_id value=" + goods + ">");
				out.println("<input type=\"submit\" value=\"提交\"></td></form>");
				out.println("</tr>>");
			}
			out.println("<tr>");
			out.println("<td colspan=4>总价为:</td>");
			out.println("<td>" + all_price+ "</td>");
			out.println("<td></td><td></td>");
			out.println("</tr>");
			out.println("</table>");
			
		} catch (SQLException e) {
			out.print("SQL 异常");
		}
	%>
</body>
</html>