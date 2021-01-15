package bobproject.mycompany.bobapp.controller.customer_service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/customer_service")
public class ct_customer_service {

	private static final Logger logger = LoggerFactory.getLogger(ct_customer_service.class);
	
	@RequestMapping("/customer_service")
	public String customer_service() {
		logger.info("고객센터 접쏙");
		return "customer_service/customer_service_faq";
	}
	

	
}
