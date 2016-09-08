<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Date类</title>
</head>
<body>
	<%
		Date dateTemp1 = new Date();
		long longTemp = 47*365*24*60*60*1000L;
		Date dateTemp2 = new Date(longTemp);
		out.println("dateTemp1(今天)是:" + dateTemp1.toString() + "<br>");
		out.println("dateTemp2是:" + dateTemp2.toString() + "<br>");
		
		if (dateTemp1.equals(dateTemp2)) {
			out.println("两者时间相同");
		} else {
			if (dateTemp1.before(dateTemp2)) {
				out.println("dateTemp1时间较早。");
			} else {
				out.println("dateTemp1时间较晚。");
			}
		}
	%>
</body>
</html>