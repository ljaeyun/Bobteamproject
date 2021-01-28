package bobproject.mycompany.bobapp.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.CSDirectqDao;
import bobproject.mycompany.bobapp.dto.CSDirectq;

@Service
public class CSDirectqService {

	@Resource
	private CSDirectqDao csdirectqDao;
	
	public void saveDirectq(CSDirectq directq) {
		csdirectqDao.insert(directq);
	}
	
	public List<CSDirectq> getDirectqList() {
		List<CSDirectq> list = csdirectqDao.selectAll();
		return list;
	}
	
	public CSDirectq getDirectq(int qno) {
		CSDirectq directq = csdirectqDao.selectByPk(qno);
		return directq;
	}
}
