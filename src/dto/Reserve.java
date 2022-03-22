package dto;

public class Reserve {
	private int reserveidx;
	private String username;
	private String campname;
	private String room;
	private String checkin;
	private String checkout;
	private int person;
	private int payidx;
	private int kid;
	private int roomno;
	
	public Reserve() {}

	public Reserve(int reserveidx, String username, String campname, String room, String checkin, String checkout,
			int person, int payidx, int kid, int roomno) {
		super();
		this.reserveidx = reserveidx;
		this.username = username;
		this.campname = campname;
		this.room = room;
		this.checkin = checkin;
		this.checkout = checkout;
		this.person = person;
		this.payidx = payidx;
		this.kid = kid;
		this.roomno = roomno;
	}

	public int getReserveidx() {
		return reserveidx;
	}

	public void setReserveidx(int reserveidx) {
		this.reserveidx = reserveidx;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCampname() {
		return campname;
	}

	public void setCampname(String campname) {
		this.campname = campname;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public int getPerson() {
		return person;
	}

	public void setPerson(int person) {
		this.person = person;
	}

	public int getPayidx() {
		return payidx;
	}

	public void setPayidx(int payidx) {
		this.payidx = payidx;
	}

	public int getKid() {
		return kid;
	}

	public void setKid(int kid) {
		this.kid = kid;
	}

	public int getRoomno() {
		return roomno;
	}

	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}

	@Override
	public String toString() {
		return "{\"reserveidx\":\"" + reserveidx + "\", \"username\":\"" + username + "\", \"campname\":\"" + campname
				+ "\", \"room\":\"" + room + "\", \"checkin\":\"" + checkin + "\", \"checkout\":\"" + checkout
				+ "\", \"person\":\"" + person + "\", \"payidx\":\"" + payidx + "\", \"kid\":\"" + kid
				+ "\", \"roomno\":\"" + roomno + "\"}";
	}
	
	
} //end class
