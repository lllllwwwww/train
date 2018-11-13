package cn.train.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.train.service.AdminService;

@Controller
public class AdminController {
	@Autowired
    private AdminService adminService;
	@RequestMapping("adminchecked")
	public void adminchecked(@RequestParam("adminName") String adminName,@RequestParam("adminPwd") String adminPwd,HttpServletResponse response,HttpServletRequest request) throws IOException{
		int i=adminService.selectAdmin(adminName, adminPwd);
		PrintWriter out=response.getWriter();
		if(i==1){
			out.print("true");
			request.getSession().setAttribute("adminName", adminName);
		}else{
			out.print("false");
		}
		out.flush();
		out.close();
	}
	@RequestMapping("Adminloginout")
	public String Adminloginout(HttpSession session){
		session.removeAttribute("adminName");
		return "train-adminlogin";
	}
}
