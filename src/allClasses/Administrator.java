package allClasses;

 

public class Administrator {

	private  int id;
	private  String name;
	private  String password;
	private int level;
	private String scope;
	   
	public Administrator()
	{
		
	}
	public Administrator(int id,String name,String password ,int level,String scope)
	{
		this.id=id;
		this.name=name;
		this.password=password;
		this.level=level;
		this.scope=scope;
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
	
	
	
	
	
}
