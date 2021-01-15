package bobproject.mycompany.bobapp.controller.account;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class createId {
	private static final Logger logger = LoggerFactory.getLogger(createId.class);
	
	@RequestMapping("/createId")
	public String content() {
		logger.info("회원가입페이지");
		return "account/createId";
	}
	
	
}
