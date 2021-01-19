package bobproject.mycompany.bobapp.controller.account;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
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

