package bobproject.mycompany.bobapp.controller.account;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.CSDirectqService;
import bobproject.mycompany.bobapp.Service.MemberService;
import bobproject.mycompany.bobapp.Service.PurchaseService;
import bobproject.mycompany.bobapp.dto.CSDirectq;
import bobproject.mycompany.bobapp.dto.Purchase;
import bobproject.mycompany.bobapp.dto.createid.Member;

@Controller
/* @RequestMapping("/account") */
public class myinfo {
	private static final Logger logger = LoggerFactory.getLogger(myinfo.class);
	
	@RequestMapping("/myinfo")
	public String content(HttpServletRequest request, HttpServletResponse response) {
		logger.info("나의정보페이지");
		
		HttpSession hs = request.getSession();
		
		if(hs.getAttribute("loginStatus") == null)
		{
			logger.info("로그인 되어있지 않음");
			//response.sendRedirect("/account/login");
			return "/account/login";
		}
		
		return "account/myinfo";
	}
	
	@Resource
	private PurchaseService moneycouponservice;
	
	@GetMapping("/moneycoupon")
	public String moneycoupon(HttpSession session, Model model) {
		String mid = (String) session.getAttribute("sessionMid");
		logger.info(mid);
		String mgrade = (String)session.getAttribute("grade");
		logger.info(mgrade);
		
		Purchase pur = moneycouponservice.getPurchase(mid);
		
		
		//pur.setMid(mid);
		model.addAttribute("pur", pur);
		
		return "account/moneycoupon";
	}
	
	
	@Resource
	private MemberService memberService;
	
	@GetMapping("/changeId")
	public String changeId(HttpSession session, Model model) {
		String mid = (String) session.getAttribute("sessionMid");
		logger.info(mid);
		
		Member mem = memberService.getMember(mid);
		
		model.addAttribute("mem", mem);
		return "account/changeId";
	}
	
	@PostMapping("/changeIdupdate")
	public String changeIdupdate(Member mem) {
		memberService.updateMember(mem);
		return "redirect:/account/changeId";
	}

	
	@Resource
	private CSDirectqService csdirectqService;
	
	@GetMapping("/dqdone")
	public String dq_list(CSDirectq csdirectq, Model model, HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		List<CSDirectq> list = csdirectqService.getValidatedList(mid);
		model.addAttribute("list", list);
		return "customer_service/dqdone";
	}
	
	@GetMapping("/directqread")
	public String directqread(int qno, Model model) {
		CSDirectq directq = csdirectqService.getDirectq(qno);
		model.addAttribute("directq", directq);
		return "customer_service/dq_read";
	}
	
	@GetMapping("/directqupdate")
	public String directqupdateForm(int qno, Model model) {
		CSDirectq directq = csdirectqService.getDirectq(qno);
		model.addAttribute("directq", directq); 
		return "customer_service/dq_update";
	}
	
	@PostMapping("/directqupdate")
	public String directqupdate(CSDirectq directq) {
		csdirectqService.updateDirectq(directq);
		return "redirect:/myinfo";
	}
	
	@GetMapping("/directqdelete")
	public String directqdelete(int qno) {
		csdirectqService.deleteDirectq(qno);
		return "redirect:/myinfo";
	}
	
	
	/*
	public boolean checkLogin(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		HttpSession hs = request.getSession();
		
		if(hs.getAttribute("loginStatus") == null)
		{
			logger.info("로그인 되어있지 않음");
			response.sendRedirect("/account/login");
			return false;
		}
		
		return true;
	}
	*/
}

