<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jspsmart.upload.*" %>
<%
	//新建一个SmartUpload对象
	SmartUpload su = new SmartUpload();
	//初始化
	su.initialize(pageContext);
	//设置contentDisposition 为 null 禁止浏览器自动打开文件
	//保证点击连接后是下载文件,如不设定,则下载文件扩展名为
	//Doc 时 浏览器自动使用Word打开它， 扩展名为pdf 时,
	//浏览器自动使用acrobat打开
	su.setContentDisposition(null);
	//下载文件
	su.downloadFile("./upload/images/123.jpg");
%>
