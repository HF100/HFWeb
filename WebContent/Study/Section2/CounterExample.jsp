<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网站计数器</title>
</head>
<body>
	<%!
		//串型化计算函数
		synchronized void countPeople() {
		ServletContext application = this.getServletContext();
			Integer number = (Integer)application.getAttribute("Count");
			if (number == null) {
				number = new Integer(1);
				application.setAttribute("Count",number);
			} else {
				number = new Integer(number.intValue() + 1);
				application.setAttribute("Count",number);
			}
		}
	%>
	<%
		if (session.isNew()) {
			//如果是一个新的会话
			countPeople();
		}
	Integer yourNumber = (Integer)application.getAttribute("Count");
	%>
	<p>
		欢迎访问本站,你是第<%=yourNumber %>个访问用户
	</p>
</body>
</html>