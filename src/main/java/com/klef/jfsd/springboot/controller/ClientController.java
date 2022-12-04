package com.klef.jfsd.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.klef.jfsd.springboot.model.*;

import com.klef.jfsd.springboot.service.*;

@Controller
public class ClientController
{

	@Autowired
	private AdminService adminService;
	@Autowired
	private UserService userService;
	@Autowired
	private StockService stockService;
	@Autowired
	private FeedbackService feedbackService;
   
    
	@GetMapping("/")
    public String mainhomedemo()
    {
    	return "index";
    }
	
	
	
	 
    @GetMapping("/adminlogin")
    public ModelAndView adminlogindemo()
    {
    	ModelAndView mv=new ModelAndView("adminlogin");
    	
    	return mv;
    }
    @GetMapping("/adminhome")
    public ModelAndView adminhomedemo()
    {
    	ModelAndView mv=new ModelAndView("adminhome");
    	
    	return mv;
    }
    @GetMapping("/userlogin")
    public ModelAndView userlogindemo() {
    	ModelAndView mv = new ModelAndView("userlogin");
    	
    	return mv;
    }
    @GetMapping("/userregistration")
    public ModelAndView userregistrationdemo() {
    	ModelAndView mv = new ModelAndView("userregistration","user",new User());
    	
    	return mv;
    }
 
    @GetMapping("/stocks")
    public ModelAndView stockdemo()
    {
    	ModelAndView mv=new ModelAndView("stocks","stock",new Stock());
    	
    	return mv;
    }
    @GetMapping("/feedback")
    public ModelAndView feedbackdemo()
    {
      ModelAndView mv=new ModelAndView("feedback","feedback",new Feedback());
      
      return mv;
    }
//    @PostMapping("/addstock")
//  	public ModelAndView saveStock(HttpServletRequest request)
//  	{	
//  	   ModelAndView mv = new ModelAndView("nstock");  
//  	   String name = request.getParameter("name");
//  		String catg = request.getParameter("catg");
//  		double price = Double.parseDouble(request.getParameter("price"));
//  	    int qty = Integer.parseInt(request.getParameter("qty"));
//  		Stock emp = new Stock();
//  		emp.setName(name);
//  		emp.setCatg(catg);
//  		emp.setPrice(price);
//  		emp.setId(qty);
//  		stockService.saveStock(emp);
//  		mv.addObject("message", "Stock Record Added Successfully");
//     	return mv;
//  	}
    
   @PostMapping("/adduser")
	public ModelAndView addemployeedemo(HttpServletRequest request)
	{	
	   ModelAndView mv = new ModelAndView("adduser");  // view - addemployee.jsp
	   String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String role = request.getParameter("role");
	String location = request.getParameter("location");
		String emailid = request.getParameter("emailid");
		String uname = request.getParameter("username");
		String pwd = request.getParameter("password");
		String contactno = request.getParameter("contactno");
		User emp = new User();
		emp.setName(name);
		emp.setGender(gender);
		emp.setRole(role);
		emp.setLocation(location);
		emp.setEmailid(emailid);
		emp.setUsername(uname);
		emp.setPassword(pwd);
		emp.setContactno(contactno);
		userService.addUser(emp);
		mv.addObject("message", "Employee Record Added Successfully");
   	return mv;
	}
   @PostMapping("/addstock")
	public ModelAndView addstockdemo(HttpServletRequest request)
	{	
	   ModelAndView mv = new ModelAndView("addstock");  // view - addemployee.jsp
	   String name = request.getParameter("name");
		String catg = request.getParameter("catg");
		double price =Double.parseDouble( request.getParameter("price"));
	int qty= Integer.parseInt(request.getParameter("qty"));
		
		Stock stk = new Stock();
		stk.setName(name);
		stk.setCatg(catg);
		stk.setPrice(price);
		stk.setQty(qty);
		stockService.addStock(stk);
		mv.addObject("message", "Stock Record Added Successfully");
  	return mv;
	}
   	
   @PostMapping("/addfeedback")
   public ModelAndView addfeedbackdemo(HttpServletRequest request)
   {  
      ModelAndView mv = new ModelAndView("addfeedback");  // view - addemployee.jsp
      String name = request.getParameter("name");
     String email = request.getParameter("email");
     String q1 = request.getParameter("q1");
     String q2 = request.getParameter("q2");
     String q3 = request.getParameter("q3");
     String comment= request.getParameter("comment");
     
     
     Feedback fbd = new Feedback();
     fbd.setName(name);
     fbd.setEmail(email);
     fbd.setQ1(q1);
     fbd.setQ2(q2);
     fbd.setQ3(q3);
     fbd.setComment(comment);
     feedbackService.addFeeback(fbd);
     mv.addObject("message", "Feedback Added Successfully");
     return mv;
   }

	
    @GetMapping("/viewallusers")
    public ModelAndView viewallusersdemo() {
    	ModelAndView mv = new ModelAndView("viewallusers");
    	List<User> userlist=adminService.getallUser();
    	mv.addObject("userlist",userlist);
    	return mv;
    }
    
    @PostMapping("/checkadminlogin")
    public ModelAndView checkadminlogindemo(HttpServletRequest request) {
    	ModelAndView mv=new ModelAndView();
    	String auname=request.getParameter("auname");
    	String apwd=request.getParameter("apwd");
    	Admin admin =adminService.checkadminlogin(auname, apwd);
    	if(admin !=null) {
    		HttpSession session=request.getSession();
    		session.setAttribute("auname",auname);
    		mv.setViewName("adminhome");
    	}
    	else {
    		mv.setViewName("adminlogin");
    		mv.addObject("msg","Login Failed");
    	}
    		
    	return mv;
    }
    @PostMapping("/checkUserlogin")
    public ModelAndView checkuserlogindemo(HttpServletRequest request) {
    	ModelAndView mv=new ModelAndView();
    	String euname=request.getParameter("euname");
    	String epwd=request.getParameter("epwd");
    	User user = userService.checkUserlogin(euname,epwd);
    	
  	      if(user !=null) {
    		HttpSession session=request.getSession();
    		session.setAttribute("euname",euname);
    		mv.setViewName("userhome");
    	}
   	else {
    		mv.setViewName("userlogin");
    		mv.addObject("msg","Login Failed");
    	}
    		
    	return mv;
    }
    @GetMapping("/userhome")
    public ModelAndView userhome(HttpServletRequest request)
    {
    	ModelAndView mv=new ModelAndView();
    	HttpSession session=request.getSession();
    	String euname= (String) session.getAttribute("euname");
    	session.setAttribute("euname",euname);
    	mv.setViewName("userhome");
    	return mv;
    }
    @GetMapping("/viewallstock")
    public ModelAndView viewallstockdemo() {
      ModelAndView mv = new ModelAndView("viewallstock");
      List<Stock> stocklist=stockService.getallStock();
      mv.addObject("stocklist",stocklist);
      return mv;
    }
    @GetMapping("/deletestock")
    public String deletestudemo(@RequestParam("id")int sid) {
      stockService.deletestock(sid);
      return "redirect:viewallstock";
    }
    
    @GetMapping("/viewuser")
    public String userView()
    {
    	return "viewuser";
    }
  
  
}
