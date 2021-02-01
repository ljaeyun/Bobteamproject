package bobproject.mycompany.bobapp.controller;

import java.util.ArrayList;
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
import bobproject.mycompany.bobapp.Service.OrderService;
import bobproject.mycompany.bobapp.dto.Order;
import bobproject.mycompany.bobapp.dto.Orderitem;
import bobproject.mycompany.bobapp.dto.Product;
import bobproject.mycompany.bobapp.dto.createid.Member;

@Controller
@RequestMapping("/order")
public class Ct_order {
	private static final Logger logger = LoggerFactory.getLogger(Ct_order.class);
	
	@Resource
	private CartService cartService;
	
	@Resource
	private OrderService orderService;
	
	@GetMapping("/orderlist")
	public String orderlist(HttpSession session, Model model) {
		//세션에 저장된 id 받아오기
		String mid = (String) session.getAttribute("sessionMid");
		
		//카트 불러오기
		List<Product> cartlist = cartService.getCartList(mid);
		model.addAttribute("cartlist", cartlist);
		
		//회원 정보 불러오기
		Member memberinfo = orderService.getMemberinfo(mid);
		model.addAttribute("memberinfo", memberinfo);
		
		
		return "order/order";
	}
	
	
	@PostMapping("/order")
	public String order(Order order, Model model, HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		
		order.setMid(mid);
		
		List<Orderitem> orderitems = new ArrayList<>();
		
		List<Product> cartlist = cartService.getCartList(mid);
		
		for(Product cart : cartlist) {
			Orderitem oi = new Orderitem();
			oi.setPno(cart.getPno());
			oi.setOpqn(cart.getCpqn());
			orderitems.add(oi);
		}
		
		orderService.order(order, orderitems);
		
		cartService.deleteCart(mid);
		logger.info("주문완료");
		return "redirect:/order/orderdone";
	}
	

	@GetMapping("/orderdone")
	public String orderdone() {
		return "order/orderdone";
	}
}
