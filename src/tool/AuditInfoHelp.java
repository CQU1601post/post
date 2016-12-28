package tool;

public class AuditInfoHelp {

    private String audit ;
    private String adType;
    private String pasteName;
    private String adTime;
    
    public AuditInfoHelp() {
       
    }
    
    public AuditInfoHelp(String audit, String adType, String pasteName,
            String adTime) {
        super();
        this.audit = audit;
        this.adType = adType;
        this.pasteName = pasteName;
        this.adTime = adTime;
    }
    
    
    public String getAudit() {
        return audit;
    }
    public void setAudit(String audit) {
        this.audit = audit;
    }
    public String getAdType() {
        return adType;
    }
    public void setAdType(String adType) {
        this.adType = adType;
    }
    public String getPasteName() {
        return pasteName;
    }
    public void setPasteName(String pasteName) {
        this.pasteName = pasteName;
    }
    public String getAdTime() {
        return adTime;
    }
    public void setAdTime(String adTime) {
        this.adTime = adTime;
    }
    
    
}
