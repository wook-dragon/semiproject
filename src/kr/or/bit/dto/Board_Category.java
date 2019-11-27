package kr.or.bit.dto;

public class Board_Category { //게시판 카테고리
	private int ccode;
	private String cname;

	public int getCcode() {
		return ccode;
	}
	public void setCcode(int ccode) {
		this.ccode = ccode;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Override
	public String toString() {
		return "Board_Category [ccode=" + ccode + ", cname=" + cname + "]";
	}
	
	
}
