<%@page import="cn.train.entity.Passenger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
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

.info {
	width: 1000px;
	height: 500px;
	margin-top: 20px;
}

.info_left {
	width: 200px;
	height: 400px;
	border: 1px solid #1678BE;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	float: left;
}

.info_left_top {
	width: 200px;
	height: 30px;
	line-height: 30px;
	background-color: #2487C9;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

.info_left_top span {
	margin-left: 20px;
	color: white;
	font-size: 16px;
}

.info_left_bottom {
	width: 200px;
	height: 369px;
	background-color: #EEF1F8;
	border-top: 1px solid #66C8E8;
}

.info_left_bottom ul {
	margin-top: 20px;
	list-style: none;
}

.info_left_bottom li {
	width: 160px;
	height: 30px;
	margin-left: 20px;
	line-height: 30px;
	border-bottom: 1px solid #DDDDDD;
}

.info_left_bottom li a {
	font-size: 14px;
	text-decoration: none;
	color: black;
}

.info_right {
	margin-left: 20px;
	width: 770px;
	height: 450px;
	border: 1px solid #1678BE;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	float:left;
}

.info_right_top {
	width: 770px;
	height: 30px;
	line-height: 30px;
	background-color: #2487C9;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

.info_right_top span {
	margin-left: 20px;
	color: white;
	font-size: 16px;
}
.info_right_bottom_in{
    margin-top:30px;
}
.info_right_bottom_in table {
    border:1px solid #1678BE;
}
.passenger_submit{
    width:60px;
    height:20px;
    background-color:#FF8000;
    border:1px solid #FF8000;
    border-radius:3px;
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
	})
</script>
</head>
<body>
    <%!Passenger p=null;String username=null; %>
    <%
      p=(Passenger)request.getAttribute("passenger");
      if(p==null){
    	  response.sendRedirect("train-login.jsp");
      }else{
      %>
	<div class="main">
		<!-- 头部开始 -->
		<div class="main_top">
			<div class="main_top_left">火车票预订系统</div>
			<div class="main_top_right">
				<div class="main_top_right_top">
					<div class="main_top_right_top_left">
					<%username=(String)session.getAttribute("username");
					if(username==null){%>
						您好，请<a href="train-login.jsp">登录</a>&nbsp;|&nbsp;<a href="train-regist.jsp">注册</a>
						<%}else{%>
						您好，<a href="showpassenger?username=<%=username%>"><%=username%></a>&nbsp;|&nbsp;
						<a href="loginout?username=<%=username %>">注销</a>
						<%} %>
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
		<div class="info">
			<div class="info_left">
				<div class="info_left_top">
					<span>我的12306</span>
				</div>
				<div class="info_left_bottom">
					<ul>
						<li><a href="showOrder?username=<%=(String)session.getAttribute("username") %>">我的订单</a></li>
						<li><a href="showpassenger?username=<%=(String)session.getAttribute("username")%>">个人信息</a></li>
					</ul>
				</div>
			</div>
			<div class="info_right">
				<div class="info_right_top">
					<span>个人信息</span>
				</div>
				<div class="info_right_bottom">
				    <div class="info_right_bottom_in">
				    <form action="updpassenger" method="post">
				        <table cellpadding="0" cellspacing="0">
				           <tr height="30px">
				               <td width="100px" align="right">用户名：</td>
				               <td width="200px" ><input type="text" name="userName" value="<%=p.getUserName()%>" placeholder="<%=p.getUserName()%>" readonly></td>
				           </tr>
				            <tr height="30px">
				               <td width="100px" align="right">姓名：</td>
				               <td width="200px"><input type="text" name="name" value="<%=p.getName() %>" placeholder="<%=p.getName()%>"></td>
				           </tr>
				            <tr height="30px">
				               <td width="100px" align="right">身份证号：</td>
				               <td width="200px"><input type="text" name="cardNo" value="<%=p.getCardNo()%>" placeholder="<%=p.getCardNo()%>"></td>
				           </tr>
				            <tr height="30px">
				               <td width="100px" align="right">邮箱：</td>
				               <td width="200px"><input type="text" name="email" value="<%=p.getEmail()%>" placeholder="<%=p.getEmail()%>"></td>
				           </tr>
				            <tr height="30px">
				               <td width="100px" align="right">手机号：</td>
				               <td width="200px"><input type="text" name="phone" value="<%=p.getPhone()%>" placeholder="<%=p.getPhone()%>"></td>
				           </tr>
				           <tr height="30px">
				                <td width="300px" colspan="2" align="center">
				                    <input type="submit" value="修改" class="passenger_submit">
				                </td>
				           </tr>
				        </table>
				        </form>
				    </div>
				</div>
			</div>
		</div>
	</div>
	<%} %>
</body>
</html>