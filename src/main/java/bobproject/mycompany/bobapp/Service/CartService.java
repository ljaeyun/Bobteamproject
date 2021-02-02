package bobproject.mycompany.bobapp.Service;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.CartDao;
import bobproject.mycompany.bobapp.dto.Cart;
import bobproject.mycompany.bobapp.dto.Product;
@Service
public class CartService {
	@Resource
	private CartDao cartDao;
	
	public void addCart(Cart cart) {
		cartDao.insert(cart);
	}
	public List<Product> getCartList(String mid) {
		List<Product> cartlist = cartDao.selectById(mid);
		return cartlist;
	}
	public void deleteCart(String mid) {
		cartDao.delete(mid);
	}
	
	public void updateCart(Cart cart) {
		cartDao.update(cart);
	}
	public void deleteCart(Cart cart) {
		cartDao.delete(cart);
		
	}
	
}