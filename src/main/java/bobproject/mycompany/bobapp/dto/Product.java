package bobproject.mycompany.bobapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private int pno;
	private String pname;
	private String pamount;
	private String pcontent;
	private String psubtitle;
	private String pdifficulty;

	private String pmainimg;
	private String psubimg1;
	private String psubimg2;
	
	private int pprice;
	private int pweight;
	private int ptime;
	private String pmainimgtype;
	private String psubimg1type;
	private String psubimg2type;
	
	private MultipartFile pattach1;
	private MultipartFile pattach2;
	private MultipartFile pattach3;
	
	
	
	
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
	public String getPamount() {
		return pamount;
	}
	public void setPamount(String pamount) {
		this.pamount = pamount;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPsubtitle() {
		return psubtitle;
	}
	public void setPsubtitle(String psubtitle) {
		this.psubtitle = psubtitle;
	}
	public String getPdifficulty() {
		return pdifficulty;
	}
	public void setPdifficulty(String pdifficulty) {
		this.pdifficulty = pdifficulty;
	}
	public String getPmainimg() {
		return pmainimg;
	}
	public void setPmainimg(String pmainimg) {
		this.pmainimg = pmainimg;
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
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
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
	public String getPmainimgtype() {
		return pmainimgtype;
	}
	public void setPmainimgtype(String pmainimgtype) {
		this.pmainimgtype = pmainimgtype;
	}
	public String getPsubimg1type() {
		return psubimg1type;
	}
	public void setPsubimg1type(String psubimg1type) {
		this.psubimg1type = psubimg1type;
	}
	public String getPsubimg2type() {
		return psubimg2type;
	}
	public void setPsubimg2type(String psubimg2type) {
		this.psubimg2type = psubimg2type;
	}
	public MultipartFile getPattach1() {
		return pattach1;
	}
	public void setPattach1(MultipartFile pattach1) {
		this.pattach1 = pattach1;
	}
	public MultipartFile getPattach2() {
		return pattach2;
	}
	public void setPattach2(MultipartFile pattach2) {
		this.pattach2 = pattach2;
	}
	public MultipartFile getPattach3() {
		return pattach3;
	}
	public void setPattach3(MultipartFile pattach3) {
		this.pattach3 = pattach3;
	}
	
	
}
