package com.section6;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class AcceptUserReg extends HttpServlet {

	// 处理中文字符串
	public String codeToString(String str) {
		String tempB = str;
		try {
			byte[] sb = tempB.getBytes("ISO-8859-1");
			tempB = new String(sb);
			return tempB;
		} catch (UnsupportedEncodingException e) {
			return tempB;
		}
	}
	
	public static void main(String[] args) {
		System.out.println("AcceptUserReg Servlet build success....");
	}
	
	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		super.service(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("方法调用了。。。。");
		//设置mime
		resp.setContentType("text/html;charset=GB2312");
		PrintWriter out = resp.getWriter();
		out.println("<html><head><title>接收新用户注册</title></head><body>");
		out.println("这是新用户注册所提交的数据:<br>");
		out.println("用户名是:" + codeToString(req.getParameter("username") + "<br>"));
		out.println("密码是:" + codeToString(req.getParameter("userpassword") + "<br>"));
		out.println("性别是:" + codeToString(req.getParameter("sex") + "<br>"));
		out.println("出生年月日是:" + codeToString(req.getParameter("year") +"年")+codeToString(req.getParameter("month")+"月")+codeToString(req.getParameter("day")+"日") + "<br>");
		out.println("电子邮箱是:" + codeToString(req.getParameter("email") + "<br>"));
		out.println("家庭住址是:" + codeToString(req.getParameter("address") + "<br>"));
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
