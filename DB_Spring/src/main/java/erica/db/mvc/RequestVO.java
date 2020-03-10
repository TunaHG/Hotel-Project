package erica.db.mvc;

import java.sql.Timestamp;

public class RequestVO {
	private int reqno;
	private int roomno;
	private String content;
	private String ing;
	private String memberid;
	private Timestamp reg_date;
	
	public int getReqno() {
		return reqno;
	}
	public void setReqno(int reqno) {
		this.reqno = reqno;
	}
	public int getRoomno() {
		return roomno;
	}
	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIng() {
		return ing;
	}
	public void setIng(String ing) {
		this.ing = ing;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
}
