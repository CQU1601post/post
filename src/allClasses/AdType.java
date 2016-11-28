package allClasses;

public class AdType {
	private int adTypeId;
	private String adTypeName;
	private int groupId;
	
	public AdType(int adTypeId, String adTypeName, int groupId) {     
        this.adTypeId = adTypeId;
        this.adTypeName = adTypeName;
        this.groupId = groupId;
    }
    public AdType() {
		super(); 
	}
	
	public int getAdTypeId() {
		return adTypeId;
		
	}
	public void setAdTypeId(int adTypeId) {
		this.adTypeId = adTypeId;
	}
	public String getAdTypeName() {
		return adTypeName;
	}
	public void setAdTypeName(String adTypeName) {
		this.adTypeName = adTypeName;
	}
    public int getGroupId() {
        return groupId;
    }
    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }
    
	
}
