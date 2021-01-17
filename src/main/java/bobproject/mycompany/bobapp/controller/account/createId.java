package bobproject.mycompany.bobapp.controller.account;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.dto.createid.createIntel;

@Controller
@RequestMapping("/account")
public class createId {
	private static final Logger logger = LoggerFactory.getLogger(createId.class);
	
	@RequestMapping("/createId")
	public String content() {
		logger.info("회원가입페이지");
		return "account/createId";
	}
	
	
	@RequestMapping("/create")
	public String create(createIntel ci) {
		logger.info("아이디 : "+ci.getUid());
		logger.info("비밀번호 : "+ci.getUpassword());
		logger.info("비밀번호2 : "+ci.getUpassword2());
		logger.info("이름 : "+ci.getUname());
		logger.info("이메일 : "+ci.getUemail());
		logger.info("전화번호 : "+ci.getUphone());
		logger.info("주소 : "+ci.getUhome());
		logger.info("생일 : "+ci.getUbirth());
		
		return "redirect:../";
	}
	
}
