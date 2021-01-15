package com.mycompany.webapp.controller.account;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class myinfo {
	private static final Logger logger = LoggerFactory.getLogger(myinfo.class);
	
	@RequestMapping("/myinfo")
	public String content() {
		logger.info("나의정보페이지");
		return "account/myinfo";
	}
	
	
}
