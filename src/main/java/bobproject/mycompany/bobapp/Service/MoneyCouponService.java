package bobproject.mycompany.bobapp.Service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.PurchaseDao;
import bobproject.mycompany.bobapp.dto.Purchase;
import bobproject.mycompany.bobapp.dto.createid.Member;

@Service
public class MoneyCouponService {
	private static Logger logger = LoggerFactory.getLogger(MoneyCouponService.class);
	
	
	@Resource
	private PurchaseDao purchaseDao;
	
	public Purchase getPurchase(String id)
	{
		Purchase mem = purchaseDao.selectByPk(id);
		
		return mem;
	}
	
}
