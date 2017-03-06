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
<!--     <div style="margin-left:36%;margin-right:36%;margin-top:15%;text-align:center;"> -->
	<div style="position:absolute;left:50%;top:50%;margin:-100px 0 0 -150px;width:300px; height:200px;">
	<font size="8">JOIN US</font><br>
	    <div class="a">
		    <table>
				<tr>
					<td>
						<input type="text" id="userName" name="userName" class="userName" placeholder="您的用户名" autocomplete="off"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" id="password" name="password" placeholder="输入密码" autocomplete="off"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" id="Repass" name="Repass" placeholder="再次输入密码" autocomplete="off"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="phoneNumber" id="phoneNumber" name="phoneNumber" placeholder="输入手机号码" autocomplete="off"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="email" id="email" name="email" placeholder="输入邮箱地址" autocomplete="off"/>
					</td>
				</tr>
				<tr>
					<td>
						<button type="submit" id="btnSave" onclick="check()">注册</button>
					</td>
				</tr>
				<tr>
					<td>
						<a href="http://localhost:8080/OrderOnline/login"><button type="submit" onclick="checkIn()">已经有账号？</button></a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
<script type = text/javascript>
function check(){
	var userName = $("#userName").val();
	var password = $("#password").val();
	var Repass = $("#Repass").val();
	var phoneNumber = $("#phoneNumber").val();
	var email = $("#email").val();
	
   /* if(!userName || userName == "") {
     alert("用户名不能为空");
     return false;
   }else if (!password || password == "") {
     alert("密码不能为空");
     return false;
   } else if (!Repass || Repass == "") {
	 alert("密码不能为空");
	 return false;
   } else if (!phoneNumber || phoneNumber == "") {
     alert("手机号码不能为空");
     return false;
   } else if (password != Repass) {
	      alert("两次密码不同，请重新输入");
	      return false;
	   }
   var phoneTest = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
   if(!phoneTest.test(phoneNumber)) 
	{ 
	    alert('请输入有效的手机号码！'); 
	    return false; 
	} */
   
	var emailTest = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(!emailTest.test(email)) {
	alert('邮箱格式不对'); 
	return false;
	}

   var pwTest = /^(?:(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])|(?=.*[A-Z])(?=.*[a-z])(?=.*[^A-Za-z0-9])|(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])|(?=.*[a-z])(?=.*[0-9])(?=.*[^A-Za-z0-9])).{6,}|(?:(?=.*[A-Z])(?=.*[a-z])|(?=.*[A-Z])(?=.*[0-9])|(?=.*[A-Z])(?=.*[^A-Za-z0-9])|(?=.*[a-z])(?=.*[0-9])|(?=.*[a-z])(?=.*[^A-Za-z0-9])|(?=.*[0-9])(?=.*[^A-Za-z0-9])|).{6,}$/;
   if(!pwTest.test(password))
	   {
	   alert('密码格式不对'); 
	    return false;
	   }
}

</script>


</html>