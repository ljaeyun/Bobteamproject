package bobproject.mycompany.bobapp.dto;

public class Orderitem {
	private int ono;
	private int pno;
	private int opqn;
	private String pname;
	private int pprice;
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getOpqn() {
		return opqn;
	}
	public void setOpqn(int opqn) {
		this.opqn = opqn;
	}
}
