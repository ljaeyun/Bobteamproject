package bobproject.mycompany.bobapp.dto;

public class Product {
	private int pno;
	private String pname;
	private String pmainimg;
	private int pprice;
	private String pamount;
	private String psubimg1;
	private String psubimg2;
	private int pweight;
	private int ptime;
	private String psubtitle;
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPmainimg() {
		return pmainimg;
	}
	public void setPmainimg(String pmainimg) {
		this.pmainimg = pmainimg;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPamount() {
		return pamount;
	}
	public void setPamount(String pamount) {
		this.pamount = pamount;
	}
	public String getPsubimg1() {
		return psubimg1;
	}
	public void setPsubimg1(String psubimg1) {
		this.psubimg1 = psubimg1;
	}
	public String getPsubimg2() {
		return psubimg2;
	}
	public void setPsubimg2(String psubimg2) {
		this.psubimg2 = psubimg2;
	}
	public int getPweight() {
		return pweight;
	}
	public void setPweight(int pweight) {
		this.pweight = pweight;
	}
	public int getPtime() {
		return ptime;
	}
	public void setPtime(int ptime) {
		this.ptime = ptime;
	}
	public String getPsubtitle() {
		return psubtitle;
	}
	public void setPsubtitle(String psubtitle) {
		this.psubtitle = psubtitle;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPdifficulty() {
		return pdifficulty;
	}
	public void setPdifficulty(String pdifficulty) {
		this.pdifficulty = pdifficulty;
	}
	private String pcontent;
	private String pdifficulty;
}
