package com.example.demo.controller;


import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
/*import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	@Qualifier("User_Service")
	private UserService service;
	@Autowired
/*	private JavaMailSender sender; */
	
	public UserController() {
		System.out.println("In User Controller");
	}
	
	@GetMapping("/userHome")
	public String showUserPage(HttpSession hs,RedirectAttributes flashMap) { 
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		System.out.println("In Show Home Page");
	return "/user/userHome";	
    }
	
	@GetMapping("/bookingForm")
	public String showBookingFormPage(HttpSession hs,RedirectAttributes flashMap)
	{
		System.out.println("in showBookingFormPage");
		  //System.out.println("id="+v_id+"start_date="+start_date+" end_date="+end_date);
		System.out.println(hs.getAttribute("user_dtls"));
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		return "/user/bookingForm";
	}
	
	@PostMapping("/bookingForm")
	public String processBookingFormPage(Orders o,HttpSession hs,RedirectAttributes flashMap,BindingResult res)
	{
		System.out.println("in showBookingFormPage");
		  System.out.println(o);
		  int i=0;
		System.out.println(hs.getAttribute("user_dtls"));
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		System.out.println("in process add user "+o);
		i=service.insertOrders(o);
		o.setO_id(i);
		hs.setAttribute("order_dtls", o);
		Vehicle v=(Vehicle) hs.getAttribute("vehicle_dtls");
		Users u=(Users) hs.getAttribute("user_dtls");
		flashMap.addFlashAttribute("mesg", "Orders added with id: "+o.getO_id()+" Confirmation sent to your mail id: "+u.getU_email());
		//flashMap.addFlashAttribute("order_dtl", o);
		System.out.println("in processBookingFormPage user "+u+" vehicle "+v+" order "+o);
		
		/*
		 * SimpleMailMessage mesg=new SimpleMailMessage(); mesg.setTo(u.getU_email());
		 * mesg.setSubject("Booking Confirmation For "+v.getV_name());
		 * mesg.setText("Hello "+u.getU_email()+", your booking for the vehicle "+v.
		 * getV_name()+" has been confirmed from "+o.getO_start_time()+" to "+o.
		 * getO_end_time()+" with total rate:- "+o.getO_total_price()+" Thank You!!! ");
		 * sender.send(mesg);
		 */
		return "redirect:/user/bookingSummary";
	}
	
	@GetMapping("/bookingSummary")
	public String showBookingSummaryPage(HttpSession hs,RedirectAttributes flashMap)
	{
		System.out.println("in showBookingSummaryPage");
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		
		return "/user/bookingSummary";
	}
	
	@GetMapping("/userProfile")
	public String showUserProfilePage(HttpSession hs,RedirectAttributes flashMap,Model map)
	{
		System.out.println("in showUserProfilePage");
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		Users u=(Users) hs.getAttribute("user_dtls");
		//map.addAttribute("order_list", service.getVehicleList(u.getU_id()));
		map.addAttribute(u);
		System.out.println(u);
		System.out.println(map);
		return "/user/userProfile";
	}
	
	@PostMapping("/userProfile")
	public String processUserProfilePage(Users u,HttpSession hs,RedirectAttributes flashMap,Model map)
	{
		System.out.println("in processUserProfilePage");
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		System.out.println("in process update "+u);//DETACHED POJO with updated state
		flashMap.addFlashAttribute("mesg",service.updateUser(u));
		hs.setAttribute("user_dtls", u);
		return "redirect:/user/userHome";
	}
	
	
	@GetMapping("/userOrders")
	public String processUserOrdersPage(HttpSession hs,RedirectAttributes flashMap,Model map)
	{
		System.out.println("in processUserOrdersPage");
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		Users u=(Users) hs.getAttribute("user_dtls");
		map.addAttribute("order_list", service.getVehicleList(u.getU_id()));
		System.out.println(u);
		System.out.println(map);
		return "/user/userOrders";
	}
	
	@GetMapping("/userLogout")
	public String userLogoutPage(Model map, HttpSession hs, HttpServletResponse rs, HttpServletRequest rq) {
		System.out.println("in userLogout page");
		map.addAttribute("user_dtls", hs.getAttribute("user_dtls"));
		hs.invalidate();
		rs.setHeader("refresh", "5;url=" + rq.getContextPath());
		return "/user/userLogout";
	}
	
	@GetMapping("/userFeedback")
	public String showUserFeedbackPage(HttpSession hs,RedirectAttributes flashMap,Model map,@RequestParam int o_id)
	{
		System.out.println("in showUserShowFeedbackPage");
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		//map.addAttribute("order_list", service.getVehicleList(u.getU_id()));
				Feedback f=service.getFeedback(o_id);
				if(f==null)
				{
				Feedback f1=new Feedback();
				map.addAttribute(f1);
				}
				else
				{
					map.addAttribute(f);
				}
				System.out.println(f);
				System.out.println(map);
		return "/user/userFeedback";
	}
	
	
	@PostMapping("/userFeedback")
	public String processUserFeedbackPage(Feedback f,HttpSession hs,RedirectAttributes flashMap,Model map)
	{
		System.out.println("in processFeedbackPage");
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		
	//	map.addAttribute("order_list", service.insertFeedback(f));
		flashMap.addFlashAttribute("mesg",service.insertFeedback(f));
		return "redirect:/user/userHome";
	}
	
	
	
}

