package bobproject.mycompany.bobapp.dto;

public class Order {
	private int ono;
	private int sid;
	private String sname;
	private int pno;
	private String mid;
	private String mname;
	private String mphone;
	private String oaddress;
	private int oprice;
	
	
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getOprice() {
		return oprice;
	}
	public void setOprice(int oprice) {
		this.oprice = oprice;
	}
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getOaddress() {
		return oaddress;
	}
	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}
	
}
