package allClasses;

import java.sql.Timestamp;

 

public class Administrator {

	private  int id;
	private  String name;
	private  String password;
	private int level;
	private String scope;
	private String email;
	private String verification;
	private Timestamp verificationDate;
	private int emailIsActive;
	public Administrator()
	{
		
	}
	public Administrator(int id,String name,String password ,int level,String scope,String email,String verifivation,Timestamp verificationDate,int emailIsActive)
	{
		this.id=id;
		this.name=name;
		this.password=password;
		this.level=level;
		this.scope=scope;
		this.email=email;
		this.verification=verifivation;
		this.emailIsActive=emailIsActive;
		this.verificationDate=verificationDate;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setAdministratorName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    public int getLevel() {
        return level;
    }
    public void setLevel(int level) {
        this.level = level;
    }
    public String getScope() {
        return scope;
    }
    public void setScope(String scope) {
        this.scope = scope;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getVerification() {
        return verification;
    }
    public void setVerification(String verification) {
        this.verification = verification;
    }
    public Timestamp getVerificationDate() {
        return verificationDate;
    }
    public void setVerificationDate(Timestamp verificationDate) {
        this.verificationDate = verificationDate;
    }
    public int getEmailIsActive() {
        return emailIsActive;
    }
    public void setEmailIsActive(int emailIsActive) {
        this.emailIsActive = emailIsActive;
    }
	
	
	
	
	
}
