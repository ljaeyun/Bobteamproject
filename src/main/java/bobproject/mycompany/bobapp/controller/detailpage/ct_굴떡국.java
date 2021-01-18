package bobproject.mycompany.bobapp.controller.detailpage;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.dto.cart.CartList;

@Controller
@RequestMapping("/detailpage")
public class ct_굴떡국 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_굴떡국.class);
	
	@RequestMapping("/굴떡국")
	public String 굴떡국() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/굴떡국";
	}

	@GetMapping("/addCart")
	public String addCart(HttpSession session) {
		
		List<CartList> list = new ArrayList<>();
		CartList cartList = new CartList();
		cartList.setPd_name("궁중떡볶음");
		cartList.setPd_price("19900");
		cartList.setPd_qn("1");
		list.add(cartList);
		
		session.setAttribute("cartList", list);
		
		logger.info("카트에 담았습니다.");
		return "redirect:/cart/cart";
	}
	
	@GetMapping("/to_previouspage")
	public String to_previouspage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/랍스터";
	}
	@GetMapping("/to_category")
	public String to_category(){
		logger.info("이전 페이지로 이동합니다.");
		return "menu/menu";
	}
	@GetMapping("/to_nextpage")
	public String to_nextpage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/만두전골";
	}
	
}
