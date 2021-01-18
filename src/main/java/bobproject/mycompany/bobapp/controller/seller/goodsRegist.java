package bobproject.mycompany.bobapp.controller.seller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.controller.HomeController;

@Controller
@RequestMapping("/seller")
public class goodsRegist {
	private static final Logger logger = LoggerFactory.getLogger(goodsRegist.class);
	
	@RequestMapping("/goodsRegist")
	public String content() {
		logger.info("상품등록");
		return "seller/goodsRegist";
	}
	
	
}
