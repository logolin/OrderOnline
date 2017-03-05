<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/menu/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${ctx}/static/js/jquery-3.0.0.min.js"></script>
<title>注册</title>
</head>
<body style="background-image: url('${ctx}/static/img/1.jpg');background-size:cover;">
    <div style="margin-left:36%;margin-right:36%;margin-top:15%;text-align:center;">
	<font size="8">JOIN US</font><br>
    <div class="a">
	<tr>
	<input type="text" id="userName" name="userName" class="userName" placeholder="您的用户名" autocomplete="off"/>

	</tr><br><br>
	<tr>
	<input type="password" id="password" name="password" placeholder="输入密码" autocomplete="off"/>
	</tr><br><br>
	<tr>
	<input type="password" id="Repass" name="Repass" placeholder="再次输入密码" autocomplete="off"/>
	</tr><br><br>
	<tr>
	<input type="phoneNumber" id="phoneNumber" name="phoneNumber" placeholder="输入手机号码" autocomplete="off"/>
	</tr><br><br>
	<tr>
	<input type="email" id="email" name="email" placeholder="输入邮箱地址" autocomplete="off"/>
	</tr><br><br>
	<tr>
	<button type="submit" id="btnSave" onclick="check()">注册</button>
	</tr>
	<tr>
	<a href="http://localhost:8080/OrderOnline/login"><button type="submit" onclick="checkIn()">已经有账号？</button></a>
	</tr>
	</div>
	</div>
</body>
<script type = text/javascript>
function check(){
	var userName = document.getElementById("userName").value;
	var password = document.getElementById("password").value;
	var Repass = document.getElementById("Repass").value;
	var phoneNumber = document.getElementById("phoneNumber").value;
   if(!userName || userName == ""){
     alert("用户名不能为空");
     return false;
   }else if(!password || password == ""){
     alert("密码不能为空");
     return false;
   }else if(!Repass || Repass == ""){
	 alert("密码不能为空");
	 return false;
   }else if(!phoneNumber || phoneNumber == ""){
     alert("手机号码不能为空");
     return false;
   }else if(password != Repass) {
	      alert("两次密码不同，请重新输入");
	      return false;
	   }
   var phoneTest = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
   if(!phoneTest.test(phoneNumber)) 
	{ 
	    alert('请输入有效的手机号码！'); 
	    return false; 
	}
}

</script>


</html>