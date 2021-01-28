package bobproject.mycompany.bobapp.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bobproject.mycompany.bobapp.Service.ProductService;



@Controller
public class ct_Pboard {
	private static final Logger logger = LoggerFactory.getLogger(ct_Pboard.class);
	@Resource
	private ProductService productService;
	
	@GetMapping("/Gregist")
	public String RegistForm() {
		logger.info("상품등록");
		return "seller/goodsRegist";
	}
	/*
	 * @PostMapping("/Gregist") public String RegistForm() {
	 * 
	 * }
	 */
	
}
