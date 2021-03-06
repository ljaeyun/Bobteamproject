package bobproject.mycompany.bobapp.controller.account;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.MemberService;
import bobproject.mycompany.bobapp.Service.PurchaseService;
import bobproject.mycompany.bobapp.dto.Purchase;
import bobproject.mycompany.bobapp.dto.createid.Member;

@Controller
/* @RequestMapping("/account") */
public class CreateId {
	private static final Logger logger = LoggerFactory.getLogger(CreateId.class);
	
	@RequestMapping("/createId")
	public String content() {
		logger.info("회원가입페이지");
		return "account/createId";
	}
	
	@Resource
	private MemberService memberService;
	
	
	@Resource
	private PurchaseService purchaseService;
	
	@PostMapping("/join")
	public String create(Member id, Purchase id2) {
		
		memberService.join(id);
		purchaseService.join(id2);
		
		return "redirect:/";
	}
	
	@GetMapping("/checkMid")
	public void checkMid(Member id, HttpServletResponse response, HttpSession session) throws Exception {
		logger.info("아이디확인");
		String chkResult = memberService.checkMid(id);  //chkResult 에서 존재하는 mid 확인
		
		response.setContentType("application.json; charset=UTF-8");
		PrintWriter pw2 = response.getWriter();
		
		JSONObject root2 = new JSONObject();  //객체 생성
		root2.put("chkResult", chkResult);
		pw2.println(root2.toString());
		
		pw2.flush();
		pw2.close();
	}

	@GetMapping("/checkMemail")
	public void checkMemail(Member email, HttpServletResponse response, HttpSession session) throws Exception {
		logger.info("이메일확인");
		String chkResult = memberService.checkMemail(email);  //chkResult 에서 존재하는 mid 확인
		
		response.setContentType("application.json; charset=UTF-8");
		PrintWriter pw3 = response.getWriter();
		
		JSONObject root3 = new JSONObject();  //객체 생성
		root3.put("chkResult", chkResult);
		pw3.println(root3.toString());
		
		pw3.flush();
		pw3.close();
	}
	
	
	
}
