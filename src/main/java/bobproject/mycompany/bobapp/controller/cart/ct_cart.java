package bobproject.mycompany.bobapp.controller.cart;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart")
public class ct_cart {
	private static final Logger logger = LoggerFactory.getLogger(ct_cart.class);
	
	@RequestMapping("/cart")
	public String cart() {
		logger.info("cart 실행");
		return "cart/cart";
	}
	
	@RequestMapping("/cart_none")
	public String cart_none() {
		logger.info("cart_none 실행");
		return "cart/cart_none";
	}
	
}
