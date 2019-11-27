package kr.or.bit.dto;

public class Campingjang { //캠핑장
	
	
	private String contentid;
	private String title;	//캠핑장명
	private String addr1;	//캠핑장주소
	private int tel;
	private String firstimage;	//캠핑장이미지
	public String getContentid() {
		return contentid;
	}
	public void setContentid(String contentid) {
		this.contentid = contentid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getFirstimage() {
		return firstimage;
	}
	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}
	@Override
	public String toString() {
		return "Campingjang [contentid=" + contentid + ", title=" + title + ", addr1=" + addr1 + ", tel=" + tel
				+ ", firstimage=" + firstimage + "]";
	}
	

	
	
	
	
	
	
	
	
}
