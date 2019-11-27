package kr.or.bit.dto;

public class Board_List {	//게시판종류
	private int bcode;
	private String bname;
	private int btype_num;
	private int ccode;

	
	public int getBcode() {
		return bcode;
	}
	public void setBcode(int bcode) {
		this.bcode = bcode;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public int getBtype_num() {
		return btype_num;
	}
	public void setBtype_num(int btype_num) {
		this.btype_num = btype_num;
	}
	public int getCcode() {
		return ccode;
	}
	public void setCcode(int ccode) {
		this.ccode = ccode;
	}

	@Override
	public String toString() {
		return "Board_List [bcode=" + bcode + ", bname=" + bname + ", btype_num=" + btype_num + ", ccode=" + ccode
				+ "]";
	}

	
}
