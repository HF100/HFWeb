package com.section6;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

;

public class SqlTableServlet extends HttpServlet {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设置mime
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		//sql语句
		String sqlString = "SELECT * FROM Goods";
		Connection con;
		Statement sql;
		ResultSet rs;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch (ClassNotFoundException e) {
			out.println("类找不到");
		}
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/RUNOOB","root","123456hf");
			sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = sql.executeQuery(sqlString);
			rs.last();
			int rowNumber = rs.getRow();
			out.println("<table border='1' align='center'>");
			out.println("<tr><td colspan='5' align='center'>商品列表(共有"+ rowNumber +"条记录)</td></tr>");
			out.println("<tr>");
			out.println("<th>商品ID</th>");
			out.println("<th>商品名称</th>");
			out.println("<th>商品价格</th>");
			out.println("<th>商品更新日期</th>");
			out.println("<th>商品上架日期</th>");
			out.println("</tr>");
			
			rs.beforeFirst();
			
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>"+rs.getInt("Goods_id")+"</td>");
				out.println("<td>"+rs.getString("Goods_name")+"</td>");
				out.println("<td>"+rs.getDouble("Goods_money")+"</td>");
				out.println("<td>"+rs.getDate("update_date")+"</td>");
				out.println("<td>"+rs.getDate("creat_date")+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			con.close();
			rs.close();
		} catch (SQLException e) {
			out.println("SQL 异常" + e);
		}
		out.println("</body></html>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

}
