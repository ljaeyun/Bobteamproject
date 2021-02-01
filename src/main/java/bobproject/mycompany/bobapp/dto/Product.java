package bobproject.mycompany.bobapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private int pno;
	private String pname;
	private String pamount;
	private String pcontent;
	private String psubtitle;
	private String pdifficulty;

	private String pimgorigin1;
	private String pimgorigin2;
	private String pimgorigin3;
	
	private String pimgsave1;
	private String pimgsave2;
	private String pimgsave3;
	
	private int pprice;
	private int pweight;
	private int ptime;
	private String pimgtype1;
	private String pimgtype2;
	private String pimgtype3;
	
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
	public String getPimgorigin1() {
		return pimgorigin1;
	}
	public void setPimgorigin1(String pimgorigin1) {
		this.pimgorigin1 = pimgorigin1;
	}
	public String getPimgorigin2() {
		return pimgorigin2;
	}
	public void setPimgorigin2(String pimgorigin2) {
		this.pimgorigin2 = pimgorigin2;
	}
	public String getPimgorigin3() {
		return pimgorigin3;
	}
	public void setPimgorigin3(String pimgorigin3) {
		this.pimgorigin3 = pimgorigin3;
	}
	public String getPimgsave1() {
		return pimgsave1;
	}
	public void setPimgsave1(String pimgsave1) {
		this.pimgsave1 = pimgsave1;
	}
	public String getPimgsave2() {
		return pimgsave2;
	}
	public void setPimgsave2(String pimgsave2) {
		this.pimgsave2 = pimgsave2;
	}
	public String getPimgsave3() {
		return pimgsave3;
	}
	public void setPimgsave3(String pimgsave3) {
		this.pimgsave3 = pimgsave3;
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
	public String getPimgtype1() {
		return pimgtype1;
	}
	public void setPimgtype1(String pimgtype1) {
		this.pimgtype1 = pimgtype1;
	}
	public String getPimgtype2() {
		return pimgtype2;
	}
	public void setPimgtype2(String pimgtype2) {
		this.pimgtype2 = pimgtype2;
	}
	public String getPimgtype3() {
		return pimgtype3;
	}
	public void setPimgtype3(String pimgtype3) {
		this.pimgtype3 = pimgtype3;
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