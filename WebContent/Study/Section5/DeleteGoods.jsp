<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.section5.BuyCar" %>
<jsp:useBean id="mycar" class="com.section5.BuyCar" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除购物车商品</title>
</head>
<body>
	<%
		String Goods_id = request.getParameter("Goods_id");
		try {
			mycar.deleteGoods(Goods_id);
			out.println("成功删除购物车中的书本");
		} catch (Exception e) {
			out.println("输入的数据不正确");
		}
	%>
	<a href="BuyBook1.jsp">继续购物</a><br>
	<a href="MyCar.jsp">查看购物车</a>
</body>
</html>