package bobproject.mycompany.bobapp.controller.account;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller("login")
/* @RequestMapping("/account") */
public class login {
	private static final Logger logger = LoggerFactory.getLogger(login.class);
	
	@RequestMapping("/login")
	public String content() {
		logger.info("로그인페이지");
		return "account/login";
	}
	
	@PostMapping("/login2")
	public String login2(String uid, String upassword, HttpSession session, HttpServletRequest request) {
		String referer = (String)request.getHeader("REFERER");
		logger.info("로그인");
		logger.info("아이디 : " + uid);
		logger.info("패스워드 : " + upassword);
		
		if(uid.equals("admin") &&upassword.equals("12345")) {
			session.setAttribute("loginStatus", "ok");
			session.setAttribute("id", uid);
			session.setAttribute("ADMIN", "admin");
			return "redirect:/";
		} else if(uid.equals("temp") && upassword.equals("123")){
			//임시로 만든 id 
			session.setAttribute("loginStatus", "ok");
			session.setAttribute("id", uid);
			session.setAttribute("ADMIN", "");
			return "redirect:/";
		}
		return "redirect:/login";
	}
	
	public boolean checklogin(HttpSession session)
	{
		if(session.getAttribute("loginStatus") == "ok")
		{
			return true;
		}
		return false;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();	
		
		return "redirect:/";
	}
}
