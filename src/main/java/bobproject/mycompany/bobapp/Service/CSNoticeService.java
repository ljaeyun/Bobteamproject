package bobproject.mycompany.bobapp.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bobproject.mycompany.bobapp.dao.CSNoticeDao;
import bobproject.mycompany.bobapp.dto.CSDirectq;
import bobproject.mycompany.bobapp.dto.CustomerServiceNotice;


@Service
public class CSNoticeService {

	@Resource
	private CSNoticeDao csnoticeDao;
	
	public List<CustomerServiceNotice> getNoticeList() {
		List<CustomerServiceNotice> list = csnoticeDao.selectAll();
		return list;
	}
	
	public CustomerServiceNotice getNotice(int nno) {
		CustomerServiceNotice noticeread = csnoticeDao.selectByPk(nno);
		return noticeread;
	}

}
