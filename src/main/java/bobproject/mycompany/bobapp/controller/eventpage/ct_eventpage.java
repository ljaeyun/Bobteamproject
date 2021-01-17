package bobproject.mycompany.bobapp.controller.eventpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class ct_eventpage {
  public static final Logger logger =
		  LoggerFactory.getLogger(ct_eventpage.class);
  
  @RequestMapping("/event")
  public String content() {
	  return "event/event";
  }
  @RequestMapping("/forword_tabmenu")
  public String forword_tapmenu(){
	  return "/event/event_tabmenu";
  }
  @RequestMapping("forword_friends")
  public String forword_friends() {
	  return "/event/event_friends";
  }
}
