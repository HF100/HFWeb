<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>定时刷新页面</title>
</head>
<body>
	<%
		//设置刷新页面的时间 每隔1s 刷新一次
		response.setHeader("refresh","1");
	%>
	
	当前系统的时间是:
	<%
		Date thisDay = new Date();
		out.println(thisDay.getYear() + 1900 + "年");
		out.println(thisDay.getMonth() + 1 + "月");
		out.println(thisDay.getDate()+ "日");
		out.println(thisDay.getHours() + "时");
		out.println(thisDay.getMinutes() + "分");
		out.println(thisDay.getSeconds() + "秒");
		out.println("星期");
		switch(thisDay.getDay()) {
			case 0:
				out.println("日");
				break;
			case 1:
				out.println("一");
				break;
			case 2:
				out.println("二");
				break;
			case 3:
				out.println("三");
				break;
			case 4:
				out.println("四");
				break;
			case 5:
				out.println("五");
				break;
			case 6:
				out.println("六️");
				break;
		}
	 %>
</body>
</html>