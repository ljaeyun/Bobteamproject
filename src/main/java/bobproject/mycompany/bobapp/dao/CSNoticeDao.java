package bobproject.mycompany.bobapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.CSDirectq;
import bobproject.mycompany.bobapp.dto.CustomerServiceNotice;

@Repository
public class CSNoticeDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public List<CustomerServiceNotice> selectAll() {
		List<CustomerServiceNotice> list =
				sst.selectList("notice.selectAll");
		return list;
	}
	
	public CustomerServiceNotice selectByPk(int nno) {
		CustomerServiceNotice noticeread = sst.selectOne("notice.selectByPk", nno);
		return noticeread;
	}
	
}
