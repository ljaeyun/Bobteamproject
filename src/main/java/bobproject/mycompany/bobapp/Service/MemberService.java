package bobproject.mycompany.bobapp.Service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.LoginDao;
<<<<<<< HEAD
import bobproject.mycompany.bobapp.dao.PurchaseDao;
import bobproject.mycompany.bobapp.dto.Purchase;
=======
>>>>>>> branch 'master' of https://github.com/ljaeyun/Bobteamproject
import bobproject.mycompany.bobapp.dto.createid.Member;

@Service
public class MemberService {
	private static Logger logger = LoggerFactory.getLogger(MemberService.class);
	
	@Resource
	private LoginDao loginDao;
	
	@Resource
	private PurchaseDao purchaseDao;
	
	
	
	public String login(Member id) {
		Member dbId = loginDao.selectByPk(id.getMid());
		Purchase pur = purchaseDao.selectPsum(id.getMid());
		
		
		if(dbId == null) {
			return "wrongMid";
		} else if(dbId.getMpw().equals(id.getMpw())) {
				return "success";
		} else {
			return "wrongMpw";
		}
			
	}
	
	public String checkMid(Member id) {
		Member chkId = loginDao.selectByPk(id.getMid());
		
		if(chkId == null) {
			return "yesMid";
		} else {
			return "noMid";
		}
	}
	
	public String checkMemail(Member email) {
		Member chkEmail = loginDao.selectByEmail(email.getMemail());
		
		if(chkEmail == null) {
			return "yesMemail";
		} else {
			return "noMemail";
		}
	}
	
	public Member getMember(String mid)
	{
		Member id = loginDao.selectByPk(mid);
		return id;
	}

	/*
	 * @Resource private OrderDao orderDao;
	 */


	
	
}
