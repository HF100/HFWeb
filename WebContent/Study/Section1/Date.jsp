<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Date类</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/HFWeb/WebContent/Study/Section1/Date.jsp">
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