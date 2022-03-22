package dto;

public class Camp {
	private int campidx;
	private String campname;
	private String campaddr;
	private String room;
	private String campimg;
	private int roomcnt;
	private int payidx;
	private int roomno;
	private String chkin;
	private String chkout;
	
	public Camp () {}

	public Camp(int campidx, String campname, String campaddr, String room, String campimg, int roomcnt, int payidx,
			int roomno, String chkin, String chkout) {
		super();
		this.campidx = campidx;
		this.campname = campname;
		this.campaddr = campaddr;
		this.room = room;
		this.campimg = campimg;
		this.roomcnt = roomcnt;
		this.payidx = payidx;
		this.roomno = roomno;
		this.chkin = chkin;
		this.chkout = chkout;
	}

	public int getCampidx() {
		return campidx;
	}

	public void setCampidx(int campidx) {
		this.campidx = campidx;
	}

	public String getCampname() {
		return campname;
	}

	public void setCampname(String campname) {
		this.campname = campname;
	}

	public String getCampaddr() {
		return campaddr;
	}

	public void setCampaddr(String campaddr) {
		this.campaddr = campaddr;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getCampimg() {
		return campimg;
	}

	public void setCampimg(String campimg) {
		this.campimg = campimg;
	}

	public int getRoomcnt() {
		return roomcnt;
	}

	public void setRoomcnt(int roomcnt) {
		this.roomcnt = roomcnt;
	}

	public int getPayidx() {
		return payidx;
	}

	public void setPayidx(int payidx) {
		this.payidx = payidx;
	}

	public int getRoomno() {
		return roomno;
	}

	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}

	public String getChkin() {
		return chkin;
	}

	public void setChkin(String chkin) {
		this.chkin = chkin;
	}

	public String getChkout() {
		return chkout;
	}

	public void setChkout(String chkout) {
		this.chkout = chkout;
	}

	@Override
	public String toString() {
		return "Camp [campidx=" + campidx + ", campname=" + campname + ", campaddr=" + campaddr + ", room=" + room
				+ ", campimg=" + campimg + ", roomcnt=" + roomcnt + ", payidx=" + payidx + ", roomno=" + roomno
				+ ", chkin=" + chkin + ", chkout=" + chkout + "]";
	}

	
} //end class
