package bobproject.mycompany.bobapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/menu")
public class ct_menu {
	private static final Logger logger = LoggerFactory.getLogger(ct_menu.class);
	
	/* @RequestMapping("/menu")
	public String menu() {
		logger.info("메뉴출력");
		return "menu/menu";
	} */
	
	
	/*
	 * @GetMapping("/menu") public String menu(
	 * 
	 * @RequestParam(defaultValue = "1") int pageNo, Model model) { int totalRows =
	 * boardService.getTotalRows(); MenuPager pager = new MenuPager(9, 5, totalRows,
	 * pageNo); List<Ch14Board> list = boardService.getBoardList(pager);
	 * model.addAttribute("list", list); model.addAttribute("pager", pager); return
	 * "menu/menu"; }
	 */
	

	
	@GetMapping("/menu1")
	public String detail1() {
		logger.info("메뉴에서 랍스터으로 갑니다");
		return "redirect:/detailpage/menu1";
	}
	
	@GetMapping("/menu2")
	public String detail2() {
		logger.info("메뉴에서 굴떡국으로 갑니다");
		return "redirect:/detailpage/menu2";
	}
	
	@GetMapping("/menu3")
	public String detail3() {
		logger.info("메뉴에서 폭찹스테이크으로 갑니다");
		return "redirect:/detailpage/menu3";
	}
	
	@GetMapping("/menu4")
	public String detail4() {
		logger.info("메뉴에서 궁중떡볶음으로 갑니다");
		return "redirect:/detailpage/menu4";
	}
	
	@GetMapping("/menu5")
	public String detail5() {
		logger.info("메뉴에서 칠리깐쇼새우으로 갑니다");
		return "redirect:/detailpage/menu5";
	}
	
	@GetMapping("/menu6")
	public String detail6() {
		logger.info("메뉴에서 만두전골으로 갑니다");
		return "redirect:/detailpage/menu6";
	}
	
	@GetMapping("/menu7")
	public String detail7() {
		logger.info("메뉴에서 목살스테이크으로 갑니다");
		return "redirect:/detailpage/menu7";
	}
	
	@GetMapping("/menu8")
	public String detail8() {
		logger.info("메뉴에서 버섯들깨탕으로 갑니다");
		return "redirect:/detailpage/menu8";
	}
	
	@GetMapping("/menu9")
	public String detail9() {
		logger.info("메뉴에서 두루치기으로 갑니다");
		return "redirect:/detailpage/menu9";
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
