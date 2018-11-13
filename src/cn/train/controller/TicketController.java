package cn.train.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.train.entity.Ticket;
import cn.train.service.TicketService;

@Controller
public class TicketController {
   @Autowired
   private TicketService ticketService;
   @RequestMapping("/showTicket")
   public String showTicket(@RequestParam("start") String start,@RequestParam("arrive") String arrive,
		   @RequestParam("startDate") String startDate,Model model){
	   List<Ticket> list=ticketService.showTicket(start, arrive);
	   model.addAttribute("tlist",list);
	   model.addAttribute("startDate",startDate);
	   return "train-show";
   }
   @RequestMapping("/showAllTicket")
   public String showAllTicket(Model model){
	   List<Ticket> list=ticketService.showAllTicket();
	   model.addAttribute("tlist",list);
	   return "train-correct";
   }
   @RequestMapping("/delTicket")
   public String delTicket(@RequestParam("trainNo") String trainNo){
	   int i=ticketService.delTicket(trainNo);
	   return "redirect:/showAllTicket";
   }
   @RequestMapping("/beforeUpdTicket")
   public String brforeUpdTicket(@RequestParam("trainNo") String trainNo,Model model){
	   Ticket t=ticketService.selectByTrainNo(trainNo);
	   model.addAttribute("ticket", t);
	   return "train-updTicket";
   }
   @RequestMapping("/updTicket")
   public String updTicket(@RequestParam("trainNo") String trainNo,@RequestParam("start") String start,@RequestParam("arrive") String arrive,
		   @RequestParam("startDate") String startDate,@RequestParam("arriveDate") String arriveDate,@RequestParam("time")String time,
		   @RequestParam("num")int num,@RequestParam("price") double price){
	   Ticket t=new Ticket(trainNo,start,arrive,startDate,arriveDate,time,num,price);
	   int i=ticketService.updateTicket(t);
	   return "redirect:/showAllTicket";
   }
   @RequestMapping("/addTicket")
   public String addTicket(@RequestParam("trainNo") String trainNo,@RequestParam("start") String start,@RequestParam("arrive") String arrive,
		   @RequestParam("startDate") String startDate,@RequestParam("arriveDate") String arriveDate,@RequestParam("time")String time,
		   @RequestParam("num")int num,@RequestParam("price") double price){
	   Ticket t=new Ticket(trainNo,start,arrive,startDate,arriveDate,time,num,price);
	   int i=ticketService.addTicket(t);
	   return "redirect:/showAllTicket";
   }
}
