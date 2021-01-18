package bobproject.mycompany.bobapp.controller.detailpage;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.dto.cart.CartList;

@Controller
@RequestMapping("/detailpage")
public class ct_궁중떡볶음 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_궁중떡볶음.class);
	
	@RequestMapping("/궁중떡볶음")
	public String 궁중떡볶음() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/궁중떡볶음";
	}
	
	
	@GetMapping("/tologin")
	public String tologin() {
		return "redirect:/account/login";
	}
	
	

}
