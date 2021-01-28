package bobproject.mycompany.bobapp.controller.account;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.MemberService;
import bobproject.mycompany.bobapp.dto.createid.Account;

@Controller
/* @RequestMapping("/account") */
public class CreateId {
	private static final Logger logger = LoggerFactory.getLogger(CreateId.class);
	
	@RequestMapping("/createId")
	public String content() {
		logger.info("회원가입페이지");
		return "account/createId";
	}
	
	@Resource
	private MemberService memberService;
	
	@PostMapping("/join")
	public String create(Account id) {
		
		memberService.join(id);
		
		return "redirect:/";
	}
	
}
