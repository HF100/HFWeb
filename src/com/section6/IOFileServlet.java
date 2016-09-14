package com.section6;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class IOFileServlet extends HttpServlet {
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
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

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
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		super.init(arg0);
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(arg0, arg1);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//设置mime
		resp.setContentType("text/html;charset=GB2312");
		PrintWriter out = resp.getWriter();
		out.println("<html><head><title>接收文件写入</title></head><body>");
		//把提交的内容写入文件
		int RowSize = 30;//文件每行的字符数
		String tempString1 = null;
		String tempString2 = null;
		tempString1 = codeToString(req.getParameter("file_content"));
		if (tempString1 != null) {
			File tempFile1 = new File("/Users/KDiOS/Desktop/JSPWorkPlace/wtpwebapps/HFWeb/WebContent/Study/Section6/fileContent.txt");
			System.out.println(tempFile1.getAbsolutePath());
			FileWriter outFile1 = new FileWriter(tempFile1,true);
			BufferedWriter outBuffer1 = new BufferedWriter(outFile1);
			int writeStringLength = tempString1.length();
			for (int i=0;i<writeStringLength/RowSize;i++) {
				if ((i+1)*20 < writeStringLength) {
					tempString2 = tempString1.substring(i*RowSize,(i+1)*RowSize);
				} else {
					tempString2 = tempString1.substring(i*RowSize,writeStringLength);
				}
				outBuffer1.write(tempString2);
				outBuffer1.newLine();
			}
			outBuffer1.flush();
			outBuffer1.close();
			outFile1.close();
		}
		
		out.println("写入的文件内容是:<br>");
		//从文件中读取内容
		File f = new File("/Users/KDiOS/Desktop/JSPWorkPlace/wtpwebapps/HFWeb/WebContent/Study/Section6/fileContent.txt");
		System.out.println(f.getAbsolutePath());
		if (f.exists()) {
			FileReader fileReader1 = new FileReader(f);
			BufferedReader bufferedReader1 = new BufferedReader(fileReader1);
			byte bufferArray[] = new byte[90];
			String tempString = null;
			while ((tempString = bufferedReader1.readLine()) != null) {
				out.println(tempString + "<br>");
			}
			bufferedReader1.close();
			fileReader1.close();
		} else {
			out.println("故事中暂时没有内容");
		}
		out.println("</body></html>");
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

	}
}
