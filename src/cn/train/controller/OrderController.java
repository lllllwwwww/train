package cn.train.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.train.entity.Passenger;
import cn.train.entity.ShowOrder;
import cn.train.entity.Ticket;
import cn.train.service.OrderService;
import cn.train.service.PassengerService;
import cn.train.service.TicketService;

@Controller
public class OrderController {
	@Autowired
	private PassengerService passengerService;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private OrderService orderService;
	@RequestMapping("/makeOrder")
	public String makeOrder(@RequestParam("trainNo")String trainNo,@RequestParam("username")String username,
			@RequestParam("startDate")String startDate,Model model,HttpServletResponse response){
		if(username==null){
			try {
				response.sendRedirect("train-login.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Passenger p=passengerService.selectByName(username);
		Ticket t=ticketService.selectByTrainNo(trainNo);
		model.addAttribute("passenger", p);
		model.addAttribute("ticket", t);
		model.addAttribute("startDate",startDate);
		return "train-order";
	}
	@RequestMapping("/orderMemory")
	@ResponseBody
	public String orderMemory(@RequestParam("userName")String userName,@RequestParam("trainNo")String trainNo,
			@RequestParam("startDate")String startDate,HttpServletResponse response){
		Ticket t=ticketService.selectTicketByTrainNo(trainNo);
		int i=0;
		if(t.getNum()>0){
			try {
				i=orderService.addOrder(userName, trainNo, startDate);
				int j=ticketService.updateTicketNum(trainNo);
			} catch (Exception e) {
				System.out.println("false1");
				return "false1";
			}
			if(i==1){
				System.out.println("true");
				return "true";
			}
		}
		return "false2";
	}
	@RequestMapping("/showOrder")
	public String showOrder(@RequestParam("username")String username,Model model){
		List<ShowOrder> list=orderService.showOrder(username);
		model.addAttribute("list", list);
		return "train-showorder";
	}
	@RequestMapping("/delOrder")
	public String delOrder(@RequestParam("username")String username,@RequestParam("trainNo")String trainNo,@RequestParam("orderStartDate")String startDate){
		int i=orderService.delOrder(username, trainNo, startDate);
		int j=ticketService.updateTicketNum2(trainNo);
		return "train-show";
	}
}
