package bobproject.mycompany.bobapp.dto.seller;

import org.springframework.web.multipart.MultipartFile;

public class sellergoods {
		private String gname; //상품명
		private String gcost; //판매가
		private MultipartFile gimg; //상품이미지
		private String gsummary; //상품요약설명
		private String gdetail; //상품상세설명
		
		public String getGname() {
			return gname;
		}
		public void setGname(String gname) {
			this.gname = gname;
		}
		public String getGcost() {
			return gcost;
		}
		public void setGcost(String gcost) {
			this.gcost = gcost;
		}
		public MultipartFile getGimg() {
			return gimg;
		}
		public void setGimg(MultipartFile gimg) {
			this.gimg = gimg;
		}
		public String getGsummary() {
			return gsummary;
		}
		public void setGsummary(String gsummary) {
			this.gsummary = gsummary;
		}
		public String getGdetail() {
			return gdetail;
		}
		public void setGdetail(String gdetail) {
			this.gdetail = gdetail;
		}
		
		
		
}
