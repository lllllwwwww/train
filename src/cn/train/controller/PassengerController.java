package cn.train.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.train.entity.Passenger;
import cn.train.service.PassengerService;

@Controller
public class PassengerController {
	@Autowired
	private PassengerService passengerService;
	@RequestMapping("/addPassenger")
	public String addPassenger(Passenger p){
		int i=passengerService.addPassenger(p);
		System.out.println(i);
		return "train-login";
	}
	@RequestMapping("/loginchecked")
	public void loginchecked(@RequestParam("username") String username,@RequestParam("password") String password,HttpServletResponse response,HttpServletRequest request) throws IOException{
		int i=passengerService.checkedLogin(username, password);
		PrintWriter out=response.getWriter();
		if(i==1){
			out.print("true");
			request.getSession().setAttribute("username", username);
		}else{
			out.print("false");
		}
		out.flush();
		out.close();
	}
	@RequestMapping("/showpassenger")
	public String showpassenger(@RequestParam("username")String username,Model model){
		if(username!=null){
			Passenger p=passengerService.selectByName(username);
			model.addAttribute("passenger", p);
			return "train-info";
		}else{
			return "train-login";
		}
	}
	@RequestMapping("/loginout")
	public String loginout(@RequestParam("username")String username,HttpSession session){
		session.removeAttribute("username");
		return "train-main";
	}
	@RequestMapping("/updpassenger")
	public String updpassenger(@RequestParam("userName")String userName,@RequestParam("name")String name,@RequestParam("cardNo")String cardNo,
			@RequestParam("email")String email,@RequestParam("phone")String phone){
		int i=passengerService.updpassenger(userName, name, cardNo, email, phone);
		return "redirect:/showpassenger?username=userName";
	}
}
