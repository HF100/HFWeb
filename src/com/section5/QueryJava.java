package com.section5;

import java.sql.*;

public class QueryJava {

	/* 定义sql语句 */
	public String query_statement;
	/* 查询条件 */
	public String param[];
	/* 查询结果 */
	public ResultSet result = null;
	public Connection conn;

	/* 设置查询参数 */
	public void setParam(String[] param) {
		this.param = param;
	}

	/* 设置SQL查询语句 */
	public void setQuery_statement(String query_statement) {
		this.query_statement = query_statement;
	}

	/* 设置连接参数 */
	public void setConnection(String driverName, String jdbcURL, String username, String passwd) throws Exception {
		Connection conn1;
		Class.forName(driverName);
		conn1 = DriverManager.getConnection(jdbcURL, username, passwd);
		conn1.setAutoCommit(false);
		this.conn = conn1;
	}

	/* 获取查询结果 */
	public ResultSet getResult() {
		try {
			PreparedStatement select_stm = conn.prepareStatement(query_statement,
					java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE, java.sql.ResultSet.CONCUR_READ_ONLY);
			if (param != null) {
				for (int i = 0; i < param.length; i++) {
					select_stm.setString(i + 1, param[i]);
				}
			}
			result = select_stm.executeQuery();
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}

	/* 对数据库进行增加记录操作 */
	public void insertRecord() throws SQLException, java.io.UnsupportedEncodingException {
		try {
			PreparedStatement insert_stm = conn.prepareStatement(query_statement);
			if (param != null) {
				for (int i = 0; i < param.length; i++) {
					insert_stm.setString(i + 1, param[i]);
				}
			}
			insert_stm.executeUpdate();
			insert_stm.close();
			conn.commit();
		} catch (Exception e) {
			System.out.println(e);
			conn.rollback();
		}
	}

	/* 对数据库进行更新记录操作 */
	public void updateRecord() throws SQLException, java.io.UnsupportedEncodingException {
		try {
			PreparedStatement update_stm = conn.prepareStatement(query_statement);
			if (param != null) {
				for (int i = 0; i < param.length; i++) {
					update_stm.setString(i + 1, param[i]);
				}
			}
			update_stm.executeUpdate();
			update_stm.close();
			conn.commit();
		} catch (Exception e) {
			System.out.println(e);
			conn.rollback();
		}
	}

	/* 对数据库进行更新记录操作 */
	public void deleteRecord() throws SQLException, java.io.UnsupportedEncodingException {
		try {
			PreparedStatement delete_stm = conn.prepareStatement(query_statement);
			if (param != null) {
				for (int i = 0; i < param.length; i++) {
					delete_stm.setString(i + 1, param[i]);
				}
			}
			delete_stm.executeUpdate();
			delete_stm.close();
			conn.commit();
		} catch (Exception e) {
			System.out.println(e);
			conn.rollback();
		}
	}

	public QueryJava() {
		
	}

	public static void main(String[] args) {
		System.out.println("QueryJava build Success.....");
	}

}
