<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>逻辑操作</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-11" data-genuitec-path="/HFWeb/WebContent/Study/Section1/logic.jsp">
	<form name="form1" action="logic.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-11" data-genuitec-path="/HFWeb/WebContent/Study/Section1/logic.jsp">
		<select name="color">
		<option value="red">红色</option>
		<option value="blue">蓝色</option>
		<option value="green">绿色</option>
		</select>
		<input type="submit" name="submit" value="提交">
	</form>
	<%
		String s=null;
		s=request.getParameter("color");
		out.println("你的选择" + s);
		if (s!=null) {
			switch(s.charAt(0)) {
				case 'r':
					out.println("你选择了红色。");
					break;
				case 'g':
					out.println("你选择了绿色。");
					break;
				case 'b':
					out.println("你选择了蓝色。");
					break;
				default:
					out.println("你没有选择。");
					break;
			}
		} else {
			out.println("你没有选择。");
		}
		
		
		out.println("<br>");
		
		out.println("求1到100的和. <br>");
		int i=0;
		int sum=0;
		
		while(i<=100) {
			sum+=i;
			i++;
		}
		
		out.println("while循环求得和为: " + sum + "<br>");
		
		i=0;
		sum=0;
		
		do {
			sum+=i;
			i++;
		} while(i<=100);
		out.println("dowhile循环求得和为: " + sum + "<br>");
	
		sum=0;
		for (i=0;i<=100;i++) {
			sum+=i;
		}
		out.println("for循环求得和为: " + sum + "<br>");
	%>
	
	<hr size=1>
	
	<%! //简单计数器
		int m_counter = 0;
		synchronized void counterFunction() {
			m_counter++;
		}
	%>
	
	<% counterFunction();%>
	网站计数器<br>
	你是第<%= m_counter %>位访问者
	
</body>
</html>