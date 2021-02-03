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
import org.springframework.web.bind.annotation.RequestMethod;

import bobproject.mycompany.bobapp.Service.OrderService;
import bobproject.mycompany.bobapp.dto.Order;
import bobproject.mycompany.bobapp.dto.Orderitem;

@Controller
public class Ct_myinfo_order {
	private static final Logger logger = LoggerFactory.getLogger(Ct_myinfo_order.class);
	
	@Resource
	private OrderService orderService;
	
	@RequestMapping("/myinfo_orderlist")
	public String myinfo_orderlist(HttpSession session, Model model) {
		
		String mid = (String)session.getAttribute("sessionMid");
		List<Order> orderlist = orderService.getOrderList(mid);
		
		model.addAttribute("orderlist", orderlist);
		
		return "order/myorderlist";
	}
	
	@RequestMapping("/admin_orderlist")
	public String admin_orderlist(Model model) {
		
		List<Order> orderlist = orderService.getOrderList();
		model.addAttribute("orderlist", orderlist);
		return "order/adminorderlist";
	}
	
	@GetMapping("/orderitems")
	public String orderitems(int ono, Model model) {
		List<Orderitem> orderitems = orderService.getOrderitems(ono);
		model.addAttribute("orderitems",orderitems);
		return "order/orderitems";
	}
	

	@PostMapping("/plus")
	public String plus(int ono) {
		orderService.plusOstatus(ono);
		logger.info("배송 상태 변경");
		return "redirect:/order/myorderlist";
	}
	
	@PostMapping("/minus")
	public String minus(int ono) {
		orderService.minusOstatus(ono);
		logger.info("배송 상태 변경");
		return "redirect:/order/myorderlist";
	}
}
