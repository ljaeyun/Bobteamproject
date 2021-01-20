package bobproject.mycompany.bobapp.controller.seller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import bobproject.mycompany.bobapp.dto.seller.sellergoods;

@Controller
/* @RequestMapping("/seller") */
public class goodsDetail {
	private static final Logger logger = LoggerFactory.getLogger(goodsDetail.class);
	
	@RequestMapping("/goodsDetail")
	public String content(sellergoods sg, Model model) {
		logger.info("상품상세보기");
		
		
		return "seller/goodsDetail";
	}
	
	
	
}

