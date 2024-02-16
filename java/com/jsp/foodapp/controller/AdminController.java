package com.jsp.foodapp.controller;



import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.AdmineDao;
import com.jsp.foodapp.entitys.Admin;

@Controller
public class AdminController {
	@Autowired
	AdmineDao dao;

	@RequestMapping("/addadmin")
	public ModelAndView addAdmin() {
		ModelAndView mav = new ModelAndView("createadmin");
		Admin admin = new Admin();
		mav.addObject("object", admin);
		return mav;
	}

	@RequestMapping("/saveadmin")
	public ModelAndView saveAdmin(@ModelAttribute("object") Admin a) {
		ModelAndView mav = new ModelAndView("LoginAdmin");
		dao.saveAdmine(a);
		return mav;
	}

	@RequestMapping("/validateadmin")
	public ModelAndView loginValidation(ServletRequest req) {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		Admin admin = dao.login(email, password);
		if(admin==null) {
			ModelAndView mav = new ModelAndView("LoginAdmin") ;
			mav.addObject("message", "invalid credentials") ;
			return mav ;
		}
		else {
			ModelAndView mav = new ModelAndView("Adminoptions") ;
			mav.addObject("message", "login successful") ;
			return mav ;
		}
	}
}
