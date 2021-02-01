package bobproject.mycompany.bobapp.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bobproject.mycompany.bobapp.Service.ProductService;
import bobproject.mycompany.bobapp.dto.Product;
@Controller
public class Ct_Search {
	private static final Logger logger 
	= LoggerFactory.getLogger(Ct_Search.class);
	
	@Resource
	private ProductService productService;
	
	
	@GetMapping("/search")
	public String search(@RequestParam(defaultValue="") String keyword, Model model){
		logger.info("넘어감1");
		logger.info(keyword);
		List<Product> list = productService.getProductList(keyword);
		model.addAttribute("list", list);
		logger.info("넘어감2");
		return "menu/search";
	}
	
	@GetMapping("/pphoto1")
	public void pphoto1(int pno, HttpServletResponse response) throws Exception {
		String filePath = null;
		Product product = productService.getProduct(pno);
		String imgsavename1 = product.getPimgsave1();
		filePath = "D:/MyWorkspace/uploadfiles/members/" + imgsavename1;
		response.setContentType(product.getPimgtype1());
		String imgoriginalname1 = product.getPimgorigin1();
		imgoriginalname1 = new String(imgoriginalname1.getBytes("UTF-8"), "ISO-8859-1");
		response.setHeader("Content-Disposition", "attachment; filename=\""+ imgoriginalname1 + "\"");
		OutputStream os = response.getOutputStream();
		InputStream is = new FileInputStream(filePath);
		FileCopyUtils.copy(is, os);
		os.flush();
		os.close();
		is.close();
	}

}
