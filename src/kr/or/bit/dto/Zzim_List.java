package kr.or.bit.dto;

public class Zzim_List {	//찜 목록

	private int contentid;
	public int getContentid() {
		return contentid;
	}
	public void setContentid(int contentid) {
		this.contentid = contentid;
	}
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Zzim_List [contentid=" + contentid + ", id=" + id + "]";
	}
			

	
}
