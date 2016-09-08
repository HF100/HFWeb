package com.yuri.dao;

import java.sql.*;

import com.sun.org.apache.xerces.internal.util.URI;

public class MySqlDemo {
	
	//JDBC 驱动及数据库 URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/RUNOOB";
	
	//数据库的用户名与密码 需要根据自己的设置
	static final String USER = "root";
	static final String PASSWORD = "123456hf";

	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt = null;

		try {
			//注册 JDBC 驱动
			Class.forName(JDBC_DRIVER);
			
			//打开连接
			System.out.println("连接数据库。。。");
			conn = DriverManager.getConnection(DB_URL,USER,PASSWORD);
			
			//执行查询
			System.out.println("实例化Statement对。。。");
			stmt = conn.createStatement();
			String sql;
			sql = "SELECT id, name, url FROM websites";
			ResultSet rs = stmt.executeQuery(sql);
			
			//展开结果集数据库
			while (rs.next()) {
				//通过字段检索
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String url = rs.getString("url");
				
				//输出数据
				System.out.print("ID" + id);
				System.out.print(",站点名称" + name);
				System.out.print(",站点URL" + url);
				System.out.print("\n");
			}
			
			//完成后关闭
			rs.close();
			stmt.close();
			conn.close();
			
		} catch (SQLException sqle) {
			//处理 JDBC 错误
			sqle.printStackTrace();
		} catch (Exception e) {
			// 处理 Class.forName 错误
			e.printStackTrace();
		} finally {
			//关闭资源
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException sqle1) {
				// nothing to do
			}
			
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle2) {
				sqle2.printStackTrace();
			}
		}
		System.out.println("GoodBye!");
	}
}
