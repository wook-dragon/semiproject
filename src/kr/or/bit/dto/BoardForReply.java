package kr.or.bit.dto;

public class BoardForReply extends Board{	//댓글게시판
	

	private int replyidx;
	private int idx;
	private String replycontent;
	private String replyid;
	private String replydate;
	private int cocode;
	public int getReplyidx() {
		return replyidx;
	}
	public void setReplyidx(int replyidx) {
		this.replyidx = replyidx;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getReplycontent() {
		return replycontent;
	}
	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}
	public String getReplyid() {
		return replyid;
	}
	public void setReplyid(String replyid) {
		this.replyid = replyid;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	public int getCocode() {
		return cocode;
	}
	public void setCocode(int cocode) {
		this.cocode = cocode;
	}
	@Override
	public String toString() {
		return "BoardForReply [replyidx=" + replyidx + ", idx=" + idx + ", replycontent=" + replycontent + ", replyid="
				+ replyid + ", replydate=" + replydate + ", cocode=" + cocode + "]";
	}
	
	
	




	
	
}
