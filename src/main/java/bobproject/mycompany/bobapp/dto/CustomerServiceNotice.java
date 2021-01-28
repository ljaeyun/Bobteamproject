package bobproject.mycompany.bobapp.dto;

import java.util.Date;

public class CustomerServiceNotice {

	private int nno;
	private Date ndate;
	private	String ntitle;
	private String ncontent;
	private String account_uid;
	
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public Date getNdate() {
		return ndate;
	}
	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public String getAccount_uid() {
		return account_uid;
	}
	public void setAccount_uid(String account_uid) {
		this.account_uid = account_uid;
	}

	
	
	
}
