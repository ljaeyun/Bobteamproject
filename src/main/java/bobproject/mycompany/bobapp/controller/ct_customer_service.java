package bobproject.mycompany.bobapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.CSDirectqService;
import bobproject.mycompany.bobapp.Service.CSNoticeService;
import bobproject.mycompany.bobapp.dto.CSDirectq;
import bobproject.mycompany.bobapp.dto.CustomerServiceNotice;


@Controller
@RequestMapping("/customer_service")
public class ct_customer_service {

	private static final Logger logger = LoggerFactory.getLogger(ct_customer_service.class);
	
	@RequestMapping("/customer_service_faq")
	public String faq() {
		logger.info("faq 접속");
		return "customer_service/customer_service_faq";
	}
	
	@Resource
	private CSNoticeService csnoticeService;
	
	@GetMapping("/cs_notice")
	public String cs_notice(Model model) {
		List<CustomerServiceNotice> list = csnoticeService.getNoticeList();
		model.addAttribute("list", list);
		return "customer_service/cs_notice";
	}
	
	@GetMapping("/noticeread")
	public String notice(int nno, Model model) {
		CustomerServiceNotice noticeread = csnoticeService.getNotice(nno);
		model.addAttribute("noticeread", noticeread);
		return "customer_service/notice_read";
	}

	
	@Resource
	private CSDirectqService csdirectqService;
	
	@GetMapping("/directqread")
	public String directqread(int qno, Model model) {
		CSDirectq directq = csdirectqService.getDirectq(qno);
		model.addAttribute("directq", directq);
		return "customer_service/dq_read";
	}
	
	@GetMapping("/directqwrite")
	public String directqwriteForm() {
		return "customer_service/dq_write";
	}
	
	@PostMapping("/directqwrite")
	public String directqwrite(CSDirectq csdirectq) throws Exception {
		csdirectqService.saveDirectq(csdirectq);
		return "redirect:/customer_service/customer_service_faq";
	}
	
	@GetMapping("/directqlist")
	public String dq_list(Model model) {
		List<CSDirectq> list = csdirectqService.getDirectqList();
		model.addAttribute("list", list);
		return "customer_service/dq_list";
	}
	
	@GetMapping("/indiQuest")
	public String indiq() {
		return "customer_service/indiQuest";
	}
	
	
	
}
