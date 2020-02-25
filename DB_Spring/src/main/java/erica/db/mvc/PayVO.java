package erica.db.mvc;

import java.sql.Timestamp;

public class PayVO {
	private int payno;
	private String phone;
	private String item;
	private int price;
	private int memberno;
	private Timestamp reg_date;
	
	public int getPayno() {
		return payno;
	}
	public void setPayno(int payno) {
		this.payno = payno;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
}
