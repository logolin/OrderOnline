<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/menu/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${ctx}/static/js/jquery-3.0.0.min.js"></script>
<title>登录</title>
</head>
<body style="background-image: url('${ctx}/static/img/1.jpg');background-size:cover;">
    <div style="border:1px solid #000;margin-left:36%;margin-right:36%;margin-top:18%;text-align:center;color:blue;'">
		<h2><strong>登录</strong></h2><br>
		<form method="post">
			<table>
			<tr>
			User:<input type ="text" id="userName" name="userName" />
			</tr><br><br>
			<tr>
				
			Password:<input type ="password" id="password" name="password" />
			</tr><br><br>
			<tr>
			<button type="submit" onclick="check()">登录</button>
		
			</tr>
			</table>
		</form>
	</div>
</body>
<script type = text/javascript>
function check(){
	var userName = document.getElementById("userName").value;
	var password = document.getElementById("password").value;
   if(!userName || userName == ""){
     alert("用户名不能为空");
     return false;
   }else if(!password || password == ""){
     alert("密码不能为空");
     return false;
   }
}
</script>
</html>