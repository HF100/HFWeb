package com.section6;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class FirstServlet extends HttpServlet {

	public static void main(String[] args) {
		System.out.println("first Servlet build success....");
	}
	
	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		//设置mime
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("这是一个简单的Servlet。");
		out.println("客户端Ip地址是" + request.getLocalAddr() + "<br>");
		out.println("</body></html>");
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}
}
