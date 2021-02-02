package bobproject.mycompany.bobapp.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ct_event_tabpage {
	private static final Logger logger 
	= LoggerFactory.getLogger(ct_event_tabpage.class);
	
	
	 @RequestMapping("/event_tabmenu")
	 public String tabpage() {
	 return "event/event_tabmenu";
	 }
	 
	 @RequestMapping("/tabmenu1") public String tabmenu1() { logger.info("블루비양카");
	 return "event/tabmenu1"; }
	 
	 @RequestMapping("/tabmenu2") public String tabmenu2() { logger.info("더 블루");
	 return "event/tabmenu2"; }
	 
	 @RequestMapping("/tabmenu3") public String tabmenu3() { logger.info("블루");
	 return "event/tabmenu3"; }
	 
	 @RequestMapping("/tabmenu4") public String tabmenu4() { logger.info("스카이");
	 return "event/tabmenu4"; }
	  
	 @RequestMapping("/tabmenu5") public String tabmenu5() { logger.info("그레이");
	 return "event/tabmenu5"; }
	 
}
