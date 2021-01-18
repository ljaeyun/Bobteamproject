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
public class ct_깐쇼새우 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_깐쇼새우.class);
	
	@RequestMapping("/깐쇼새우")
	public String 깐쇼새우() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/깐쇼새우";
	}

}
	