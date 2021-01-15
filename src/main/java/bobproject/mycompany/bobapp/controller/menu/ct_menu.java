package bobproject.mycompany.bobapp.controller.menu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
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
	

	
}
