package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;
import com.example.demo.service.AdminService;


	@Controller
	@RequestMapping("/admin")
	public class AdminController {

		@Autowired
		@Qualifier("Admin_Service")
		private AdminService service;
		
		public AdminController() {
			System.out.println("In Admin Controller");
		}
		
		@GetMapping("/adminHome")
		public String showUserPage(HttpSession hs,RedirectAttributes flashMap) { 
			System.out.println("In Show Home Page");
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
		return "/admin/adminHome";	
	    }
		
		@GetMapping("/vehicleDetails")
		public String vehicleDetails(Model map,HttpSession hs,RedirectAttributes flashMap) {
			System.out.println("in show vehicle list");
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			map.addAttribute("vehicle_list",service.listVehicle());
			return "/admin/vehicleDetails";//forward view --server pull
		}
		
		@GetMapping("/updateVehicle")
		public String showUpdateForm(@RequestParam int vid,Model map,HttpSession hs,RedirectAttributes flashMap)
		{
			System.out.println("in update form");
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in show update form "+vid);
			System.out.println("map "+map);
			map.addAttribute(service.getvehicleDetails(vid));
			System.out.println("map again "+map); //DETACHED
			return "/admin/updateVehicle";
		}
		
		@PostMapping("/updateVehicle")
		public String processUpdateForm(Vehicle v,Model map)
		{
			System.out.println("in process update "+v);//DETACHED POJO with updated state
			map.addAttribute("mesg",service.updateVehicle(v));
			return "redirect:/admin/vehicleDetails";
		}
		
		@GetMapping("/addVehicle")
		public String showVehicleAddForm(Model map,HttpSession hs,RedirectAttributes flashMap,Vehicle v)
		{
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			
			System.out.println("in vehicle add form ");
			System.out.println("model map "+map);
			return "/admin/addVehicle";
		}
		
		@PostMapping("/addVehicle")
		public String processVendorAddForm(Vehicle v,RedirectAttributes flashMap)
		{
			System.out.println("in process add vendor "+v);
			//invoke sevice layer method
			flashMap.addFlashAttribute("mesg", service.registerVehicle(v));
			return "redirect:/admin/vehicleDetails";
		}
		
		@GetMapping("/userDetails")
		public String userDetails(Model map,HttpSession hs,RedirectAttributes flashMap) {
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in show user list");
			//String vType;
			map.addAttribute("users_list",service.listUser());
			return "/admin/userDetails";//forward view --server pull
		}
		
		@GetMapping("/updateUser")
		public String showUserUpdateForm(@RequestParam int uid,Model map,HttpSession hs,RedirectAttributes flashMap)
		{
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in update form");
			System.out.println("in show update form "+uid);
			System.out.println("map "+map);
			map.addAttribute(service.getUserDetails(uid));
			System.out.println("map again "+map); //DETACHED
			return "/admin/updateUser";
		}
		
		@PostMapping("/updateUser")
		public String processUserUpdateForm(Users u,Model map,HttpSession hs)
		{
			
			System.out.println("in process update "+u);//DETACHED POJO with updated state
			map.addAttribute("mesg",service.updateUser(u));
			if(u.getU_mode().equals("admin"))
			{
			hs.setAttribute("user_dtls", u);
			}
			return "redirect:/admin/userDetails";
		}
		
		@GetMapping("/deleteVehicle")
		public String deleteVendor(@RequestParam int vid,RedirectAttributes flashMap,HttpSession hs)
		{
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in vehicle delete "+vid);
			flashMap.addFlashAttribute("mesg",service.deleteVehicle(vid));
			return "redirect:/admin/vehicleDetails";
		
		}
		
		@GetMapping("/deleteUser")
		public String deleteVendor1(@RequestParam int uid,RedirectAttributes flashMap,HttpSession hs)
		{
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in user delete "+uid);
			flashMap.addFlashAttribute("mesg",service.deleteUser(uid));
			return "redirect:/admin/userDetails";
		
		}
		
		@GetMapping("/feedbackDetails")
		public String feedbackDetails(Model map,RedirectAttributes flashMap,HttpSession hs) {
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in show feedback list");
			//String vType;
			map.addAttribute("feedback_list",service.listFeedback());
			return "/admin/feedbackDetails";//forward view --server pull
		}
		
		@GetMapping("/orderDetails")
		public String orderDetails(Model map,RedirectAttributes flashMap,HttpSession hs) {
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in show feedback list");
			//String vType;
			map.addAttribute("order_list",service.listOrder());
			return "/admin/orderDetails";//forward view --server pull
		}
		
		@GetMapping("/deleteOrder")
		public String deleteVendor2(@RequestParam int o_id,RedirectAttributes flashMap,HttpSession hs)
		{
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in order delete "+o_id);
			flashMap.addFlashAttribute("mesg",service.deleteOrder(o_id));
			return "redirect:/admin/orderDetails";
		
		}
		
		
		@GetMapping("/updateOrder")
		public String showUpdateForm1(@RequestParam int oid,Model map,RedirectAttributes flashMap,HttpSession hs)
		{
			if(hs.getAttribute("user_dtls")==null)
			{
				flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
				return "redirect:/main/login";
			}
			System.out.println("in update form");
			System.out.println("in show update form "+oid);
			System.out.println("map "+map);
			map.addAttribute(service.getorderDetails(oid));
			System.out.println("map again "+map); //DETACHED
			return "/admin/updateOrder";
		}
		
		@PostMapping("/updateOrder")
		public String processUpdateForm(Orders o,Model map)
		{
			System.out.println("in process update "+o);//DETACHED POJO with updated state
			map.addAttribute("mesg",service.updateOrder(o));
			return "redirect:/admin/orderDetails";
		}
}
