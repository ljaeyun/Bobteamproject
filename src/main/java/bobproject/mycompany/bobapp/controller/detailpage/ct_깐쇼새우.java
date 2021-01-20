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
@RequestMapping("/detailpage ")
public class ct_깐쇼새우 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_깐쇼새우.class);
	@RequestMapping("/menu5")
	public String DP() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/menu5";
	}

	@GetMapping("/to_previouspage5")
	public String to_previouspage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/랍스터";
	}
	@GetMapping("/to_category5")
	public String to_category(){
		logger.info("메뉴로 이동합니다.");
		return "menu/menu";
	}
	@GetMapping("/to_nextpage5")
	public String to_nextpage(){
		logger.info("다음 페이지로 이동합니다.");
		return "detailpage/폭찹스테이크";

	
}
}
