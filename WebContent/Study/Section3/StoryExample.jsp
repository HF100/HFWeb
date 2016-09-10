<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%! 
	public String codeToString(String str) {
		String s = str;
		try {
			byte sb[] = s.getBytes("ISO-8859-1");
			s = new String(sb);
			return s;
		}
		catch (Exception e) {
			return s;
		}
	}
%>
<script type="text/javascript">
	function on_submit() {
		//验证数据合法性
		if (form1.story_content.value == "") {
			alert("请输入故事内容");
			form1.story_content.focus();
			return false;
		}
		
	}
</script> 
<%
	//把提交的故事内容写入文件
	int hangsize = 30; //文件每行的字符数
	String tempString1 = null;
	String tempString2 = null;
	tempString1 = codeToString(request.getParameter("story_content"));
	if (tempString1 != null) {
		
		File tempFile1 = new File("/Users/KDiOS/Desktop/JSPWrokPlace/Story.md");
		FileWriter fw = new FileWriter(tempFile1,true);
		BufferedWriter bufferW = new BufferedWriter(fw);
		int writeStringLength = tempString1.length();
		
		for (int i=0;i<writeStringLength/hangsize+1;i++) {
			if ((i + 1) * hangsize   < writeStringLength) {
				tempString2 = tempString1.substring(i * hangsize,(i + 1) * hangsize);
			} else {
				tempString2 = tempString1.substring(i * hangsize,writeStringLength);
			}
			bufferW.write(tempString2);
			bufferW.newLine();
		}
		bufferW.flush();
		bufferW.close();
		fw.close();
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>故事接龙</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-31" data-genuitec-path="/HFWeb/WebContent/Study/Section3/StoryExample.jsp">
	<div align="center" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-31" data-genuitec-path="/HFWeb/WebContent/Study/Section3/StoryExample.jsp">
		<center>
			<table border="1">
				<tr><td colspan="2" align="center">故事接龙游戏</td></tr>
				<tr>
					<td>游戏规则</td>
					<td>在后面的文本框中续写故事,一次写一段,写完后提交</td>
				</tr>
				<tr>
					<td>故事题目</td>
					<td>从前有座山</td>
				</tr>
				<tr>
					<td>已有故事内容</td>
				<td>&nbsp;&nbsp;
				<%
					//从文件中读取故事内容
					File f = new File("/Users/KDiOS/Desktop/JSPWrokPlace/Story.md");
					if (f.exists()) {
						FileReader fileReader1 = new FileReader(f);
						BufferedReader buffer1 = new BufferedReader(fileReader1);
						String tempString = null;
						while((tempString = buffer1.readLine()) != null) {
							out.println(tempString + "<br>");
						}
						buffer1.close();
						fileReader1.close();
					} else {
						out.println("故事中暂时没有内容。");
					}
				%>
				</td></tr>
				<tr>
					<td>
						<form name="form1" action="StoryExample.jsp" method="post" onsubmit="return on_submit()">
						请输入故事内容:
					</td>
					<td>
						<textarea rows="7" name="story_content" style="width:100%"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="提交">
					</td>
				</tr>
				</form>
			</table>
		</center>
	</div>
</body>
</html>