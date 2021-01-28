
package bobproject.mycompany.bobapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import bobproject.mycompany.bobapp.Service.ProductService;
import bobproject.mycompany.bobapp.dto.Product;



@Controller
@RequestMapping("/seller")
public class Controller_Pboard {
	private static final Logger logger = LoggerFactory.getLogger(Controller_Pboard.class);
	@Resource
	private ProductService productService;
	
	@GetMapping("/goodsRegist")
	public String RegistForm() {
		logger.info("상품등록");
		return "seller/goodsRegist";
	}
	
	
	@PostMapping("/goodsRegist")
	public String RegistForm(Product product, HttpSession session) throws Exception {
		
		//글자정보 세션에 정보 넣기
		String pname = product.getPname();
		String pamount = product.getPamount();
		String pcontent = product.getPcontent();
		String psubtitle = product.getPsubtitle();
		String pdifficulty = product.getPdifficulty();
//		String pname = (String) session.getAttribute("sessionPname");
		product.setPname(pname);
//		String pamount = (String) session.getAttribute("sessionPamount");
		product.setPamount(pamount);
//		String pcontent = (String) session.getAttribute("sessioPcontent");
		product.setPcontent(pcontent);
//		String psubtitle = (String) session.getAttribute("sessionPsubtitle");
		product.setPsubtitle(psubtitle);
//		String pdifficulty = (String) session.getAttribute("sessionPdifficulty");
		product.setPdifficulty(pdifficulty);
		
		
		//숫자정보 세션에 정보 넣기
		session.setAttribute("sessionPprice", 101);
		int pprice = (int) session.getAttribute("sessionPprice");
		
		product.setPprice(pprice);
		session.setAttribute("sessionPweight", 101);
		int pweight = (int) session.getAttribute("sessionPweight");
		product.setPweight(pweight);
		session.setAttribute("sessionPtime", 101);
		int ptime = (int) session.getAttribute("sessionPtime");
		product.setPtime(ptime);
		
		//사진정보 세션에 정보넣기
		MultipartFile mf1 = product.getPattach1();
		MultipartFile mf2 = product.getPattach2();
		MultipartFile mf3 = product.getPattach3();
		
		product.setPmainimg(mf1.getOriginalFilename());
		product.setPmainimgtype(mf1.getContentType());
		product.setPsubimg1(mf2.getOriginalFilename());
		product.setPsubimg1type(mf2.getContentType());
		product.setPsubimg2(mf3.getOriginalFilename());
		product.setPsubimg2type(mf3.getContentType());
		
		
//		String saveName1 = new Date().getTime() + "-" + mf1.getOriginalFilename();
//		String saveName2 = new Date().getTime() + "-" + mf2.getOriginalFilename();
//		String saveName3 = new Date().getTime() + "-" + mf3.getOriginalFilename();
//		File saveFile1 = new File("D:/MyWorkspace/uploadfiles/members/" + saveName1);
//		mf1.transferTo(saveFile1);
//		File saveFile2 = new File("D:/MyWorkspace/uploadfiles/members/" + saveName2);
//		mf2.transferTo(saveFile2);
//		File saveFile3 = new File("D:/MyWorkspace/uploadfiles/members/" + saveName3);
//		mf3.transferTo(saveFile3);

		productService.saveProduct(product);
		return "redirect:/";
	}
	
}
