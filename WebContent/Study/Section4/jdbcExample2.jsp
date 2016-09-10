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
	String name = codeToString(request.getParameter("name"));
	if (name == null || name.trim().length() == 0) {
		sqlString = new String("SELECT * FROM websites");
	} else {
		//参数查询
		/* sqlString = new String("SELECT * FROM websites where name = '" + name.trim() + "'"); */		
		//模糊查询
		sqlString = new String("SELECT * FROM websites where name like '%" + name.trim() + "%'");
		out.print(sqlString);
	}
	String url = codeToString(request.getParameter("url"));	
	if (url == null || url.trim().length() == 0) {
		//noting to do
	} else {
		if (sqlString.indexOf("where") == -1) {
			//sqlString 语句中没有where 子句
			sqlString = sqlString +" where url like '%" + url.trim() + "%'";
		} else {
			sqlString = sqlString +"and url like '%" + url.trim() + "%'"; 
		}
		//模糊查询
		out.print(sqlString);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jdbc显示数据 根据id查询</title>
<script type="text/javascript">
	function on_submit() {
		if (form1.sql_id.value == "") {
			alert("请输入查询的id");
			form1.sql_id.focus();
			return false;
		}
	}
</script>
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
			connection = DriverManager.getConnection(connection_url,
					user_name, user_pass);

			//执行查询语句
			System.out.println("实例化statement对。。。");
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlString);
			rs.last();
			int rowNumber = rs.getRow();

			out.println("<table border width=\"100%\">");

			out.println("<tr>");
			out.println("<td>查询条件:</td>");
			out.println("<td colspan=2>");
			
			out.println("<form action=jdbcExample2.jsp method=\"post\" name=\"form1\">");
			out.println("名称:");
			out.println("<input type=\"text\" name=\"name\">");
			out.println("网址(相关字母或数字等):");
			out.println("<input type=\"text\" name=\"url\">");
			out.println("<input type=\"submit\" value=\"提交\">");
			out.println("</form>");
			
			out.println("</td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td colspan=3 align=\"center\">网站数据(共" + rowNumber + " 条记录)</td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td>ID</td>");
			out.println("<td>站点名称</td>");
			out.println("<td>站点地址</td>");
			out.println("</tr>");

			rs.beforeFirst();
			
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>" + rs.getInt("id") + "</td>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("url") + "</td>");
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