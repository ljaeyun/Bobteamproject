package bobproject.mycompany.bobapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.CartService;
import bobproject.mycompany.bobapp.Service.MemberService;
import bobproject.mycompany.bobapp.dto.Product;

@Controller
@RequestMapping("/order")
public class ct_order {
	private static final Logger logger = LoggerFactory.getLogger(ct_order.class);
	
	@Resource
	private CartService cartService;
	
	@Resource 
	private MemberService memberService;
	
	@GetMapping("/orderlist")
	public String orderlist(HttpSession session) {
		//카트 불러오기
		String mid = (String) session.getAttribute("sessionMid");
	//	String mid = "test";
		List<Product> cartlist = cartService.getCartList(mid);
		session.setAttribute("cartlist", cartlist);
		
		//회원 정보 불러오기
		
		
		return "order/order";
	}
	
	
}
