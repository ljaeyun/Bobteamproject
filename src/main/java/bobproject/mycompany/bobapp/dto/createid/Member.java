package bobproject.mycompany.bobapp.dto.createid;

import java.util.Date;

public class Member {
	private String mid;
	private String mpw;
	private String mname;
	private String memail;
	private String mphone;
	private String mgender;
	//private Date mbirth;
	private String mbirth;
	private String maddress;
	private String mgrade;
	
	private int mpurchasecount;
	private int mpruchasesum;
	private int msavemoney;
	
	public int getMpurchasecount() {
		return mpurchasecount;
	}
	public void setMpurchasecount(int mpurchasecount) {
		this.mpurchasecount = mpurchasecount;
	}
	public int getMpruchasesum() {
		return mpruchasesum;
	}
	public void setMpruchasesum(int mpruchasesum) {
		this.mpruchasesum = mpruchasesum;
	}
	public int getMsavemoney() {
		return msavemoney;
	}
	public void setMsavemoney(int msavemoney) {
		this.msavemoney = msavemoney;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMgender() {
		return mgender;
	}
	public void setMgender(String mgender) {
		this.mgender = mgender;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public String getMaddress() {
		return maddress;
	}
	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}
	public String getMgrade() {
		return mgrade;
	}
	public void setMgrade(String mgrade) {
		this.mgrade = mgrade;
	}
	
	
	
}
