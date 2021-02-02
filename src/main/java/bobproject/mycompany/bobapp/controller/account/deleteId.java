package bobproject.mycompany.bobapp.controller.account;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.MemberService;
@Controller
/* @RequestMapping("/account") */
public class deleteId {
	private static final Logger logger = LoggerFactory.getLogger(deleteId.class);
	
	@RequestMapping("/deleteId")
	public String content() {
		logger.info("탈퇴페이지");
		return "account/deleteId";
	}
	
	@Resource
	private MemberService memberService;
	
	@GetMapping("/deletemember")
	public String deletemember(HttpSession session)
	{
		logger.info("탈퇴 실행");
		String mid = (String)session.getAttribute("sessionMid");
		memberService.deletemember(mid);
		session.invalidate();
		return "redirect:/";
	}
	
}
