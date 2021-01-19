package bobproject.mycompany.bobapp.controller.review;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ct_review {

	private static final Logger logger = LoggerFactory.getLogger(ct_review.class);
	
	@RequestMapping("/review")
	public String review() {
		logger.info("리뷰 페이지");
		return "review/review";
	}
	
	@GetMapping("/backhome")
	public String detail3() {
		logger.info("홈페이지로 돌아갑니다");
		return "home";
	}

	
}
