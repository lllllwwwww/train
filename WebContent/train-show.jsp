<%@page import="cn.train.entity.Ticket"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>浏览</title>
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

.sex_box {
	width: 980px;
	height: 74px;
	background-color: #eef1f8;
	margin-top: 10px;
	border: 1px solid #298cce;
	border-radius: 3px;
}

.s-info {
	width: 480px;
	height: 50px;
	margin-top: 10px;
	border-right: 1px solid #5FB0DC;
	float: left;
	margin-left: 120px;
}

.s-info ul {
	list-style: none;
}

.s-info li {
	width: 150px;
	height: 20px;
	line-height: 20px;
	float: left;
	margin-top: 15px;
	margin-left: 5px;
	font-size: 14px;
}

.s-info .s-input {
	width: 100px;
	height: 20px;
	margin-left: 2px;
	font-size:12px;
	color:#999999;
}

.s-button {
	width: 300px;
	height: 50px;
	float: left;
	font-size: 13px;
	margin-top: 10px;
}

.s-radio {
	width: 50px;
	height: 30px;
	float: left;
	margin-top: 10px;
	margin-left: 20px;
}

.s-submit {
	width: 100px;
	height: 25px;
	margin-top:12.5px;
	margin-left: 100px;
	background-color: #FF8000;
	border: 1px solid #FF8000;
	border-radius: 3px;
	color: white;
	float: left;
}

.show {
	width: 980px;
	border: 1px solid #298cce;
	margin-top: 10px;
}

.show table {
	text-align:center;
}

.show table th {
	width: 109px;
	color: white;
	font-size:15px;
}

.show  .title {
	width: 107px;
	height: 30px;
	line-height: 30px;
	border-right: 1px solid #345A99;
	text-align: center;
	border-right: 1px solid #345A99;
}

.show .title2 {
	width: 107px;
	height: 30px;
	line-height: 30px;
	text-align: center;
}
.show .show_button{
    width:80px;
    height:30px;
    background-color:#0080FF;
    border:1px solid #0080FF;
    color:white;
    border-radius:5px;
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
					<%!String username=null; %>
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
		<%String startDate=(String)request.getAttribute("startDate"); 
		Date date=new Date();SimpleDateFormat sdf=new SimpleDateFormat("MM-dd"); %>
		<div class="sex_box">
			<form action="showTicket" method="post">
				<div class="s-info">
					<ul>
						<li><span>出发地</span><input type="text" name="start"
							class="s-input" value="太原" placeholder="太原"></li>
						<li><span>目的地</span><input type="text" name="arrive"
							class="s-input" value="北京" placeholder="北京"></li>
						<li><span>出发日</span><input type="text" name="startDate"
							class="s-input" value="<%=sdf.format(date) %>" placeholder="<%=sdf.format(date)%>"></li>
					</ul>
				</div>
				<div class="s-button">
					<div class="s-radio">
						<input type="radio" value="normal" name="type"
							class="s-radio_radio">普通<br> <input type="radio"
							value="student" name="type" class="s-radio_radio">学生
					</div>
					<input type="submit" value="查询" class="s-submit">
				</div>
			</form>
		</div>
		<div class="show">
			<table cellpadding="1px" cellspacing="0">
				<tr bgcolor="#3295D3" height="50px">
					<th><div class="title">车次</div></th>
					<th><div class="title">出发站</div></th>
					<th><div class="title">到达站</div></th>
					<th><div class="title">出发时间</div></th>
					<th><div class="title">到达时间</div></th>
					<th><div class="title">历时</div></th>
					<th><div class="title">余票</div></th>
					<th><div class="title">票价</div></th>
					<th><div class="title2">备注</div></th>
				</tr>
				<%List<Ticket> tlist=(List<Ticket>)request.getAttribute("tlist");
				if(tlist!=null){
				    for(int i=0;i<tlist.size();i++){
				    	Ticket ticket=tlist.get(i);
				%>
				<tr bgcolor="#EEF1F8" height="50px">
					<td><%=ticket.getTrainNo() %></td>
					<td><%=ticket.getStart() %></td>
					<td><%=ticket.getArrive() %></td>
					<td><%=ticket.getStartDate() %></td>
					<td><%=ticket.getArriveDate() %></td>
					<td><%=ticket.getTime() %></td>
					<td><%=ticket.getNum() %></td>
					<td><%=ticket.getPrice() %></td>
					<%
					if(username!=null){
					%>
						<td><a href="makeOrder?trainNo=<%=ticket.getTrainNo()%>&username=<%=(String)session.getAttribute("username")%>&
								startDate=<%=startDate %>"><input type="button" value="预订" class="show_button"></a></td>
					
					<% }else{%>
							<td><a href="train-login.jsp"><input type="button" value="预订" class="show_button"></a></td>
					<% }%>
				
				</tr>
				<%    	
				   }
				}else{
				%>
				<%} %>
			</table>
		</div>
	</div>
</body>
</html>