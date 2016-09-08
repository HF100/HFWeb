<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字符串</title>
</head>
<body>
	<%
		//字符串截取
		String s = "This is a student!";
		int startposition = 1;
		int endpostion = 7;
		char pointchars[] = new char[endpostion - startposition];
		s.getChars(startposition, endpostion, pointchars, 0);
		out.println(pointchars);
		
		out.println("<br>");
		
		//查找字符串
		String str = new String();
		str = "I am a Student. he is also a student.";
		out.println("字符串str为：" + str + "<br>");
		out.println("字符串str中第一个出现a的下标为：" + str.indexOf('a') + "<br>");
		out.println("字符串str中最后一个出现a的下标为：" + str.lastIndexOf('a') + "<br>");
		out.println("字符串str中第一个出现en的下标为：" + str.indexOf("en") + "<br>");
		out.println("字符串str中最后一个出现en的下标为：" + str.indexOf("en") + "<br>");
		out.println("字符串str中,从下标4开始第一个出现a的下标为：" + str.indexOf('a', 4) + "<br>");
		out.println("字符串str,从下标4开始最后一个出现a的下标为为：" + str.lastIndexOf('a', 4) + "<br>");
		out.println("字符串str中,从下标14开始第一个出现en的下标为：" + str.indexOf("en",14) + "<br>");
		out.println("字符串str,从下标14开始最后一个出现en的下标为为：" + str.lastIndexOf("en", 14) + "<br>");
		
		out.println("<br>");

		StringBuffer buffer = new StringBuffer("He is a Student.");
		out.println("字符串buffer为：" + buffer + "<br>");
		out.println("字符串buffer长度为：" + buffer.length() + "<br>");
		out.println("字符串buffer容量为：" + buffer.capacity() + "<br>");
		out.println("字符串buffer第3个字符为：" + buffer.charAt(2) + "<br>");
		out.println("字符串buffer第3个到第6个字符串为：" + buffer.substring(2,5) + "<br>");
		out.println("字符串buffer末尾追加串为：" + buffer.append("ME,too.") + "<br>");
		out.println("字符串buffer翻转后的串为：" + buffer.reverse() + "<br>");

		
	%>
</body>
</html>