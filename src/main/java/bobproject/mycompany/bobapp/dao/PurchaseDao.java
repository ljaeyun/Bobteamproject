package bobproject.mycompany.bobapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.Purchase;
import bobproject.mycompany.bobapp.dto.createid.Member;

@Repository
public class PurchaseDao {
	private static final Logger logger = LoggerFactory.getLogger(PurchaseDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public Purchase selectByPk(String mid)
	{
		Purchase id = sst.selectOne("purchases.selectByPk", mid);
		return id;
	}
	
	public Purchase selectPsum(String mid)
	{
		Purchase sum = sst.selectOne("purchases.selectPsum", mid);
		return sum;
	}
	
	public int insert(Purchase id)
	{
		int rows = sst.insert("purchases.insert", id);
		return rows;
	}
	
	
}
