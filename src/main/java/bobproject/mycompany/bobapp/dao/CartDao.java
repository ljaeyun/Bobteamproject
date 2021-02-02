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

	public int delete(String mid) {
		int rows = sst.delete("carts.deleteById" ,mid);
		return rows;
	}
	
	public int delete(Cart cart) {
		int rows = sst.delete("carts.deleteByPno", cart);
		return rows;
	}

	public int update(Cart cart) {
		int rows = sst.update("carts.update", cart);
		return rows;
	}

	
	
	
}
