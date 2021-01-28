
package bobproject.mycompany.bobapp.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
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
	@GetMapping("/employee")
	public void employ(int pno,HttpServletResponse response) throws Exception {
		response.setContentType("appliaction/json;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		Product pd	= productService.getProduct();
		JSONObject root = new JSONObject();
		root.put("pno", pd.getPno());
		root.put("pprice", pd.getPprice());
		root.put("ptime", pd.getPtime());
		root.put("pweight", pd.getPweight());
		root.put("pamount", pd.getPamount());
		root.put("", pd.getPattach1());
		root.put("", pd.getPattach2());
		root.put("", pd.getPattach3());
		root.put("", pd.getPcontent());
		root.put("", pd.getPdifficulty());
		root.put("", pd.getPname());
		root.put("", pd.getPsubtitle());
		String json = root.toString();
		pw.println(json);
		pw.flush();
		pw.close();
		
		
		
	}
	
}
