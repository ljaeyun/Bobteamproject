package bobproject.mycompany.bobapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;

public class OrderDao {
	@Resource
	private SqlSessionTemplate sst;
	
}
