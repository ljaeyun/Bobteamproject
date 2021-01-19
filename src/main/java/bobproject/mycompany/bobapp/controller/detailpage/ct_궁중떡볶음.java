package bobproject.mycompany.bobapp.controller.detailpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detailpage")
public class ct_궁중떡볶음 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_궁중떡볶음.class);
	
	@RequestMapping("/궁중떡볶음")
	public String DP() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/궁중떡볶음";
	}
	
}
