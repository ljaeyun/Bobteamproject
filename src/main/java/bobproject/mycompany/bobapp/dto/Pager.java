package bobproject.mycompany.bobapp.dto;
//페이지를 계산하여 각종 정보를 가져오는 객체
public class Pager {
	private int totalRows;		//전체 행수
	private int totalPageNo;	//전체 페이지 수
	private int totalGroupNo;	//전체 그룹 수
	private int startPageNo;	//그룹의 시작 페이스 번호
	private int endPageNo;		//그룹의 끝 페이지 번호
	private int pageNo;			//현재 페이지 번호
	private int pagesPerGroup;	//그룹당 페이지 수
	private int groupNo;		//현재 그룹 번호
	private int rowsPerPage;	//페이지당 행 수 
	private int startRowNo;		//페이지의 시작 행 번호
	private int endRowNo;		//페이지의 마지막 행 번호

	public Pager(int rowsPerPage, int pagesPerGroup, int totalRows, int pageNo) {
		this.rowsPerPage = rowsPerPage;
		this.pagesPerGroup = pagesPerGroup;
		this.totalRows = totalRows;
		this.pageNo = pageNo;

		totalPageNo = totalRows / rowsPerPage;
		if(totalRows % rowsPerPage != 0) totalPageNo++;
		
		/* totalPageNo = (int)Math.ceil((double)totalRows/rowsPerPage); */
		
		totalGroupNo = totalPageNo / pagesPerGroup;
		if(totalPageNo % pagesPerGroup != 0) totalGroupNo++;
		
		groupNo = (pageNo - 1) / pagesPerGroup + 1;
		
		startPageNo = (groupNo-1) * pagesPerGroup + 1;
		
		endPageNo = startPageNo + pagesPerGroup - 1;
		if(groupNo == totalGroupNo) endPageNo = totalPageNo;
		
		startRowNo = (pageNo - 1) * rowsPerPage + 1;
		endRowNo = pageNo * rowsPerPage;
		//rownum이라는 자동적으로 숫자를 만져주는 함수를 가지고 시작함
	}

	public int getTotalRows() {
		return totalRows;
	}

	public int getTotalPageNo() {
		return totalPageNo;
	}

	public int getTotalGroupNo() {
		return totalGroupNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public int getPageNo() {
		return pageNo;
	}

	public int getPagesPerGroup() {
		return pagesPerGroup;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public int getRowsPerPage() {
		return rowsPerPage;
	}
	
	public int getStartRowNo() {
		return startRowNo;
	}

	public int getEndRowNo() {
		return endRowNo;
	}	
}







