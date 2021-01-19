package bobproject.mycompany.bobapp.Service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bobproject.mycompany.bobapp.dto.cart.CartList;

@Controller
public class ct_addCart {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_addCart.class);
	
	List<CartList> list = new ArrayList<>();
	
	@GetMapping("/addCart")
	public String addCart(HttpSession session) {
		
		
		CartList cartList = new CartList();
		cartList.setPd_name("궁중떡볶음");
		cartList.setPd_price("19900");
		cartList.setPd_qn("1");
		list.add(cartList);
		
		session.setAttribute("cartList", list);
		
		logger.info("카트에 담았습니다.");
		return "redirect:/cart/cart";
	}
	
	
}
