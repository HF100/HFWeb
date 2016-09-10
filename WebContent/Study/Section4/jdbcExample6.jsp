<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*"%>
<%
	//当前页码数默认为1
	int dipage = 1;
	String pages = request.getParameter("dipage");
	if (pages == null) {
		pages = "1";
	}

	try {
		dipage = Integer.parseInt(pages);
	} catch (Exception e) {
		dipage = 1;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jdbc 分页显示</title>
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
			String sql = "select * from websites";
			rs = stmt.executeQuery(sql);

			//记录条数
			int countRecord = 0;
			//每页记录条数
			int countPageRecord = 0;
			//总页数
			int countPage = 0;
			//每页2条记录
			countPageRecord = 1;
			//得到记录条数
			rs.last();
			countRecord = rs.getRow();
			//得到总页数
			if (countRecord % countPageRecord == 0) {
				countPage = countRecord / countPageRecord;
			} else {
				countPage = countRecord / countPageRecord + 1;
			}
			//把记录指针移至当前页第一条记录之前
			if ((dipage - 1) * countPageRecord == 0) {
				rs.beforeFirst();
			} else {
				rs.absolute((dipage - 1) * countPageRecord);
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
				if (i>=countPageRecord) {
					//当前页显示完,则退出循环
					break;
				}
			}
			
			out.println("<tr><td colspan=4 align=\"center\">");
			out.println("共" + countRecord + "条记录,共" + countPage + "页,当前第"+dipage+"页,每页"+countPageRecord+"条记录");
			if (dipage == 1) {
				
			} else {
				//不是首页
				out.println("<a href=jdbcExample6.jsp?dipage=1>首页</a>,");
				out.println("<a href=jdbcExample6.jsp?dipage=" + (dipage-1) +">上一页</a>,");
			}
			if (dipage == countPage) {
				
			} else {
				//当前不是尾页
				out.println("<a href=jdbcExample6.jsp?dipage=" + (dipage+1) +">下一页</a>,");
				out.println("<a href=jdbcExample6.jsp?dipage=" + countPage +">尾页</a>,");
			}
			out.println("</td></tr>");
			out.print("</table>");
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