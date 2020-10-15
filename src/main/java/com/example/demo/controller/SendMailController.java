package com.example.demo.controller;



  
  import javax.servlet.http.HttpSession;
  
	/*
	 * import org.springframework.beans.factory.annotation.Autowired; import
	 * org.springframework.mail.SimpleMailMessage; import
	 * org.springframework.mail.javamail.JavaMailSender; import
	 * org.springframework.stereotype.Controller; import
	 * org.springframework.ui.Model; import
	 * org.springframework.validation.BindingResult; import
	 * org.springframework.web.bind.annotation.GetMapping; import
	 * org.springframework.web.bind.annotation.ModelAttribute; import
	 * org.springframework.web.bind.annotation.PostMapping; import
	 * org.springframework.web.bind.annotation.RequestMapping; import
	 * com.app.pojos.*;
	 * 
	 * @Controller
	 * 
	 * @RequestMapping("/email") public class SendMailController {
	 * 
	 * @Autowired private JavaMailSender sender;
	 * 
	 * @GetMapping("/send_mail") public String showForm(Model m) {
	 * m.addAttribute(new Email()); return "email/send_mail"; }
	 * 
	 * @PostMapping("/send_mail") public String processForm(@ModelAttribute Email
	 * em,BindingResult res,HttpSession hs) {
	 * System.out.println(em.getDestEmail()+"  "+em.getMessage()); SimpleMailMessage
	 * mesg=new SimpleMailMessage(); mesg.setTo(em.getDestEmail());
	 * mesg.setSubject(em.getSubject()); mesg.setText(em.getMessage());
	 * sender.send(mesg); Orders o=(Orders) hs.getAttribute("order_dtls"); Vehicle
	 * v=(Vehicle) hs.getAttribute("vehicle_dtls"); Users u=(Users)
	 * hs.getAttribute("user_dtls"); //flashMap.addFlashAttribute("mesg",
	 * service.insertOrders(o)); //flashMap.addFlashAttribute("order_dtl", o);
	 * System.out.println("in processBookingFormPage user "+u+" vehicle "
	 * +v+" order "+o);
	 * 
	 * SimpleMailMessage mesg=new SimpleMailMessage(); mesg.setTo(u.getU_email());
	 * mesg.setSubject("Booking Confirmation For "+v.getV_name());
	 * mesg.setText("Hello "+u.getU_email()+", your booking for the vehicle "+v.
	 * getV_name()+" has been confirmed from "+o.getO_start_time()+" to "+o.
	 * getO_end_time()+" with total rate:- "+o.getO_total_price()+" Thank You!!! ");
	 * sender.send(mesg); return "redirect:/email/sent-mail"; }
	 * 
	 * @GetMapping("/sent-mail") public String showMsg(Model m) {
	 * //m.addAttribute(new Email()); return "email/sent-mail"; }
	 * 
	 * }
	 */