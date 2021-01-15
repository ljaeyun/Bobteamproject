package com.mycompany.webapp.controller.account;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class login {
	private static final Logger logger = LoggerFactory.getLogger(login.class);
	
	@RequestMapping("/login")
	public String content() {
		logger.info("로그인페이지");
		return "account/login";
	}
	
	@PostMapping("/join")
	public String join() {
		logger.info("로그인");
		return "account/login";
		
	}
}
