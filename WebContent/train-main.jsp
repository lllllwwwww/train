<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
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

.main_bottom {
	width: 1300px;
	height: 500px;
	border-top: 2px solid #478DCD;
	border-bottom: 2px solid #478DCD;
}

.main_bottom_in {
	width: 1000px;
	height: 400px;
	margin-top: 20px;
}

.main_bottom_left {
	width: 380px;
	height: 400px;
	float: left;
}

.main_bottom_right {
	width: 600px;
	height: 400px;
	float: left;
	margin-left: 20px;
}

.main_bottom_left_top {
	width: 380px;
	height: 260px;
	border: 1px solid #1678BE;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.main_bottom_left_top_title {
	width: 381px;
	height: 30px;
	line-height: 30px;
	background-color: #288BCC;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	background-color: #288BCC;
}

.main_bottom_left_top_title span {
	margin-left: 20px;
	font-size: 14px;
	color: white;
}

.main_bottom_left_top_form {
	width: 380px;
	height: 230px;
	background-color: #EEF1F8;
	text-align: center;
	font-size: 12px;
}

.main_bottom_left_top_form .input {
	width: 200px;
	height: 20px;
	margin-top: 20px;
}

.main_bottom_left_top_form .button {
	width: 200px;
	height: 30px;
	background-color: #FF8000;
	color: white;
	font-size: 14px;
	font-weight: 600;
	border: 1px solid #FF8000;
	margin-top: 20px;
	border-radius:5px;
}

.main_bottom_left_bottom {
	width: 380px;
	height: 130px;
	border: 1px solid #1678BE;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	margin-top: 6px;
}

.main_bottom_left_bottom_title {
	width: 381px;
	height: 30px;
	line-height: 30px;
	background-color: #288BCC;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	background-color: #288BCC;
}

.main_bottom_left_bottom_title span {
	margin-left: 20px;
	font-size: 14px;
	color: white;
}

.main_bottom_left_bottom_img {
	width: 380px;
	height: 130px;
	margin-top: 10px;
	text-align: center;
}

.main_bottom_left_bottom_img_in {
	width: 60px;
	height: 60px;
	float: left;
	margin-left: 13px;
}

.main_bottom_left_bottom_img_in span {
	color: #666666;
	font-size: 12px;
	margin-top: 10px;
}

.main_bottom_right_title {
	width: 601px;
	height: 30px;
	line-height: 30px;
	background-color: #288BCC;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.main_bottom_right_title ul {
	list-style: none;
}

.main_bottom_right_title li {
	width: 85px;
	height: 20px;
	line-height: 20px;
	float: left;
	margin-left: 10px;
	font-size: 14px;
	color: white;
	text-align: center;
	margin-top: 5px;
	border-radius: 2px;
}

.main_bottom_right_content {
	width: 599px;
	height: 369px;
	border: 1px solid #1678BE;
}

.main_bottom_right_content ul {
	list-style: none;
}

.main_bottom_right_content_in {
	width: 599px;
	height: 369px;
	display: none;
}

.main_bottom_right_content_in table { 
    width:599px;
	font-size: 14px;
}

.main_bottom_right_content_in table td {
	border-bottom: 1px dashed #D9D9D9;
}

.main_bottom_right_content_in table tr:nth-child(odd) {
	background: #FFFFFF;
}

