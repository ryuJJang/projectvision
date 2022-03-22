package dto;

public class AdminData {
	private String id;
	private String password;
	private int adminchk;
	private int black;
	
	public AdminData() {}
	
	public AdminData(String id, String password, int adminchk, int black) {
		super();
		this.id = id;
		this.password = password;
		this.adminchk = adminchk;
		this.black = black;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAdminchk() {
		return adminchk;
	}
	public void setAdminchk(int adminchk) {
		this.adminchk = adminchk;
	}
	public int getBlack() {
		return black;
	}
	public void setBlack(int black) {
		this.black = black;
	}
	@Override
	public String toString() {
		return "{\"id\":\"" + id + "\", \"password\":\"" + password + "\", \"adminchk\":\"" + adminchk
				+ "\", \"black\":\"" + black + "\"}";
	}
	
} //end class
