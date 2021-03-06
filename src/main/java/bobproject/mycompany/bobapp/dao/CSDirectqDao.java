package bobproject.mycompany.bobapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.CSDirectq;

@Repository
public class CSDirectqDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public int insert(CSDirectq directq) {
		int rows = sst.insert("direct_qs.insert", directq);
		return rows;
	}
	
	public List<CSDirectq> selectAll() {
		List<CSDirectq> list =
				sst.selectList("direct_qs.selectAll");
		return list;
	}
	
	public CSDirectq selectByPk(int qno) {
		CSDirectq directq = sst.selectOne("direct_qs.selectByPk", qno);
		return directq;
	}
	
	public List<CSDirectq> selectById(String mid) {
		List<CSDirectq> list =
				sst.selectList("direct_qs.selectById", mid);
		return list;
	}
	
	public int update(CSDirectq directq) {
		int rows = sst.update("direct_qs.update", directq);
		return rows;
	}
	
	
	public int delete(int qno) {
		int rows = sst.delete("direct_qs.delete", qno);
		return rows;
	}

	
	
}
