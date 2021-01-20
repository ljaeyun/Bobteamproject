package bobproject.mycompany.bobapp.controller.detailpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detailpage")
public class ct_랍스터{
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_랍스터.class);

	@RequestMapping("/menu1")
	public String DP() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/menu1";
	}
	@GetMapping("/to_previouspage1")
	public String to_previouspage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/랍스터";
	}
	@GetMapping("/to_category1")
	public String to_category(){
		logger.info("메뉴로 이동합니다.");
		return "menu/menu";
	}
	@GetMapping("/to_nextpage1")
	public String to_nextpage(){
		logger.info("다음 페이지로 이동합니다.");
		return "detailpage/폭찹스테이크";

	
}
}
