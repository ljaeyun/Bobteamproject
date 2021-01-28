package bobproject.mycompany.bobapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import bobproject.mycompany.bobapp.dto.Product;

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


}

