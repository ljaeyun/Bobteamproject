
package bobproject.mycompany.bobapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bobproject.mycompany.bobapp.Service.ProductService;
import bobproject.mycompany.bobapp.dto.Pager;
import bobproject.mycompany.bobapp.dto.Product;

@Controller
public class Ct_Product {
	private static final Logger logger = LoggerFactory.getLogger(Ct_Product.class);
	
	@Resource
	private ProductService productService;
	//상품 등록
	@GetMapping("/goodsRegist")
	public String RegistForm() {
		logger.info("상품등록페이지 열기");
		return "seller/goodsRegist";
	}
	
	
	@PostMapping("/goodsRegist")
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
	@GetMapping("/goodsDelete")
	public String goodsDelete(int pno) {
		productService.deleteDelete(pno);
		return "redirect:/";
	}
	
	@GetMapping("/menu/pphoto1")
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
	@GetMapping("/pphoto2")
	public void pphoto2(int pno, HttpServletResponse response) throws Exception {
		String filePath = null;
		Product product = productService.getProduct(pno);
		String imgsavename2 = product.getPimgsave2();
		filePath = "D:/MyWorkspace/uploadfiles/members/" + imgsavename2;
		response.setContentType(product.getPimgtype2());
		String imgoriginalname2 = product.getPimgorigin2();
		imgoriginalname2 = new String(imgoriginalname2.getBytes("UTF-8"), "ISO-8859-1");
		response.setHeader("Content-Disposition", "attachment; filename=\""+ imgoriginalname2 + "\"");
		OutputStream os = response.getOutputStream();
		InputStream is = new FileInputStream(filePath);
		FileCopyUtils.copy(is, os);
		os.flush();
		os.close();
		is.close();
	}
	@GetMapping("/pphoto3")
	public void pphoto3(int pno, HttpServletResponse response) throws Exception {
		String filePath = null;
		Product product = productService.getProduct(pno);
		String imgsavename3 = product.getPimgsave3();
		filePath = "D:/MyWorkspace/uploadfiles/members/" + imgsavename3;
		response.setContentType(product.getPimgtype3());
		String imgoriginalname3 = product.getPimgorigin3();
		imgoriginalname3 = new String(imgoriginalname3.getBytes("UTF-8"), "ISO-8859-1");
		response.setHeader("Content-Disposition", "attachment; filename=\""+ imgoriginalname3 + "\"");
			
		OutputStream os = response.getOutputStream();
		InputStream is = new FileInputStream(filePath);
		FileCopyUtils.copy(is, os);
		os.flush();
		os.close();
		is.close();
	}

	@GetMapping("/menu")
	public String menu(@RequestParam(defaultValue="1") int pageNo, Model model) {
		int totalRows = productService.getTotalRows();
		Pager pager = new Pager(9, 3 ,totalRows, pageNo);
		List<Product> list = productService.getProductList(pager);
		model.addAttribute("list", list);
		model.addAttribute("pager", pager);	
		return "menu/menu";
	}
	
	@GetMapping("/detailpage")
	public String detailpage(@RequestParam(defaultValue ="7") int pno, Model model, HttpSession session) {
		Product product = new Product();
		product = productService.getProduct(pno);	
		model.addAttribute("product", product);
		session.setAttribute("pno", pno);
		return "detailpage/view";
	
	}
}












