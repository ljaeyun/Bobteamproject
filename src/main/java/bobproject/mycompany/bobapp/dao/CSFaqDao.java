package bobproject.mycompany.bobapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.CSFaq;

@Repository
public class CSFaqDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public List<CSFaq> selectAll() {
		List<CSFaq> list =
				sst.selectList("faq.selectAll");
		return list;
	}
	
	/*
	 * public CustomerServiceNotice selectByPk(int nno) { CustomerServiceNotice
	 * noticeread = sst.selectOne("notice.selectByPk", nno); return noticeread; }
	 */
}
