<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
function on_submit() {
	// 验证数据合法性
	if (form1.username.value=="") {
		alert("用户名不能为空，请输入用户名！");
		form1.username.focus();
		return false;
	}
	if (form1.userpassword.value=="") {
		alert("密码不能为空，请输入密码！");
		form1.userpassword.focus();
		return false;
	}
	if (form1.reuserpassword.value=="") {
		alert("确认密码不能为空，请输入确认密码！");
		form1.reuserpassword.focus();
		return false;
	}
	if (form1.userpassword.value != form1.reuserpassword.value) {
		alert("两次密码输入不一致！");
		form1.userpassword.focus();
		return false;
	}
	if (form1.email.value.length != 0) {
		for (var i = 0; i < form1.email.value.length; i++) {
			if (form1.email.value.charAt(i) == "@") break;
		}

		if (i == form1.email.value.length) {
			alert("非法Email地址！");
			form1.email.focus();
			return false;
		}
	} else {
		alert("请输入Email!");
		form1.email.focus();
		return false;
	}
 

}

</script>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>新用户注册</title>
<script>!function(e){var c={nonSecure:"8123",secure:"8124"},t={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=t[n]+r[n]+":"+c[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-20" data-genuitec-path="/HFWeb/WebContent/Study/Section2/UserReg.jsp">
	<form method="POST" action="AcceptReg.jsp" name="form1" onsubmit="return on_submit()" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-20" data-genuitec-path="/HFWeb/WebContent/Study/Section2/UserReg.jsp">
	新用户注册<br>
	用户名(*):<input type="text" name="username" size="20"><br>
	密&nbsp;码(*):<input type="password" name="userpassword" size="20"><br>
	再输入一次密码(*):<input type="password" name="reuserpassword" size="20"><br>
	性别:<input type="radio" value="男" checked name="sex">男
		<input type="radio" value="女" name="sex">女<br>
	出生年月:<input name="year" size="4" maxlength=4>年
			<select name="month">
				<option value="1" selected>1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>月
			<input name="day" size="3" maxlength="4">日</td><br>
	电子邮箱(*):<input name="email" size="20" maxlength="28"><br>
	家庭住址:<input type="text" name="address" size="20"><br>
	<input type="submit" name="B1" value="提交">
	<input type="reset" name="B2" value="全部重写"><br>
	</form>
</body>
</html>