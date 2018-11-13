<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<style type="text/css">
* {
	margin: 0 auto;
	padding: 0;
}

.main {
	width: 1300px;
	height: 680px;
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

.regist {
	width: 979px;
	height: 550px;
	border: 1px solid #1678BE;
	margin-top: 20px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.regist_top {
	width: 980px;
	height: 30px;
	line-height: 30px;
	background-color: #2A8DCD;
	color: #D9F1F2;
	font-size: 14px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.regist_top span {
	margin-left: 20px;
}

.regist_bottom {
	width: 980px;
	height: 470px;
	border-top: 1px solid #66C8E8;
}

.regist_bottom ul {
	margin-top: 40px;
}

.regist_bottom li {
	width: 958px;
	height: 30px;
	line-height: 30px;
	margin-bottom: 10px;
	list-style: none;
	font-size: 13px;
}

.regist_bottom .label {
	width: 375px;
	height: 30px;
	float: left;
	margin-right: 10px;
	text-align: right;
}

.regist_bottom .label .required {
	color: red;
}

.regist_bottom .r-txt {
	float: left;
}

.regist_bottom .input {
	width: 195px;
	height: 18px;
	line-height: 18px;
	border: 1px solid #cfcdc7;
	padding: 5px 0 5px 5px;
	font-size: 13px;
}

.regist_bottom .tips {
	display: inline;
	float: left;
	margin-left: 8px;
	color: #FF7F00;
	height: 30px;
	line-height: 30px;
}
.regist_bottom .sel{
	width: 202px;
	height: 30px;
	line-height: 30px;
	border: 1px solid #cfcdc7;
	padding: 5px 0 5px 5px;
	font-size: 13px;
}
.regist_button{
    width:958px;
    height:30px;
    margin:50px 0;
    text-align:center;
}
.regist_submit{
    width:120px;
    height:30px;
    background-color:#FF8000;
    border:1px solid #FF8000;
    border-radius:5px;
    color:white;
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
        $(".main_top_right_top_right a").hover(function(){
        	$(this).css("color","orange");
        },function(){
        	$(this).css("color","black");
        })
        $("#main_top_right_bottom_li1").hover(function(){
			$(this).css("background-color","white");
		    $("#main_top_right_bottom_li1 a").css("color","#2E91D0");
		},function(){
			$(this).css("background-color","#2E91D0");
			$("#main_top_right_bottom_li1 a").css("color","white");
		})
		 $("#main_top_right_bottom_li2").hover(function(){
			$(this).css("background-color","white");
		    $("#main_top_right_bottom_li2 a").css("color","#2E91D0");
		},function(){
			$(this).css("background-color","#2E91D0");
			$("#main_top_right_bottom_li2 a").css("color","white");
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
						您好，请<a href="train-login.jsp">登录</a>&nbsp;|&nbsp;<a href="train-regist.jsp">注册</a>
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
		<div class="regist">
			<div class="regist_top">
				<span>账户信息</span>
			</div>
			<div class="regist_bottom">
			   <form action="addPassenger" method="post">
				<ul>
					<li>
						<div class="label">
							<span class="required">*</span> 用户名:
						</div>
						<div class="r-txt">
							<input type="text" placeholder="用户名设置后不可修改" class="input"
								name="userName">
						</div>
						<div class="tips">6-30位字母、数字或“_”,字母开头</div>
						<div></div>
					</li>
					<li>
						<div class="label">
							<span class="required">*</span> 登录密码:
						</div>
						<div class="r-txt">
							<input type="password" placeholder="6-20位字母、数字或符号" class="input"
								name="password">
						</div>
						<div class="tips"></div>
						<div></div>
					</li>
					<li>
						<div class="label">
							<span class="required">*</span> 确认密码:
						</div>
						<div class="r-txt">
							<input type="password" placeholder="再次输入你的登录密码" class="input"
								name="repwd">
						</div>
						<div class="tips"></div>
						<div></div>
					</li>
					<li>
						<div class="label">
							<span class="required">*</span> 姓名:
						</div>
						<div class="r-txt">
							<input type="text" placeholder="请输入姓名" class="input"
								name="name">
						</div>
						<div class="tips"></div>
						<div></div>
					</li>
					<li>
						<div class="label">
							<span class="required">*</span> 证件类型:
						</div>
						<div class="r-txt">
							<select class="sel" name="cardType" id="cardtype">
							    <option value="1">二代身份证</option>
							    <option value="C">港澳通行证</option>
							    <option value="G">台湾通行证</option>
							    <option value="B">护照</option>
							</select>
						</div>
						<div class="tips"></div>
						<div></div>
					</li>
					<li>
						<div class="label">
							<span class="required">*</span> 证件号码:
						</div>
						<div class="r-txt">
							<input type="text" placeholder="请输入你的证件号码" class="input"
								name="cardNo">
						</div>
						<div class="tips"></div>
						<div></div>
					</li>
					<li>
						<div class="label">
							 邮箱:
						</div>
						<div class="r-txt">
							<input type="text" placeholder="请正确填写邮箱地址" class="input"
								name="email">
						</div>
						<div class="tips"></div>
						<div></div>
					</li>
					<li>
						<div class="label">
							<span class="required">*</span> 手机号码:
						</div>
						<div class="r-txt">
							<input type="text" placeholder="请输入你的手机号码" class="input"
								name="phone">
						</div>
						<div class="tips">请输入正确的手机号</div>
						<div></div>
					</li>
					<li>
						<div class="label">
							<span class="required">*</span> 旅客类型:
						</div>
						<div class="r-txt">
							<select class="sel" name="passengerType" id="guesttype">
							    <option value="1">成人</option>
							    <option value="2">学生</option>
							</select>
						</div>
						<div class="tips"></div>
						<div></div>
					</li>
				</ul>
				<div class="regist_button">
				     <input type="submit" value="注册" class="regist_submit">
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>