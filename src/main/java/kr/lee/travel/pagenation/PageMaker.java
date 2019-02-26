package kr.lee.travel.pagenation;

// 페이지 번호 설정 클래스
public class PageMaker {
	private Criteria criteria; // 현재 페이지 정보
	private int totalCount; // 전체 게시글 수 
	private int startPage, endPage; // 한 블록의 시작 페이지와 끝 페이지 번호
	private boolean prev,next; // 이전블록과 다음블록의 유무
	private int displayPageNum; // 한 블록에서 보여줄 페이지의 갯수
	
	// 블록페이지 설정 부분
	public void calcData() {
		endPage = (int)Math.ceil(criteria.getPage()/(double)displayPageNum)*displayPageNum;
		
		startPage = endPage - displayPageNum + 1;
		
		int tmpEndPage = (int)Math.ceil(totalCount/(double)criteria.getPerPagenum());
		if(tmpEndPage < endPage) {
			endPage = tmpEndPage;
		}

		prev = startPage == 1 ? false : true;

		next = endPage*criteria.getPerPagenum() >= totalCount ? false : true; 
		
	}

	public Criteria getCriteria() {
		return criteria;
	}

	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	@Override
	public String toString() {
		return "PageMaker [criteria=" + criteria + ", totalCount=" + totalCount + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum
				+ "]";
	}
}
