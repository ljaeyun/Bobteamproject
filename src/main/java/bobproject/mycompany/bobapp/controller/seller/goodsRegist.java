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

@Controller("goodsRegist")
/* @RequestMapping("/seller") */
public class goodsRegist {
	private static final Logger logger = LoggerFactory.getLogger(goodsRegist.class);
	
	@RequestMapping("/goodsRegist")
	public String content() {
		logger.info("상품등록");
		return "seller/goodsRegist";
	}
	
	@PostMapping("/goodsupload")
	public String goodsupload(sellergoods sg)
	{
		String gname = sg.getGname();
		sg.setGname(gname);
		String gcost = sg.getGcost();
		logger.info("상품명 : " + gname);
		logger.info("상품판매가 : " + gcost);
		String gsummary = sg.getGsummary();
		String gdetail = sg.getGdetail();
		logger.info("상품요약 : " + gsummary);
		logger.info("상품상세 : " + gdetail);
		MultipartFile gimg = sg.getGimg();
		if(!gimg.isEmpty())
		{
			String originalFileName = gimg.getOriginalFilename();
			String contentType = gimg.getContentType();
			long size = gimg.getSize();
			
			logger.info("originalfilename : " + originalFileName);
			logger.info("contentType : " + contentType);
			logger.info("size : " + size);
			
			String saveDirPath = "C:\\Users\\COM\\Desktop\\NEW\\";
			
			String fileName = new Date().getTime() + "-" + originalFileName;
			String filepath = saveDirPath + fileName;
			
			
			File file = new File(filepath);
			try {
				gimg.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		

		
		
		return "redirect:/goodsRegist";
	}
	
}

