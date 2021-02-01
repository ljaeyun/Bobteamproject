package bobproject.mycompany.bobapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.Pager;
import bobproject.mycompany.bobapp.dto.Product;
import bobproject.mycompany.bobapp.dto.Search;

@Repository
public class ProductDao {
	private static final Logger logger 
	= LoggerFactory.getLogger(ProductDao.class);
	
	@Resource
	private SqlSessionTemplate sst;

	public int insert(Product product) {
		int rows = sst.insert("products.insert", product);
		return rows;
	}

	public List<Product> selectAll() {
		List<Product> list = sst.selectList("products.selectAll");
		return list;
	}

	public Product selectByPk(int pno) {
		Product product = sst.selectOne("products.selectByPk", pno);
		return product;
	}

	public int countAll() {
		int count = sst.selectOne("products.countAll");
		return count;
	}

	public List<Product> selectByPage(Pager pager) {
		List<Product> list = sst.selectList("products.selectByPage", pager);
		return list;
	}

	public List<Product> selectAll(String keyword) {
		List<Product> list = sst.selectList("products.selectSearch", "%"+keyword+"%");
		return list;
	}





}

