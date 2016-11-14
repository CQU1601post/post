package allClasses;

public class AdType {
	private int adTypeId;
	private String adTypeName;
	private int unitTypeId;
	public AdType(int adTypeId, String adTypeName, int unitTypeId) {     
        this.adTypeId = adTypeId;
        this.adTypeName = adTypeName;
        this.unitTypeId = unitTypeId;
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
    public int getUnitTypeId() {
        return unitTypeId;
    }
    public void setUnitTypeId(int unitTypeId) {
        this.unitTypeId = unitTypeId;
    }
	
}
