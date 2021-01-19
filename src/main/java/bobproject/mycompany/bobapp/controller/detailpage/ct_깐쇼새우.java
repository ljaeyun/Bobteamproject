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
@RequestMapping("/깐쇼새우 ")
public class ct_깐쇼새우 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_깐쇼새우.class);

	@GetMapping("/to_previouspage")
	public String to_previouspage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/랍스터";
	}
	@GetMapping("/to_category")
	public String to_category(){
		logger.info("이전 페이지로 이동합니다.");
		return "menu/menu";
	}
	@GetMapping("/to_nextpage")
	public String to_nextpage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/폭찹스테이크";

	
}
}
