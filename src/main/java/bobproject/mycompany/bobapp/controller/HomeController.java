package bobproject.mycompany.bobapp.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//http://.../webapp1
	@RequestMapping("/")
	public String home() {
		logger.info("실행");
		return "home";
	}

	
	@GetMapping("/logout2")
	public String logout2(HttpSession session) {
		
		session.removeAttribute("loginStatus");
		return "redirect:/";
	}
}
