package bobproject.mycompany.bobapp.controller.eventpage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class ct_eventpage_tabmenu{
  public static final Logger logger =
		  LoggerFactory.getLogger(ct_eventpage.class);
  
@RequestMapping("/event_tabmenu")
	public String tabpage() {
	return "event/event_tabmenu";
}
@RequestMapping("/tabmenu1")
	public String tabmenu1() {
	return "event/tabmenu1";
}
@RequestMapping("/tabmenu2")
public String tabmenu2() {
return "event/tabmenu2";
}
@RequestMapping("/tabmenu3")
public String tabmenu3() {
return "event/tabmenu3";
}
@RequestMapping("/tabmenu4")
public String tabmenu4() {
return "event/tabmenu4";
}
@RequestMapping("/tabmenu5")
public String tabmenu5() {
return "event/tabmenu5";
}
}
