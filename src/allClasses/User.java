package allClasses;

import java.sql.Timestamp;

public class User {
	private int userId;
	private String userName;
	private String password;
	private String email;
	private String phone;
	private int userType;
	private String verificationCode;
	private Timestamp verificationDate;
	
	
	public User() {
		
	}
	public User(int userId, String userName, String password, String email,
            String phone, int userType,String verificationCode,Timestamp verificationDate) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.userType = userType;
        this.verificationCode=verificationCode;
        this.verificationDate=verificationDate;
    }
	
	public User(int userId, String userName, String password, String email,
			String phone, int userType) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.userType = userType;
	}
	public User(String userName, String password, String email,
			String phone, int userType) {
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.userType = userType;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
    public String getVerificationCode() {
        return verificationCode;
    }
    public void setVerificationCode(String verificationCode) {
        this.verificationCode = verificationCode;
    }
    public Timestamp getVerificationDate() {
        return verificationDate;
    }
    public void setVerificationDate(Timestamp verificationDate) {
        this.verificationDate = verificationDate;
    }
	
}
