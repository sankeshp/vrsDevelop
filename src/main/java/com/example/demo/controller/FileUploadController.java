package com.example.demo.controller;


import java.io.File;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/upload")
public class FileUploadController {
	/*@Value("${upload_image_path}")
	private String imagePath;*/

	// Usage of path variable
	@GetMapping("/uploadForm")
	public String showForm(HttpSession hs,RedirectAttributes flashMap) {
		if(hs.getAttribute("user_dtls")==null)
		{
			flashMap.addFlashAttribute("mesg", "You are not login!!! Pls login to proceed furthur");
			return "redirect:/main/login";
		}
		System.out.println("in show upload form");
		return "/upload/uploadForm";
	}

	@PostMapping("/uploadForm")
	public String uploadFile(@RequestParam("contents") MultipartFile file, Model map, HttpServletRequest request,
			RedirectAttributes flashMap	,@RequestParam int vid 	) {
		String uploadLocation = "D:\\Eclipse\\Workspace\\VehicleRentalSystemTest\\src\\main\\webapp\\bootstrap\\images";
				//request.getServletContext().getRealPath("/images");

		System.out.println(
				"in upload file " + file.getOriginalFilename() + " size " + file.getSize() + " " + uploadLocation);
		try {
			File dest=new File(uploadLocation, file.getOriginalFilename());
			
			file.transferTo(dest);
			
			flashMap.addAttribute("img_name", file.getOriginalFilename());
		} catch (Exception e) {

			map.addAttribute("mesg", "File upload failed : " + e.getMessage());
			return "/upload/uploadForm";
		}
		if(vid==0)
		{
		return "redirect:/admin/addVehicle";
		}
		else
		{
			flashMap.addAttribute("vid",vid);
			return "redirect:/admin/updateVehicle";
		}
	}
}
