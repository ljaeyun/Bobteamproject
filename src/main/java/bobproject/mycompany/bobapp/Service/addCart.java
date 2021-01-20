package bobproject.mycompany.bobapp.Service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;

import bobproject.mycompany.bobapp.dto.cart.CartList;

public class addCart {
/*	@GetMapping("/addCart")
	public String addCart(HttpSession session) {
		
		List<CartList> list = new ArrayList<>();
		CartList cartList = new CartList();
		cartList.setPd_num(4);
		cartList.setPd_name("궁중떡볶음");
		cartList.setPd_price("19900");
		cartList.setPd_qn(1);
		list.add(cartList);
	/*	session.setAttribute("cartList", cartList); */
		
	/*	session.setAttribute("cartList", list); */
	
		
	/*	logger.info("카트에 담았습니다.");
		return "redirect:/cart"; */
		
	/*	List<CartList> list = new ArrayList<>();
		for(int i = 0; i < list.size(); i++) {
			CartList cartList = new CartList();
			cartList.setPd_num(i);
			cartList.setPd_name(name + i);
			cartList.setPd_price(price + i);
			cartList.setPd_qn(quantity + i);
			list.add(cartList);
		}
		session.setAttribute("cartList", list); */
	
/*	} */
}
