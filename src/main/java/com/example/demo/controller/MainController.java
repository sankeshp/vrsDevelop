package com.example.demo.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;
import com.example.demo.service.MainService;

@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	@Qualifier("Main_Service")
	private MainService service;

	public MainController() {
		System.out.println("In Main Controller");
	}
	
	@GetMapping("/index")
	public String showIndexPage() { 
		System.out.println("In Show Index Page");
	return "/main/index";	
    }
	
	@GetMapping("/home")
	public String showHomePage() { 
		System.out.println("In Show Home Page");
	return "/main/home";	
    }
	
	@PostMapping("/home")
	public String processHomePage(@RequestParam String vehicle,RedirectAttributes flashMap)
	{
		System.out.println("In process Home Page");
		flashMap.addAttribute("vehicle", vehicle);
		System.out.println("vehicle="+vehicle);
		return "redirect:/main/vehicleCategory";
	}
	
	@GetMapping("/vehicleCategory")
	public String showVehicleCategoryPage(RedirectAttributes flashMap,@RequestParam String vehicle)
	{
		System.out.println("In show vehicleCategory Page");
		flashMap.addAttribute("vehicle", vehicle);
		System.out.println("vehicle="+vehicle);
		return "/main/vehicleCategory";
	}
	
	@PostMapping("/vehicleCategory")
	public String processVehicleCategoryPage(RedirectAttributes flashMap,@RequestParam String vehicle,@RequestParam String vehicleCategory)
	{
		System.out.println("In process vehicleCategory Page");
		flashMap.addAttribute("vehicle", vehicle);
		flashMap.addAttribute("vehicleCategory", vehicleCategory );
		System.out.println("vehicle="+vehicle);
		System.out.println("vehicleCategory="+vehicleCategory);
		return "redirect:/main/vehicleList";
	}
	
	
	@GetMapping("/vehicleList")
	public String showVehicleListPage(RedirectAttributes flashMap,@RequestParam String vehicle,@RequestParam String vehicleCategory,Model map)
	{
		System.out.println("In show vehicleList Page");
		flashMap.addAttribute("vehicle", vehicle);
		flashMap.addAttribute("vehicleCategory", vehicleCategory );
		System.out.println("vehicle="+vehicle);
		System.out.println("vehicleCategory="+vehicleCategory);
		map.addAttribute("vehicle_list", service.getVehicleList(vehicle,vehicleCategory));
		System.out.println("vehicleList="+map);
		return "/main/vehicleList";
	}
	
	@GetMapping("/availability")
	public String showAvailabilityPage(@RequestParam int v_id,RedirectAttributes flashMap)
	{
		System.out.println("In showAvailabilityPage");
		flashMap.addAttribute("v_id", v_id);
		System.out.println("id="+v_id);
		return "/main/availability";
	}

	
	@PostMapping("/availability")
	public String processAvailabilityPage(Model map,RedirectAttributes flashMap , @RequestParam int v_id,@RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") Date start_date,@RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") Date end_date,HttpSession hs)
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String startDate = sdf.format(start_date);
		String endDate = sdf.format(end_date);
		System.out.println("In processAvailabilityPage");
		if(start_date.after(end_date))
		{
			map.addAttribute("mesg", "End Date is Before Start Date... Please Provide Correct Input!!!");
			return "/main/availability";
		}
		String status=service.checkAvailability(v_id,start_date,end_date);
		flashMap.addAttribute("status", status);
		flashMap.addAttribute("v_id", v_id);
		if(status.equals("Not Available"))
		{
			map.addAttribute("mesg", "Date is not available...Please chose another date");
			return "/main/availability";
		}
		hs.setAttribute("start_date", startDate);
		hs.setAttribute("end_date", endDate);
	    System.out.println("id="+v_id+"start_date="+startDate+" end_date="+endDate);
		return "redirect:/main/vehicleDetails";
	}

	@GetMapping("/vehicleDetails")
	public String showVehicleDetailsPage(@RequestParam int v_id,Model map,HttpSession hs)
	{
		System.out.println("v_id"+v_id);
		Vehicle v=service.getVehicleDetails(v_id);
		//map.addAttribute("vehicle_dtls", v);
		hs.setAttribute("vehicle_dtls", v);
		System.out.println("In showVehicleDetailsPage"+v);
		return "/main/vehicleDetails";
	}
	
	
	
	@GetMapping("/login")
	public String showLoginPage() { 
		System.out.println("In Show Login Page");
	return "/main/login";	
    }
	
	@PostMapping("/login")
	public String processLoginPage(@RequestParam String u_email, @RequestParam String u_password, Model map, HttpSession hs,
			RedirectAttributes flashMap) {
		System.out.println("in process login form");
		Users details = null;
		System.out.println("email "+u_email+" pwd "+u_password);
		try {
			details = service.validateUser(u_email, u_password);
		} catch (NoResultException e) {
			System.out.println("err in controller " + e);
			map.addAttribute("mesg", "Invalid Login Pls retry ....");
		}
		if (details != null) {
			flashMap.addFlashAttribute("mesg", "Login Successful!!!");
			hs.setAttribute("user_dtls", details);
			/*if (details.getU_mode().equals("user")) {
				return "redirect:/user/userHome";
			} else if (details.getU_mode().equals("admin")) {
				return "redirect:/admin/adminHome";
			}*/
			return "redirect:/main/home";
		}
		return "/main/login";

	}
	
	@GetMapping("/registration")
	public String showRegistrationPage(Users u,Model map) { 
		System.out.println("In Show Registration Page");
		System.out.println("in vendor add form "+u);
		map.addAttribute(u);
		System.out.println("model map "+map);
	return "/main/registration";	
    }
	
	@PostMapping("/registration")
	public String processRegistrationPage(Users u,RedirectAttributes flashMap)
	{
		System.out.println("in process add user "+u);
		flashMap.addFlashAttribute("mesg", service.registerUsers(u));
		return "redirect:/main/login";
	}
	
}
