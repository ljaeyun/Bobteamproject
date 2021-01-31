package bobproject.mycompany.bobapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.CartService;
import bobproject.mycompany.bobapp.dto.Cart;
import bobproject.mycompany.bobapp.dto.Product;

@Controller
@RequestMapping("/cart")
public class ct_cart {
	private static final Logger logger = LoggerFactory.getLogger(ct_cart.class);
	
	@Resource
	private CartService cartService;
	
	@GetMapping("/cartlist")
	public String cartlist(HttpSession session, Model model) {
		String mid = (String) session.getAttribute("sessionMid");
		
		List<Product> cartlist = cartService.getCartList(mid);
		
		model.addAttribute("cartlist", cartlist);
		return "cart/cart";
	}
	
	@GetMapping("/addcart")
	public String addcart(Cart cart, HttpSession session) throws Exception {
	//	login 에서 세션에 mid 저장	
		String mid = (String) session.getAttribute("sessionMid");
		cart.setMid(mid);
		
	//	cart.setMid("test");
	
	//	detail 에서 세션에 pno 저장
	//	int pno = (Integer) session.getAttribute("sessionPno");
	//	cart.setPno(pno);
		
		cart.setPno(7);
		
		cartService.addCart(cart);
		
		return "redirect:/cart/cartlist";
	}
	
	
	@GetMapping("/deletecart")
	public String deletecart(HttpSession session) {
		
		session.removeAttribute("cartList");
		
		logger.info("cart를 삭제했습니다.");
		return "redirect:/cart/cartlist";
	}
	
	@GetMapping("/menu")
	public String menu() {
		logger.info("menu로 돌아갑니다.");
		return "redirect:/menu";
	}
	
	@GetMapping("/orderlist")
	public String orderlist(Cart cart, HttpSession session) {
		logger.info("주문 진행 페이지로 갑니다.");
		String mid = (String) session.getAttribute("sessionMid");
		
		cart.setMid(mid);
		cartService.updateCart(cart);
	
		return "redirect:/order/orderlist";
	}
	
}
