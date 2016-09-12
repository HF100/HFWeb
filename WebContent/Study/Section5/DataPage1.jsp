<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*"%>
<%@ page import="com.section5.dataPageJava"%>
<%@ page import="com.section5.QueryJava"%>
<jsp:useBean id="query" class="com.section5.QueryJava" scope="session">
</jsp:useBean>
<jsp:useBean id="dataPage" class="com.section5.dataPageJava"
	scope="session">
</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javaBean 分页显示</title>
</head>
<body>
	<%
		//查询数据库
		ResultSet rs = null;
		String stringSqlString = "SELECT * FROM websites";

		try {
			//设置连接
			query.setConnection("com.mysql.jdbc.Driver",
					"jdbc:mysql://localhost:3306/RUNOOB", "root",
					"123456hf");
			//设置SQL语句
			query.setQuery_statement(stringSqlString);
			//得到查询的结果
			rs = query.getResult();
			
			String pages = request.getParameter("dipage");
			//得到记录条数
			rs.last();
			
			int countRecord = rs.getRow();
			int countRecordPagea = 5;
			if (pages==null||(pages.trim()).length()==0) {
				dataPage.setAll(countRecord, countRecordPagea);
			} else {
				try {
					dataPage.setCurrentPage(Integer.parseInt(pages));
				} catch (Exception e) {
					out.println("参数不正确");
				}
			}
			
			int currentRecord = (dataPage.getCurrentPage()-1)*dataPage.getSizePage();
			//把记录指针移至当前页第一条记录之前
			if (currentRecord == 0) {
				rs.beforeFirst();
			} else {
				rs.absolute(currentRecord);
			}

			out.println("<table border width=\"100%\" style='font-size:10pt'>");

			out.println("<tr>");
			out.println("<td colspan=4>分页显示websites的内容</td>");
			out.println("</tr>");

			out.println("<tr>");
			out.println("<td>站点名称</td>");
			out.println("<td>ID</td>");
			out.println("<td>站点名称</td>");
			out.println("<td>站点dizhi</td>");
			out.println("</tr>");

			int i = 0;
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>" + rs.getString(2) + "</td>");
				out.println("<td>" + rs.getInt("id") + "</td>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("url") + "</td>");
				out.println("</tr>");
				i++;
				if (i >= dataPage.getSizePage()) {
					//当前页显示完,则退出循环
					break;
				}
			}

			out.println("<tr><td colspan=4 align=\"center\">");
			out.println("共" + dataPage.getCountRecord() + "条记录,共" + dataPage.getCountPage() + "页,当前第"
					+ dataPage.getCurrentPage() + "页,每页" + dataPage.getSizePage()
					+ "条记录");
			if (dataPage.getCurrentPage() == 1) {

			} else {
				//不是首页
				out.println("<a href=DataPage1.jsp?dipage=1>首页</a>,");
				out.println("<a href=DataPage1.jsp?dipage="
						+ (dataPage.getCurrentPage() - 1) + ">上一页</a>,");
			}
			if (dataPage.getCurrentPage() == dataPage.getCountPage()) {

			} else {
				//当前不是尾页
				out.println("<a href=DataPage1.jsp?dipage="
						+ (dataPage.getCurrentPage() + 1) + ">下一页</a>,");
				out.println("<a href=DataPage1.jsp?dipage=" + dataPage.getCountPage()
						+ ">尾页</a>,");
			}
			out.println("</td></tr>");
			out.print("</table>");

		} catch (SQLException e) {
			out.print("SQL 异常");
		}
		
	%>
</body>
</html>