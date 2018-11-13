package cn.train.entity;

public class Passenger {
    private String userName;
    private String password;
    private String repwd;
    private String name;
    private String cardType;
    private String cardNo;
    private String email;
    private String phone;
    private int passengerType;
    
	public Passenger() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Passenger(String userName, String password, String repwd, String name, String cardType, String cardNo,
			String email, String phone, int passengerType) {
		super();
		this.userName = userName;
		this.password = password;
		this.repwd = repwd;
		this.name = name;
		this.cardType = cardType;
		this.cardNo = cardNo;
		this.email = email;
		this.phone = phone;
		this.passengerType = passengerType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepwd() {
		return repwd;
	}
	public void setRepwd(String repwd) {
		this.repwd = repwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPassengerType() {
		return passengerType;
	}
	public void setPassengerType(int passengerType) {
		this.passengerType = passengerType;
	}
	@Override
	public String toString() {
		return "Passenger [userName=" + userName + ", password=" + password + ", repwd=" + repwd + ", name=" + name
				+ ", cardType=" + cardType + ", cardNo=" + cardNo + ", email=" + email + ", phone=" + phone
				+ ", passengerType=" + passengerType + "]";
	}
	
}
