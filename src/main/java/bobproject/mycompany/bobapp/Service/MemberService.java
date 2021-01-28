package bobproject.mycompany.bobapp.Service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.LoginDao;
import bobproject.mycompany.bobapp.dao.OrderDao;
import bobproject.mycompany.bobapp.dto.createid.Account;

@Service
public class MemberService {
	private static Logger logger = LoggerFactory.getLogger(MemberService.class);
	
	
	@Resource
	private LoginDao loginDao;
	
	public String login(Account id) {
		Account dbId = loginDao.selectByPk(id.getMid());
		
		if(dbId == null) {
			return "wrongMid";
		} else if(dbId.getMpw().equals(id.getMpw())) {
			return "success";
		} else {
			return "wrongMpw";
		}
	}
	public Account getMember(String mid)
	{
		Account id = loginDao.selectByPk(mid);
		return id;
	}
	
	
	@Resource
	private OrderDao orderDao;
	
}
