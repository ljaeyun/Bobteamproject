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
		logger.info("����");
		return "account/login";
	}
	
	@PostMapping("/join")
	public String postMethod() {
		logger.info("�α��ε�");
		return "account/login";
		
	}
}
