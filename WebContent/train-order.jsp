<%@page import="cn.train.entity.Ticket"%>
<%@page import="cn.train.entity.Passenger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>
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

.train_info {
	margin-top: 10px;
}

.train_info_top {
	width: 1000px;
	height: 30px;
	line-height: 30px;
	background-color: #288BCC;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
}

.train_info_top span {
	margin-left: 20px;
	color: white;
	font-size: 14px;
}

.train_info_bottom {
	width: 998px;
	height: 81px;
	border-top: 2px solid #66C8E8;
	border-left: 1px solid #1678BE;
	border-right: 1px solid #1678BE;
	border-bottom: 1px solid #1678BE;
	background-color: #EEF1F8;
}

.train_info_bottom_top {
	width: 980px;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px dashed #999999;
}

.train_info_bottom_bottom {
	width: 980px;
	height: 40px;
	line-height: 40px;
}

.passenger_info {
	margin-top: 20px;
}

.passenger_info_top {
	width: 1000px;
	height: 30px;
	line-height: 30px;
	background-color: #288BCC;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
}

.passenger_info_top span {
	margin-left: 20px;
	color: white;
	font-size: 14px;
}

.passenger_info_bottom {
	width: 998px;
	height: 80px;
	line-height: 80px;
	border-top: 2px solid #66C8E8;
	border-left: 1px solid #1678BE;
	border-right: 1px solid #1678BE;
	border-bottom: 1px solid #1678BE;
	background-color: #EEF1F8;
}

.passenger_info_bottom_in {
	margin-left: 20px;
}

.order_button {
	width: 998px;
	hieght: 40px;
	margin-top: 40px;
}

.train_info_bottom_top span {
	font-size: 16px;
	font-weight: bold;
}

.order_button_up {
	width: 100px;
	height: 30px;
	background-color: #EDEBEB;
	border-radius: 5px;
	border: 1px solid #CCCCCC;
	font-size: 12px;
	margin-left: 400px;
}

.order_button_submit {
	width: 100px;
	height: 30px;
	background-color: #FF8000;
	border-radius: 5px;
	border: 1px solid #FF8000;
	color: white;
	font-size: 12px;
}
</style>
<%
	Passenger p = (Passenger) request.getAttribute("passenger");
	Ticket t = (Ticket) request.getAttribute("ticket");
	String startDate = (String) request.getAttribute("startDate");
	if (p == null) {
		response.sendRedirect("train-login.jsp");
	}
%>
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
		$("#order_button_submit").click(function() {
			$.ajax({
				url : 'orderMemory',
				type : 'get',
				async:false,
				cache:false,
				data : {
					'userName' : '<%=p.getUserName()%>',
					'trainNo' : '<%=t.getTrainNo()%>',
					'startDate' : '<%=startDate%>'
	            },
	            dataType:'text',
				success : function(data) {
					if ($.trim(data) == "true") {
						alert("提交成功");
					}
					if ($.trim(data) == "false1") {
						alert("你不能订购两张同一列车的票");
					}
					if ($.trim(data) == "false2") {
						alert("该列车的票已售完");
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("ajax执行失败");
					alert(XMLHttpRequest.status);
					alert(XMLHttpRequest.readyState);
					alert(textStatus);
				}
			})
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
						<%!String username = null;%>
						<%
							username = (String) session.getAttribute("username");
							if (username == null) {
						%>
						您好，请<a href="train-login.jsp">登录</a>&nbsp;|&nbsp;<a
							href="train-regist.jsp">注册</a>
						<%
							} else {
						%>
						您好，<a href="showpassenger?username=<%=username%>"><%=username%></a>&nbsp;|&nbsp;
						<a href="loginout?username=<%=username %>">注销</a>
						<%
							}
						%>
					</div>
					<div class="main_top_right_top_right">
						<a
							href="showpassenger?username=<%=(String) session.getAttribute("username")%>">个人中心</a>
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
		<div class="train_info">
			<div class="train_info_top">
				<span>列车信息</span>
			</div>
			<div class="train_info_bottom">
				<div class="train_info_bottom_top">
					<span><%=startDate%></span>&nbsp;&nbsp;<span><%=t.getTrainNo()%></span>次&nbsp;&nbsp;<span><%=t.getStart()%></span>站
					&nbsp;&nbsp;(<span><%=t.getStartDate()%></span>开)---<span><%=t.getArrive()%></span>站(<span><%=t.getArriveDate()%></span>到)
				</div>
				<div class="train_info_bottom_bottom">
					票价：<%=t.getPrice()%>&nbsp;&nbsp;余票：<%=t.getNum()%></div>
			</div>
		</div>
		<div class="passenger_info">
			<div class="passenger_info_top">
				<span>乘客信息</span>
			</div>
			<div class="passenger_info_bottom">
				<div class="passenger_info_bottom_in">
					姓名：<span><%=p.getName()%></span>&nbsp;&nbsp;证件类型：<span><%=p.getCardType()%></span>&nbsp;&nbsp;
					证件号码：<span><%=p.getCardNo()%></span>&nbsp;&nbsp;手机号码：<span><%=p.getPhone()%></span>
				</div>
			</div>
		</div>
		<div class="order_button">
			<a href="train-show.jsp"><button class="order_button_up">上一步</button></a>&nbsp;&nbsp;&nbsp;
			<a href="train-show.jsp"><button class="order_button_submit" id="order_button_submit">提交订单</button></a>
		</div>
	</div>
</body>
</html>