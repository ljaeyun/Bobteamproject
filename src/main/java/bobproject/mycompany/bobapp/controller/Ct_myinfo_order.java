package bobproject.mycompany.bobapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.OrderService;
import bobproject.mycompany.bobapp.dto.Order;

@Controller
public class Ct_myinfo_order {
	
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
	
}
