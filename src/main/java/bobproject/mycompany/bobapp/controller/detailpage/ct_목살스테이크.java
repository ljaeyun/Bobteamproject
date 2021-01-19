package bobproject.mycompany.bobapp.controller.detailpage;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/목살스테이크")
public class ct_목살스테이크{
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_목살스테이크.class);

	
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
