package bobproject.mycompany.bobapp.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bobproject.mycompany.bobapp.Service.ProductService;
import bobproject.mycompany.bobapp.dto.Pager;
import bobproject.mycompany.bobapp.dto.Product;

@Controller
/* @RequestMapping("/seller") */
public class Ct_regist_modify {
	private static final Logger logger = LoggerFactory.getLogger(Ct_regist_modify.class);
	@Resource
	private ProductService productService;
	
	@GetMapping("/goodsregist")
	public String RegistForm() {
		logger.info("상품등록페이지 열기");
		return "seller/goodsregist";
	}
	
	@PostMapping("/goodsregist")
	public String RegistForm(Product product) throws Exception {
		logger.info("실행");
		
		MultipartFile mf1 = product.getPattach1();
		MultipartFile mf2 = product.getPattach2();
		MultipartFile mf3 = product.getPattach3();
		
		product.setPimgorigin1(mf1.getOriginalFilename());
		product.setPimgtype1(mf1.getContentType());
		String saveName1 = new Date().getTime() + "-" + mf1.getOriginalFilename();
		
		
		
		product.setPimgsave1(saveName1);
		product.setPimgtype1(mf1.getContentType());
		File saveFile1 = new File("D:/MyWorkspace/uploadfiles/members/" + saveName1);
		mf1.transferTo(saveFile1);
		
		product.setPimgorigin2(mf2.getOriginalFilename());
		product.setPimgtype2(mf2.getContentType());
		String saveName2 = new Date().getTime() + "-" + mf2.getOriginalFilename();
		
		
		product.setPimgsave2(saveName2);
		logger.info(saveName2);
		product.setPimgtype2(mf2.getContentType());
		File saveFile2 = new File("D:/MyWorkspace/uploadfiles/members/" + saveName2);
		mf2.transferTo(saveFile2);
		
		
		product.setPimgorigin3(mf3.getOriginalFilename());
		product.setPimgtype3(mf3.getContentType());
		String saveName3 = new Date().getTime() + "-" + mf3.getOriginalFilename();
		
		
		product.setPimgsave3(saveName3);
		product.setPimgtype3(mf3.getContentType());
		File saveFile3 = new File("D:/MyWorkspace/uploadfiles/members/" + saveName3);
		mf3.transferTo(saveFile3);
		
		productService.saveProduct(product);
		return "redirect:/";
		}
	@GetMapping("/goodsdelete")
	public String goodsDelete(int pno) {
		productService.deleteDelete(pno);
		return "redirect:/";
	}
	

	@GetMapping("/goodsrewrite")
	public String goodsRevise(@RequestParam(defaultValue="1")int pageNo, Model model) {
		int totalRows = productService.getTotalRows();
		Pager pager = new Pager(15, 3, totalRows, pageNo);
		List<Product> list = productService.getProductList(pager);
		model.addAttribute("list", list);
		return "seller/goodsrewrite";
	}
	
	@GetMapping("/goodsmodify")
		public String goodsModify(@RequestParam(defaultValue="1") int pno, HttpSession session) {
		Product product = productService.getProduct(pno);
		session.setAttribute("product", product);
		return "seller/goodsmodify";
	}
	@PostMapping("/goodsmodify")
		public String goodsModify(Product product){
		logger.info(""+product.getPno());
		productService.updateProduct(product);
		return "redirect:/";
		}
	}
	
	
	
