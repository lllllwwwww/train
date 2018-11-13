<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style>
* {
	margin: 0 auto;
	padding: 0;
}

.main {
	width: 1300px;
	height: 583px;
	border: 2px solid #478DCD;
}

.main_top {
	width: 1300px;
	height: 80px;
	background-color: #F0F0F0;
	border-bottom: 2px solid #478DCD;
}

.main_top_left {
	width: 300px;
	height: 80px;
	line-height: 80px;
	color: black;
	font-size: 20px;
	font-weight: bold;
	float: left;
	text-align: center;
	margin-left: 200px;
}

.main_top_right {
	width: 300px;
	hieght: 80px;
	float: right;
	margin-right: 200px;
}

.main_top_right_top {
	width: 300px;
	height: 40px;
	line-height: 40px;
}

.main_top_right_top_left {
	float: left;
	font-size: 13px;
}

.main_top_right_top_left a {
	text-decoration: none;
	font-size: 13px;
	color: black;
}

.main_top_right_top_right {
	float: left;
	margin-left: 40px;
}

.main_top_right_top_right a {
	text-decoration: none;
	font-size: 13px;
	color: black;
}

.main_top_right_bottom {
	width: 200px;
	height: 40px;
	line-height: 40px;
	background-color: #2E91D0;
	margin-right: 90px;
	border-top-left-radius: 40px;
}

.main_top_right_bottom a {
	text-decoration: none;
	font-size: 15px;
	color: white;
}

.main_top_right_bottom ul {
	width: 200px;
	height: 40px;
	background-color: #2E91D0;
	list-style: none;
	border-top-left-radius: 40px;
}

.main_top_right_bottom li {
	width: 70px;
	height: 30px;
	line-height: 30px;
	float: left;
	margin-left: 26px;
	margin-top: 5px;
	text-align: center;
	border-radius: 2px;
}

.login_bottom {
	width: 1300px;
	height: 500px;
	position: relative;
}

.login_bottom_xf {
	left: 450px;
	top: 100px;
	width: 400px;
	height: 300px;
	position: absolute;
	text-align: center;
	font-size: 14px;
}

.login_text {
	width: 200px;
	height: 25px;
	margin-top: 60px;
}

.login_password {
	width: 200px;
	height: 25px;
	margin-top: 20px;
}

.login_button {
	width: 100px;
	height: 30px;
	background-color: #FF8000;
	border: 1px solid #FF8000;
	margin-top: 40px;
}
.adminlogin{
   margin-top:10px;
}
.adminlogin a{
   text-decoration:none;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".main_top_right_top_left a").hover(function() {
			$(this).css("color", "#FA8803");
		}, function() {
			$(this).css("color", "black");
		})
		$(".main_top_right_top_right a").hover(function() {
			$(this).css("color", "orange");
		}, function() {
			$(this).css("color", "black");
		})
		$("#main_top_right_bottom_li1").hover(function() {
			$(this).css("background-color", "white");
			$("#main_top_right_bottom_li1 a").css("color", "#2E91D0");
		}, function() {
			$(this).css("background-color", "#2E91D0");
			$("#main_top_right_bottom_li1 a").css("color", "white");
		})
		$("#main_top_right_bottom_li2").hover(function() {
			$(this).css("background-color", "white");
			$("#main_top_right_bottom_li2 a").css("color", "#2E91D0");
		}, function() {
			$(this).css("background-color", "#2E91D0");
			$("#main_top_right_bottom_li2 a").css("color", "white");
		})
		$("#login_form").submit(function() {
			var username = $(".login_text").val();
			var password = $(".login_password").val();
			var flag = true;
			$.ajax({
				url : 'loginchecked',
				data : {
					'username' : username,
					'password' : password
				},
				async : false,
				cache:false,
				type : 'post',
				success : function(result) {
					if ($.trim(result) == "true") {
						flag = true;
					} else {
						alert("用户名或密码错误！");
						flag = false;
					}
				},
				error : function() {
					alert("ajax执行失败");
					flag = false;
				}
			})
			return flag;
		})
	})
</script>
</head>
<body>
	<div class="main">
		<!-- 头部开始 -->
		<div class="main_top">
			<div class="main_top_left">火车票预订系统</div>
			<div class="main_top_right">
				<div class="main_top_right_top">
					<div class="main_top_right_top_left">
						您好，请<a href="train-login.jsp">登录</a>&nbsp;|&nbsp;<a
							href="train-regist.jsp">注册</a>
					</div>
					<div class="main_top_right_top_right">
						<a href="showpassenger?username=<%=(String)session.getAttribute("username")%>">个人中心</a>
					</div>
				</div>
				<div class="main_top_right_bottom">
					<ul>
						<li id="main_top_right_bottom_li1"><a href="train-main.jsp">客运首页</a></li>
						<li id="main_top_right_bottom_li2"><a href="train-show.jsp">车票预订</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 头部结束 -->
		<div class="login_bottom">
			<img src="<%=request.getContextPath()%>/image/beijing.jpg"
				width="1300px" height="500px"></img>
			<div class="login_bottom_xf">
				<form action="train-main.jsp" method="post" id="login_form">
					登录名：<input type="text" name="username" class="login_text"><br>
					密码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password"
						class="login_password"><br> <input type="submit"
						value="登录" class="login_button" id="login_submit">&nbsp;&nbsp;&nbsp;
					<a href="train-regist.jsp"><input type="button" value="注册"
						class="login_button"></a>
				</form>
				<div class="adminlogin">
				    <a href="train-adminlogin.jsp">管理员登录</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>