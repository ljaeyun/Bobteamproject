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
import org.springframework.web.bind.annotation.RequestMapping;

import bobproject.mycompany.bobapp.Service.CSDirectqService;
import bobproject.mycompany.bobapp.dto.CSDirectq;

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
	private CSDirectqService csdirectqService;
	
	@GetMapping("/dqdone")
	public String dq_list(Model model) {
		List<CSDirectq> list = csdirectqService.getDirectqList();
		model.addAttribute("list", list);
		return "customer_service/dqdone";
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

