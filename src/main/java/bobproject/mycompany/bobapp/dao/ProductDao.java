package bobproject.mycompany.bobapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Resource
public class ProductDao {
	private static final Logger logger 
	= LoggerFactory.getLogger(ProductDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
}
