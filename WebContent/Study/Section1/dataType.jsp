<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据类型</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-8" data-genuitec-path="/HFWeb/WebContent/Study/Section1/dataType.jsp">
	<%
	//优先级 (由低到高) byte short char int long float double  
		boolean booleanTemp = true;
		byte byteTemp = 66;
		char charTemp = 'c';
		int intTemp = 88;
		short shortTemp = 66;
		long longTemp = 888;
		float floatTemp = 66.66F;
		double doubleTemp = 6.66E-8;
		out.println("布尔变量 booleanTemp 值为: " + booleanTemp + "<br>");
		out.println("字节变量 byteTemp 值为: " + byteTemp + "<br>");
		out.println("字符型变量 charTemp 值为: " + charTemp + "<br>");
		out.println("整型变量 intTemp 值为: " + intTemp + "<br>");
		out.println("短整型变量 shortTemp 值为: " + shortTemp + "<br>");
		out.println("长整型变量 longTemp 值为: " + longTemp + "<br>");
		out.println("单精度变量 floatTemp 值为: " + floatTemp + "<br>");
		out.println("双精度变量 doubleTemp 值为: " + doubleTemp + "<br>");
		
		out.println("<br>");
		
		Boolean BooleanTemp = new Boolean(false);
		Byte ByteTemp = new Byte((byte)66);
		Character CharacterTemp = new Character('c');
		Integer IntegerTemp =  new Integer(88);
		Short ShortTemp = new Short((short)66);
		Long LongTemp = new Long(888);
		Float FloatTemp = new Float(66.66F);
		Double DoubleTemp = new Double(6.66E-8);
		out.println("布尔包装对象 BooleanTemp 值为: " + BooleanTemp.booleanValue() + "<br>");
		out.println("字节包装对象 ByteTemp 值为: " + ByteTemp.byteValue() + "<br>");
		out.println("字符型包装对象 CharacterTemp 值为: " + CharacterTemp.charValue() + "<br>");
		out.println("整型包装对象 IntegerTemp 值为: " + IntegerTemp.intValue() + "<br>");
		out.println("短整型包装对象 ShortTemp 值为: " + ShortTemp.shortValue() + "<br>");
		out.println("长整型包装对象 LongTemp 值为: " + LongTemp.longValue() + "<br>");
		out.println("单精度包装对象 FloatTemp 值为: " + FloatTemp.floatValue() + "<br>");
		out.println("双精度包装对象 DoubleTemp 值为: " + DoubleTemp.doubleValue() + "<br>");
		
		out.println("<br>");

		int i;
		int j;
		int k;
		int intArray[][] = new int [5][6];
		k=0;
		//数组赋初值
		for ( i=0; i<5; i++ ) {
			for ( j=0; j<6; j++ ) {
				intArray[i][j] = k;
				k++;
			}
		}
		
		//输出数组中的值
		for ( i=0; i<5; i++ ) {
			for ( j=0; j<6; j++ ) {
				out.println("intArray[" + i + "]" + "[" + j + "] 值为: " + intArray[i][j]);
				out.println("<br>");
			}
		}
	%>
</body>
</html>