package bobproject.mycompany.bobapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.dto.cs_faq;


@Controller
@RequestMapping("/customer_service")
public class ct_customer_service {

	private static final Logger logger = LoggerFactory.getLogger(ct_customer_service.class);
	
	@RequestMapping("/customer_service_faq")
	public String faq() {
		logger.info("faq 접속");
		return "customer_service/customer_service_faq";
	}
	
	@RequestMapping("/customer_service_notice")
	public String notice() {
		logger.info("공지사항 접속");
		return "customer_service/customer_service_notice";
	}
	
	@RequestMapping("/cs_notice_01")
	public String notice_01() {
		logger.info("공지사항 세부1");
		return "customer_service/cs_notice_01";
	}
	
	@RequestMapping("/cs_notice_02")
	public String notice_02() {
		logger.info("공지사항 세부2");
		return "customer_service/cs_notice_02";
	}
	
	
	@RequestMapping("/cs_notice_03")
	public String notice_03() {
		logger.info("공지사항 세부3");
		return "customer_service/cs_notice_03";
	}

	@GetMapping("/indiQuest")
	public String indiq_popup() {
		logger.info("1대1 문의를 요청함");
		return "customer_service/indiQuest";
	}
	
	@RequestMapping("/indiq")
	public String indiq(cs_faq cf) {
		String indiq_cat = cf.getIndiq_cat();
		String indiq_content = cf.getIndiq_content();
		logger.info("1:1 문의유형 : " + indiq_cat);
		logger.info("1:1 문의내용 : " + indiq_content);
		return "redirect:/customer_service/customer_service_faq";
	}
	
	@RequestMapping("/faq_search")
	public String faq(cs_faq faq) {
		String faq_search = faq.getFaq_search();
		logger.info("검색내용 : " + faq_search);
		return "redirect:/customer_service/customer_service_faq";
	}
	
	
}
