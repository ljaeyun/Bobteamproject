package bobproject.mycompany.bobapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.Cart;
import bobproject.mycompany.bobapp.dto.Product;

@Repository
public class CartDao {
	
	@Resource
	private SqlSessionTemplate sst;
	
	public int insert(Cart cart) {
		int rows = sst.insert("carts.insert", cart);
		return rows;
	}

	public List<Product> selectById(String mid) {
		
		List<Product> cartlist = sst.selectList("carts.selectById", mid);
		
		return cartlist;
	}

	
}
