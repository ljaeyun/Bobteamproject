package bobproject.mycompany.bobapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import bobproject.mycompany.bobapp.Service.ProductService;
import bobproject.mycompany.bobapp.dto.Product;

@Controller
public class Controller_Pboard {
	private static final Logger logger = LoggerFactory.getLogger(Controller_Pboard.class);
	@Resource
	private ProductService productService;
	//상품 등록
	@GetMapping("/goodsRegist")
	public String RegistForm() {
		logger.info("상품등록페이지 열기");
		return "seller/goodsRegist";
	}
	@PostMapping("/goodsRegist")
	public String RegistForm(Product product) {
		logger.info("실행");

		MultipartFile mf1 = product.getPattach1();
		MultipartFile mf2 = product.getPattach2();
		MultipartFile mf3 = product.getPattach3();
		
		product.setPmainimg(mf1.getOriginalFilename());
		product.setPmainimgtype(mf1.getContentType());
		product.setPsubimg1(mf2.getOriginalFilename());
		product.setPsubimg1type(mf2.getContentType());
		product.setPsubimg2(mf3.getOriginalFilename());
		product.setPsubimg2type(mf3.getContentType());


		productService.saveProduct(product);
		return "redirect:/";
		}
	//상품 페이지구현 
	@GetMapping("/detailpage")
	public String productlist(Model model) {
		List<Product> list = productService.getProductList();
		model.addAttribute("list", list);
		return "/detailpage";
	}
	
	
}
