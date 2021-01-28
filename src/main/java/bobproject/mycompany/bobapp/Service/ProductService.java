package bobproject.mycompany.bobapp.Service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.ProductDao;
import bobproject.mycompany.bobapp.dto.Product;

@Service
public class ProductService {
	private static final Logger logger 
	= LoggerFactory.getLogger(ProductService.class);
	
	@Resource
	private ProductDao productDao;
	
	public void saveProduct(Product product) {
		productDao.insert(product);
	}

	public Product getProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
