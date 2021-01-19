package bobproject.mycompany.bobapp.controller.detailpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ct_두루치기{
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_두루치기.class);
	 @RequestMapping("/두루치기")
	  public String content() {
		  logger.info("이벤트 페이지 출력");
		  return "detailpage/두루치기 ";
	  }
	
	
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
