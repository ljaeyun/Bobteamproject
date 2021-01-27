package bobproject.mycompany.bobapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import bobproject.mycompany.bobapp.Service.ProductService;
import bobproject.mycompany.bobapp.dto.Product;



@Controller
public class Controller_Pboard {
	private static final Logger logger = LoggerFactory.getLogger(Controller_Pboard.class);
	@Resource
	private ProductService productService;
	
	@GetMapping("/goodsRegist")
	public String RegistForm() {
		logger.info("상품등록");
		return "seller/goodsRegist";
	}
	@PostMapping("/boardwrite")
	public String RegistForm(Product product, HttpSession session) {
		
		
		return null;
	}
	
}
