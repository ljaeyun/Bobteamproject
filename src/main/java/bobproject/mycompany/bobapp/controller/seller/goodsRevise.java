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

@Controller("goodRevise")
/* @RequestMapping("/seller") */
public class goodsRevise {
	private static final Logger logger = LoggerFactory.getLogger(goodsRevise.class);
	
	@RequestMapping("/goodsRevise")
	public String content() {
		logger.info("상품수정");
		return "seller/goodsRevise";
	}
	
	
	
}

