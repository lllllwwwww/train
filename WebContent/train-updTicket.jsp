<%@page import="cn.train.entity.Ticket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新车票</title>
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
.ticket{
	width: 400px;
	border: 1px solid #298cce;
	margin-top: 10px;
	font-size:14px;
}
.ticket .input{
    width:200px;
    height:30px;
    margin-top:10px;
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
	<div class="main">
		<!-- 头部开始 -->
		<div class="main_top">
			<div class="main_top_left">火车票预订系统</div>
			<div class="main_top_right">
				<div class="main_top_right_top">
					<div class="main_top_right_top_left">
						您好，<%=session.getAttribute("adminName") %>
					</div>
					<div class="main_top_right_top_right">
					</div>
				</div>
				<div class="main_top_right_bottom">
					<ul>
						<li id="main_top_right_bottom_li1"><a href="">客运首页</a></li>
						<li id="main_top_right_bottom_li2"><a href="">车票预订</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 头部结束 -->
		<%
		  Ticket t=(Ticket)request.getAttribute("ticket");
		%>
		<div class="ticket">
		  <form action="updTicket" method="post">
		   <table>
		        <tr height="30px">
		           <td width="80px">车次</td>
		           <td width="160px"><input type="text" value="<%=t.getTrainNo()%>" placeholder="<%=t.getTrainNo()%>" readonly name="trainNo"></td>
		        </tr>
		       <tr height="30px">
		           <td>出发站</td>
		           <td><input type="text" value="<%=t.getStart()%>" placeholder="<%=t.getStart()%>" name="start"></td>
		        </tr>
		        <tr height="30px">
		           <td>到达站</td>
		           <td><input type="text" value="<%=t.getArrive()%>" placeholder="<%=t.getArrive()%>" name="arrive"></td>
		        </tr>
		        <tr height="30px">
		           <td>出发时间</td>
		           <td><input type="text" value="<%=t.getStartDate()%>" placeholder="<%=t.getStartDate()%>" name="startDate"></td>
		        </tr>
		        <tr height="30px">
		           <td>到达时间</td>
		           <td><input type="text" value="<%=t.getArriveDate()%>" placeholder="<%=t.getArriveDate()%>" name="arriveDate"></td>
		        </tr>
		        <tr height="30px">
		           <td>历时</td>
		           <td><input type="text" value="<%=t.getTime()%>" placeholder="<%=t.getTime()%>" name="time"></td>
		        </tr> 
		        <tr height="30px">
		           <td>余票</td>
		           <td><input type="text" value="<%=t.getNum()%>" placeholder="<%=t.getNum()%>" name="num"></td>
		        </tr> 
		        <tr height="30px">
		           <td>价格</td>
		           <td><input type="text" value="<%=t.getPrice()%>" placeholder="<%=t.getPrice()%>" name="price"></td>
		        </tr>
		        <tr height="30px">
		           <td colspan="2" align="center"><input type="submit" value="提交"></td>
		        </tr>
		   </table>
		   </form>
		</div>
	</div>
</body>
</html>