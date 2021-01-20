
package bobproject.mycompany.bobapp.controller.detailpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detailpage")
public class ct_굴떡국 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_굴떡국.class);
	  
	@RequestMapping("/menu2")
	public String DP() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/menu2";
	}
		
	@GetMapping("/to_previouspage2")
	public String to_previouspage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/menu1";
	}
	@GetMapping("/to_category2")
	public String to_category(){
		logger.info("메뉴로 이동합니다.");
		return "menu/menu";
	}
	@GetMapping("/to_nextpage2")
	public String to_nextpage(){
		logger.info("다음 페이지로 이동합니다.");
		return "detailpage/menu3";

	
}
}

//package bobproject.mycompany.bobapp.controller.detailpage;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//@RequestMapping("/detailpage")
//public class ct_굴떡국 {
//	private final static Logger logger = 
//			LoggerFactory.getLogger(ct_굴떡국.class);
//	
//	@RequestMapping("/굴떡국")
//	public String DP() {
//		logger.info("디테일 페이지가 실행되었습니다.");
//		return "detailpage/굴떡국";
//	}
//	@GetMapping("/to_previouspage")
//	public String to_previouspage(){
//		logger.info("이전 페이지로 이동합니다.");
//		return "detailpage/랍스터";
//	}
//	@GetMapping("/to_category")
//	public String to_category(){
//		logger.info("이전 페이지로 이동합니다.");
//		return "menu/menu";
//	}
//	@GetMapping("/to_nextpage")
//	public String to_nextpage(){
//		logger.info("이전 페이지로 이동합니다.");
//		return "detailpage/만두전골";
//	}
//	
//}

