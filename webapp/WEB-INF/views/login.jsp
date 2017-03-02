<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style>
body{background:#ABC;}
</style>
</head>
<body>
    <div style="border:1px solid #000;margin-left:36%;margin-right:36%;margin-top:18%;text-align:center;color:blue;'">
	<h2><strong>登录</strong></h2><br>
	<table>
	<tr>
	User:&nbsp;<input type ="text" id="user" name="user" />
	</tr><br><br>
	<tr>
	Password:<input type ="password" id="password" name="password" />
	</tr><br><br>
	<tr>
	<button type="submit" onclick="check()">登录</button>

	</tr>
	</table>
	</div>
</body>
<script type = text/javascript>
function check(){
	var user = document.getElementById("user").value;
	var password = document.getElementById("password").value;
   if(!user || user == ""){
     alert("用户名不能为空");
     return false;
   }else if(!password || password == ""){
     alert("密码不能为空");
     return false;
   }
}
</script>
</html>