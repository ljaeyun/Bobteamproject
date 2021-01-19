package bobproject.mycompany.bobapp.controller.menu;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/menu")
public class ct_menu {

	private static final Logger logger = LoggerFactory.getLogger(ct_menu.class);
	
	@RequestMapping("/menu")
	public String menu() {
		logger.info("메뉴출력");
		return "menu/menu";
	}
	
	
	@RequestMapping("/cartmove")
	public String cart(HttpSession session) {
		String uid = (String) session.getAttribute("logtinStatus");
		if (uid.equals("ok")) {
			return "cart/cart";
		} else {
			return "redirect:/account/login";
		}
		
	}
	
}
