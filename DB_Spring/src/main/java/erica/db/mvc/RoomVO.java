package erica.db.mvc;

public class RoomVO {
	private int roomno;
	private String type;
	private int person;
	private int tow;
	private int bed;
	private String amenity;
	
	public int getRoomno() {
		return roomno;
	}
	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPerson() {
		return person;
	}
	public void setPerson(int person) {
		this.person = person;
	}
	public int getTow() {
		return tow;
	}
	public void setTow(int tow) {
		this.tow = tow;
	}
	public int getBed() {
		return bed;
	}
	public void setBed(int bed) {
		this.bed = bed;
	}
	public String getAmenity() {
		return amenity;
	}
	public void setAmenity(String amenity) {
		this.amenity = amenity;
	}
	
}
