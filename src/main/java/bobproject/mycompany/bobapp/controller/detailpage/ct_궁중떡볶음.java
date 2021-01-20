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
public class ct_궁중떡볶음 {
	private final static Logger logger = 
			LoggerFactory.getLogger(ct_궁중떡볶음.class);
	
	@GetMapping("/menu4")
	public String DP() {
		logger.info("디테일 페이지가 실행되었습니다.");
		return "detailpage/menu4";
	}
	

	@GetMapping("/addCart")
	public String addCart(HttpSession session) {
		
		List<CartList> list = new ArrayList<>();
		/*	for(int i=1; i <= list.size(); i++) { */
			CartList cartList = new CartList();
			cartList.setPd_num(4);
			cartList.setPd_name("궁중떡볶음");
			cartList.setPd_price("19900");
			cartList.setPd_qn(1);
			list.add(cartList);
/*		}*/
		session.setAttribute("cartList", list);
		
	
		logger.info("카트에 담았습니다.");
		return "redirect:/cart";
	}
	
	@GetMapping("/to_previouspage")
	public String to_previouspage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/폭찹스테이크";
	}
	@GetMapping("/to_category")
	public String to_category(){
		logger.info("메뉴로 이동합니다.");
		return "menu/menu";
	}
	@GetMapping("/to_nextpage")
	public String to_nextpage(){
		logger.info("이전 페이지로 이동합니다.");
		return "detailpage/칠리깐쇼새우";

	}

	
	
}
