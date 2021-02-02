package bobproject.mycompany.bobapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.CartService;
import bobproject.mycompany.bobapp.dto.Cart;
import bobproject.mycompany.bobapp.dto.Product;

@Controller
@RequestMapping("/cart")
public class Ct_cart {
	private static final Logger logger = LoggerFactory.getLogger(Ct_cart.class);
	
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
	public String addcart(HttpSession session) throws Exception {
	//	login 에서 세션에 mid 저장
		
		Cart cart = new Cart();
		String mid = (String) session.getAttribute("sessionMid");
		int pno = (int) session.getAttribute("pno");
		cart.setMid(mid);
		cart.setPno(pno);
		
		cartService.addCart(cart);
		
		return "redirect:/cart/cartlist";
	}
	
	
	
	@PostMapping("/updatecart")
	public void updatecart(int pno, int cpqn, HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		
		logger.info("수량:" + cpqn);
		
		Cart cart = new Cart();
		cart.setMid(mid);
		cart.setPno(pno);
		cart.setCpqn(cpqn);
		
		cartService.updateCart(cart);
	}
	

	@GetMapping("/deletecart")
	public String deletecart(int pno, HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		Cart cart = new Cart();
		cart.setMid(mid);
		cart.setPno(pno);
		cartService.deleteCart(cart);
		logger.info("cart를 삭제했습니다.");
		return "redirect:/cart/cartlist";
	}
	
	@GetMapping("/menu")
	public String menu() {
		logger.info("menu로 돌아갑니다.");
		return "redirect:/menu";
	}
	
	@GetMapping("/orderlist")
	public String orderlist() {
		logger.info("주문 진행 페이지로 갑니다.");
		
		return "redirect:/order/orderlist";
	}
	
}
