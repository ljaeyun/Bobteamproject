package bobproject.mycompany.bobapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.Order;
import bobproject.mycompany.bobapp.dto.Orderitem;
import bobproject.mycompany.bobapp.dto.createid.Member;

@Repository
public class OrderDao {
	
	@Resource
	private SqlSessionTemplate sst;
	
	public Member selectById(String mid) {
		Member memberinfo = sst.selectOne("orders.selectById", mid);
		return memberinfo;
	}

	public int insertOrder(Order order) {
		int rows = sst.insert("orders.insertorder", order);
		return rows;
	}
	
	public int insertOrderitem(Orderitem orderitem) {
		int rows = sst.insert("orders.insertorderitem", orderitem);
		return rows;
	}

	
}
