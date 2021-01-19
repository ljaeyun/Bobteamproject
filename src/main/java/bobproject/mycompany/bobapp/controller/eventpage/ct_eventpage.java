package bobproject.mycompany.bobapp.controller.eventpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ct_eventpage {
  public static final Logger logger =
		  LoggerFactory.getLogger(ct_eventpage.class);
  
  @RequestMapping("/event")
  public String content() {
	  logger.info("이벤트 페이지 출력");
	  return "event/event";
  }
  @RequestMapping("/forword_tabmenu")
  public String forword_tapmenu(){
	  logger.info("탭메뉴 페이지로 이동합니다");
	  return "event/event_tabmenu";
  }
  @RequestMapping("/forword_friends")
  public String forword_friends() {
	  return "event/event_friends";
  }

}