.main_bottom_right_content_in table tr:nth-child(even) {
	background: #EEF1F8;
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
//		$(".main_bottom_right_title li").hover(function(){
//			$(this).css("background-color","#66C8E8");
//			var i=$(this).attr("index");
//			$("div[index="+i+"]").show();
//		},function(){
//			$(this).css("background-color","#288BCC");
//			var i=$(this).attr("index");
//			$("div[index="+i+"]").hide();
//		})
        $(".main_bottom_right_title li").hover(function(){
        	$(this).focus();
        },function(){
        	$(this).blur();
        })
		$(".main_bottom_right_title li").focus(function(){
			$(this).css("background-color","#66C8E8");
			if($(".main_bottom_right_content_in").length>0){
				$(".main_bottom_right_content_in").hide();
				var i=$(this).attr("index");
				$("div[index="+i+"]").show();
			}else{
				var i=$(this).attr("index");
				$("div[index="+i+"]").show();
			}
		})
		$(".main_bottom_right_title li").blur(function(){
			$(this).css("background-color","#288BCC");
		})
		$("li[index="+0+"]").focus();
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
		<!-- 头部结束 -->
		<div class="main_bottom">
			<div class="main_bottom_in">
				<div class="main_bottom_left">
					<div class="main_bottom_left_top">
						<div class="main_bottom_left_top_title">
							<span>车票查询</span>
						</div>
						<%String startDate=(String)request.getAttribute("startDate"); 
		                Date date=new Date();SimpleDateFormat sdf=new SimpleDateFormat("MM-dd"); %>
						<div class="main_bottom_left_top_form">
							<form action="showTicket" method="post" class="form">
								出发地&nbsp;&nbsp;<input type="text" name="start" class="input" value="太原" placeholder="太原"><br>
								目的地&nbsp;&nbsp;<input type="text" name="arrive" class="input" value="北京" placeholder="北京"><br>
								出发日&nbsp;&nbsp;<input type="text" name="startDate"
									class="input" value="<%=sdf.format(date) %>" placeholder="<%=sdf.format(date)%>"><br> <br> <input type="radio"
									name="type" value="normal">&nbsp;<span>普通</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="type" value="student">&nbsp;<span>学生</span>
								<br> <input type="submit" value="查      询" class="button">
							</form>
						</div>
					</div>
					<div class="main_bottom_left_bottom">
						<div class="main_bottom_left_bottom_title">
							<span>出行向导</span>
						</div>
						<div class="main_bottom_left_bottom_img">
							<div class="main_bottom_left_bottom_img_in">
								<img src="image/demo1.png" width="60px" height="60px"> <span>车站查询</span>
							</div>
							<div class="main_bottom_left_bottom_img_in">
								<img src="image/demo2.png" width="60px" height="60px"> <span>中转查询</span>
							</div>
							<div class="main_bottom_left_bottom_img_in">
								<img src="image/demo3.png" width="60px" height="60px"> <span>票价查询</span>
							</div>
							<div class="main_bottom_left_bottom_img_in">
								<img src="image/demo4.png" width="60px" height="60px"> <span>正晚点查询</span>
							</div>
							<div class="main_bottom_left_bottom_img_in">
								<img src="image/demo5.png" width="60px" height="60px"> <span>客票代售点</span>
							</div>
						</div>
					</div>
				</div>
				<div class="main_bottom_right">
					<div class="main_bottom_right_title">
						<ul>
							<li index="0">咨询</li>
							<li index="1">最新动态</li>
							<li index="2">常见问题</li>
							<li index="3">使用须知</li>
							<li index="4">相关规章</li>
							<li index="5">铁路保险</li>
						</ul>
					</div>
					<div class="main_bottom_right_content">
						<ul>
							<li>
								<div class="main_bottom_right_content_in" index="0">
									<img src="image/timg.jpg" width="599px" height="369px"></img>
								</div>
							</li>
							<li>
								<div class="main_bottom_right_content_in" index="1">
									<table>
										<tr height="30px">
											<td width="499px">关于微信方式发送购票通知服务的使用说明</td>
											<td width="100px">2017-12-26</td>
										</tr>
										<tr height="30px">
											<td>关于网站新增微信支付服务功能的公告</td>
											<td>2017-11-22</td>
										</tr>
										<tr height="30px">
											<td>公告</td>
											<td>2017-10-12</td>
										</tr>
										<tr height="30px">
											<td>关于调整互联网、电话订票起售时间的公告</td>
											<td>2015-12-01</td>
										</tr>
										<tr height="30px">
											<td>关于开行西宁至茶卡间旅客列车的公告</td>
											<td>2014-11-26</td>
										</tr>
									</table>
								</div>
							</li>
							<li>
								<div class="main_bottom_right_content_in" index="2">
									<table>
										<tr height="30px">
											<td width="499px">身份核验结果有几种状态？</td>
										</tr>
										<tr height="30px">
											<td>如何了解自己的身份信息核验结果？</td>
										</tr>
										<tr height="30px">
											<td>购买实名制车票丢失了怎么办？</td>
										</tr>
										<tr height="30px">
											<td>我在网站购票时，扣款成功但购票不成功怎么办？</td>
										</tr>
										<tr height="30px">
											<td>注册时，网站提示“身份信息重复”,怎么办？</td>
										</tr>
									</table>
								</div>
							</li>
							<li>
								<div class="main_bottom_right_content_in" index="3">
									<table>
										<tr height="30px">
											<td width="499px">注册新用户</td>
										</tr>
										<tr height="30px">
											<td>网上购票流程</td>
										</tr>
										<tr height="30px">
											<td>铁路电子客票</td>
										</tr>
										<tr height="30px">
											<td>身份核验</td>
										</tr>
										<tr height="30px">
											<td>铁路车票快递服务须知</td>
										</tr>
									</table>
								</div>
							</li>
							<li>
								<div class="main_bottom_right_content_in" index="4">
								    <table>
										<tr height="30px">
											<td width="499px">《铁路互联网售票暂行方法》</td>
										</tr>
										<tr height="30px">
											<td>《铁路互联网购票须知》</td>
										</tr>
										<tr height="30px">
											<td>《铁路互联网身份核验须知》</td>
										</tr>
										<tr height="30px">
											<td>《铁路旅客运输规程》</td>
										</tr>
										<tr height="30px">
											<td>《铁路旅客运输办理细则》</td>
										</tr>
									</table>
								</div>
							</li>
							<li>
								<div class="main_bottom_right_content_in" index="5">
								      <table>
										<tr height="30px">
											<td width="499px">《铁路旅客人身意外伤害保险条款（A款）》</td>
										</tr>
										<tr height="30px">
											<td>《铁路旅客人身意外伤害保险（指定行程）投保须知》</td>
										</tr>
										<tr height="30px">
											<td>《铁路旅客人身意外伤害保险（指定行程）常见问题》</td>
										</tr>
									</table>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>