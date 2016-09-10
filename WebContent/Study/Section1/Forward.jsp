<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forward</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-4" data-genuitec-path="/HFWeb/WebContent/Study/Section1/Forward.jsp">
	<form name="form1" action="Forward.jsp" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-4" data-genuitec-path="/HFWeb/WebContent/Study/Section1/Forward.jsp">
		<select name="goaddress" onchange="javascript:form1.submit()">
		<option value="novalue"></option>
		<option value="1">实例1</option>
		<option value="2">实例2</option>
		<option value="3">实例3</option>
		</select>
	</form>
	<%
		String s=null;
		s=request.getParameter("goaddress");
		if (s!=null) {
			switch(s.charAt(0)) {
				case '1':
	%>
				<jsp:forward page="index.jsp"/>
	<% 
				break;
				case '2':
	%>
				<jsp:forward page="logic.jsp"/>
	<% 
				break;
				case '3':
	%>
				<jsp:forward page="includeTmp.jsp"/>
	<% 
				break;
				default:
					out.println("你没有选择！");
			}
		} else {
			out.println("你没有选择！");
		}
	%>
</body>
</html>