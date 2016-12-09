package allClasses;

import java.sql.Date;
import java.sql.Timestamp;

public class VisitorLog {
     private  int visitorid;
     private  String visitorip;
     private  String visitorpostname;
     private int postId;
     private Timestamp time;
	public int getVisitorid() {
		return visitorid;
	}
	public void setVisitorid(int visitorid) {
		this.visitorid = visitorid;
	}
	public String getVisitorip() {
		return visitorip;
	}
	public void setVisitorip(String visitorip) {
		this.visitorip = visitorip;
	}
	public String getVisitorpostname() {
		return visitorpostname;
	}
	public void setVisitorpostname(String visitorpostname) {
		this.visitorpostname = visitorpostname;
	}
    public int getPostId() {
        return postId;
    }
    public void setPostId(int postId) {
        this.postId = postId;
    }
    public Timestamp getTime() {
        return time;
    }
    public void setTime(Timestamp time) {
        this.time = time;
    }
  
     
	
	
	
}
