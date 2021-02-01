package bobproject.mycompany.bobapp.Service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.ProductDao;
import bobproject.mycompany.bobapp.dto.Pager;
import bobproject.mycompany.bobapp.dto.Product;
import bobproject.mycompany.bobapp.dto.Search;

@Service
public class ProductService {
	private static final Logger logger 
	= LoggerFactory.getLogger(ProductService.class);
	
	@Resource
	private ProductDao productDao;
	
	public void saveProduct(Product product) {
		productDao.insert(product);
	}
	
	
	public List<Product> getProductList(Pager pager) {
		List<Product> list = productDao.selectByPage(pager);
		return list;
	}

	public Product getProduct(int pno) {
		Product product = productDao.selectByPk(pno);
		return product;
	
	}
	public int getTotalRows() {
		int totalRows = productDao.countAll();
		return totalRows;
	}


	public List<Product> getProductList(String keyword) {
		List<Product> list = productDao.selectAll(keyword);
		return list;
	}

}
