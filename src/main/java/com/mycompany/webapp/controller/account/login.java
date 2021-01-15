package com.mycompany.webapp.controller.account;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/account")
public class login {
	private static final Logger logger = LoggerFactory.getLogger(login.class);
	
	@RequestMapping("/login")
	public String content() {
		logger.info("로그인페이지");
		return "account/login";
	}
	
	@PostMapping("/login2")
	public String login2(String uid, String upassword, HttpSession session, HttpServletRequest request) {
		String referer = (String)request.getHeader("REFERER");
		logger.info("로그인");
		logger.info("아이디 : " + uid);
		logger.info("패스워드 : " + upassword);
		if(uid.equals("admin") &&upassword.equals("12345")) {
			session.setAttribute("loginStatus", "ok");
			
			return "redirect:../";
		}
		return "redirect:/account/login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginStatus");
		return "redirect:../";
	}
}
