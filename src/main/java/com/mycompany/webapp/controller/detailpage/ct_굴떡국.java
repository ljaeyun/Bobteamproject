package com.mycompany.webapp.controller.detailpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detailpage")
public class ct_굴떡국 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_굴떡국.class);
	
	@RequestMapping("/굴떡국")
	public String DP() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/굴떡국";
	}
	@GetMapping("/to_previouspage")
	public String previous(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/굴떡국";
	}
	
}
