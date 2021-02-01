package bobproject.mycompany.bobapp.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.CSFaqDao;
import bobproject.mycompany.bobapp.dto.CSFaq;

@Service
public class CSFaqService {

	@Resource
	private CSFaqDao csfaqDao;
	
	
	public List<CSFaq> getFaqcatList() {
		List<CSFaq> list = csfaqDao.selectAll();
		return list;
	}
	
	/*
	 * public List<CSDirectq> getValidatedList(String mid) { List<CSDirectq> list =
	 * csdirectqDao.selectById(mid); return list; }
	 */
	
}	
