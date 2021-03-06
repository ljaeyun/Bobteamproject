package bobproject.mycompany.bobapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.createid.Member;

@Repository
public class LoginDao {
	private static final Logger logger = LoggerFactory.getLogger(LoginDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public Member selectByPk(String mid)
	{
		Member id = sst.selectOne("members.selectByPk", mid);
		return id;
	}
	
	public Member selectByEmail(String memail)
	{
		Member email = sst.selectOne("members.selectByEmail", memail);
		return email;
	}
	
	public int insert(Member id)
	{
		int rows = sst.insert("members.insert", id);
		return rows;
	}
	
	public int insertGrade(String mid)
	{
		int grade = sst.insert("members.insertGrade",mid);
		return grade;
	}

	public int delete(String mid) {
		int rows = sst.delete("members.delete", mid);
		return rows;
		
	}
	
	public int update(Member mem) {
		int rows = sst.update("members.update", mem);
		return rows;
	}
	
	
}
