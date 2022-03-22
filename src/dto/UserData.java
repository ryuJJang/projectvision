package dto;

public class UserData {
	
	private int useridx;
	private String userid;
	private String password;
	private String name;
	private int gender;
	private String email;
	private String tel;
	private String address;
	private String birthday;
	private String black;
	private String code;
	
	public UserData() {}

	public UserData(int useridx, String userid, String password, String name, int gender, String email, String tel,
			String address, String birthday, String black, String code) {
		super();
		this.useridx = useridx;
		this.userid = userid;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.tel = tel;
		this.address = address;
		this.birthday = birthday;
		this.black = black;
		this.code = code;
	}

	public int getUseridx() {
		return useridx;
	}

	public void setUseridx(int useridx) {
		this.useridx = useridx;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getBlack() {
		return black;
	}

	public void setBlack(String black) {
		this.black = black;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "{\"useridx\":\"" + useridx + "\", \"userid\":\"" + userid + "\", \"password\":\"" + password
				+ "\", \"name\":\"" + name + "\", \"gender\":\"" + gender + "\", \"email\":\"" + email
				+ "\", \"tel\":\"" + tel + "\", \"address\":\"" + address + "\", \"birthday\":\"" + birthday
				+ "\", \"black\":\"" + black + "\", \"code\":\"" + code + "\"}";
	}
	
	
} //end class
