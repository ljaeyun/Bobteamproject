package bobproject.mycompany.bobapp.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.OrderDao;
import bobproject.mycompany.bobapp.dto.Order;
import bobproject.mycompany.bobapp.dto.Orderitem;
import bobproject.mycompany.bobapp.dto.createid.Member;

@Service
public class OrderService {
	@Resource
	private OrderDao orderDao;
	
	public Member getMemberinfo(String mid) {
		Member memberinfo = orderDao.selectById(mid);
		return memberinfo;
	}
	
	
	public void order(Order order, List<Orderitem> orderitems) {
		orderDao.insertOrder(order);
		
		int ono = order.getOno();
		
		for(Orderitem orderitem : orderitems) {
			orderitem.setOno(ono);
			orderDao.insertOrderitem(orderitem);
		}
		
	}

	public void purchase(Order order) {
		orderDao.updatePurchase(order);
	}
	
	public List<Order> getOrderList(String mid) {
		List<Order> orderlist = orderDao.selectListById(mid);
		return orderlist;
	}
	
	public List<Order> getOrderList() {
		List<Order> orderlist = orderDao.selectAll();
		return orderlist;
	}
}
