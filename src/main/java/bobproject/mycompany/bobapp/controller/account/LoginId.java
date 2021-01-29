package bobproject.mycompany.bobapp.controller.account;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.MemberService;
import bobproject.mycompany.bobapp.dto.createid.Member;
@Controller
/* @RequestMapping("/account") */
public class LoginId {
	private static final Logger logger = LoggerFactory.getLogger(LoginId.class);
	
	@RequestMapping("/login")
	public String content() {
		logger.info("로그인페이지");
		return "account/login";
	}
	
	@Resource
	private MemberService memberService;
	
	@PostMapping("/login")
	public void login(Member id , HttpServletResponse response, HttpSession session) throws Exception {
		logger.info("로그인 실행");
		String result = memberService.login(id);
		if(result.equals("success")) {
			if(id.getMid().equals("admin"))
			{
				session.setAttribute("sessionMid", id.getMid());
				session.setAttribute("loginStatus", "ok");
				session.setAttribute("ADMIN", "admin");
			}
			else
			{
				session.setAttribute("sessionMid", id.getMid());
				session.setAttribute("loginStatus", "ok");
			}
			
		}
		
		response.setContentType("application.json; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		JSONObject root = new JSONObject();
		root.put("result", result);
		pw.println(root.toString());
		
		pw.flush();
		pw.close();
	}
	
	
	@PostMapping("/login2")
	public String login2(String uid, String upassword, HttpSession session) {
		
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
