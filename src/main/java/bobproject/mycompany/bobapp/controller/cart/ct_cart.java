package bobproject.mycompany.bobapp.controller.cart;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@GetMapping("/order")
	public String order() {
		logger.info("order 실행");
		return "order/order";
	}
	
	@GetMapping("/delete")
	public String delete(HttpSession session) {
		
		session.removeAttribute("cartList");
		
		logger.info("cart를 삭제했습니다.");
		return "redirect:/cart";
	}
	
	@GetMapping("/menu")
	public String menu() {
		logger.info("menu로 돌아갑니다.");
		return "redirect:/menu/menu";
	}
	
}
