package bobproject.mycompany.bobapp.controller.menu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller

public class ct_menu {
	private static final Logger logger = LoggerFactory.getLogger(ct_menu.class);
	
	@RequestMapping("/menu")
	public String menu() {
		logger.info("메뉴출력");
		return "menu/menu";
	}
	
	@GetMapping("/login1")
	public String cart1() {
		logger.info("장바구니 클릭, 로그인으로 넘어갑니다.");
		return "redirect:/account/login";
	}
	
	@GetMapping("/menu1")
	public String detail1() {
		logger.info("메뉴에서 랍스터으로 갑니다");
		return "redirect:/detailpage/menu1";
	}
	
	@GetMapping("/menu2")
	public String detail2() {
		logger.info("메뉴에서 굴떡국으로 갑니다");
		return "detailpage/menu2";
	}
	
	@GetMapping("/menu3")
	public String detail3() {
		logger.info("메뉴에서 폭찹스테이크으로 갑니다");
		return "redirect:/detailpage/폭찹스테이크";
	}
	
	@GetMapping("/menu4")
	public String detail4() {
		logger.info("메뉴에서 궁중떡볶음으로 갑니다");
		return "redirect:/detailpage/menu4";
	}
	
	@GetMapping("/menu5")
	public String detail5() {
		logger.info("메뉴에서 칠리깐쇼새우으로 갑니다");
		return "detailpage/깐쇼새우";
	}
	
	@GetMapping("/menu6")
	public String detail6() {
		logger.info("메뉴에서 만두전골으로 갑니다");
		return "detailpage/만두전골";
	}
	
	@GetMapping("/menu7")
	public String detail7() {
		logger.info("메뉴에서 목살스테이크으로 갑니다");
		return "detailpage/목살스테이크";
	}
	
	@GetMapping("/menu8")
	public String detail8() {
		logger.info("메뉴에서 버섯들깨탕으로 갑니다");
		return "detailpage/버섯들깨탕";
	}
	
	@GetMapping("/menu9")
	public String detail9() {
		logger.info("메뉴에서 두루치기으로 갑니다");
		return "detailpage/두루치기";
	}
	
	
	/*
	 * @PostMapping("/cartmove") public String cart(HttpServletRequest request) {
	 * HttpSession mov = request.getSession(); String uid = (String)
	 * mov.getAttribute("logtinStatus"); if (uid.equals("ok")) { return "cart/cart";
	 * } else { return "redirect:/account/login"; }
	 * 
	 * }
	 */
	
}
