package bobproject.mycompany.bobapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.createid.Members;

@Repository
public class LoginDao {
	private static final Logger logger = LoggerFactory.getLogger(LoginDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public Members selectByPk(String mid)
	{
		Members id = sst.selectOne("accounts.selectByPk", mid);
		return id;
	}
	
	public int insert(Members id)
	{
		int rows = sst.insert("accounts.insert", id);
		return rows;
	}
}
