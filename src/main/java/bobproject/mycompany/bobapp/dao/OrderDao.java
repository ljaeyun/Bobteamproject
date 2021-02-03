package bobproject.mycompany.bobapp.dao;

import java.util.List;

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

	public int updatePurchase(Order order) {
		int rows = sst.update("orders.updatepurchase", order);
		return rows;
	}

	public List<Order> selectListById(String mid) {
		List<Order> orderlist = sst.selectList("orders.selectListById", mid);
		return orderlist;
	}

	public List<Order> selectAll() {
		List<Order> orderlist = sst.selectList("orders.selectAll");
		return orderlist;
	}

	public List<Orderitem> selectItemsByOno(int ono) {
		List<Orderitem> orderitems = sst.selectList("orders.selectItemsByOno", ono);
		return orderitems;
	}

	public int plusOstatus(int ono) {
		int rows = sst.update("orders.updatePlusOstatus", ono);
		return rows;
	}

	public int minusOstatus(int ono) {
		int rows = sst.update("orders.updateMinusOstatus", ono);
		return rows;
	}
	
	
}
