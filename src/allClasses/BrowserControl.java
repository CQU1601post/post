package allClasses;

public class BrowserControl {

    private int id;
    private int row;
  
    
    public BrowserControl() {
    }
    
    public BrowserControl(int row) {
        super();
        this.row = row;
     
    }
    public BrowserControl(int id, int row ){
        super();
        this.id = id;
        this.row = row;
   
    }
    
  
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRow() {
        return row;
    }
    public void setRow(int row) {
        this.row = row;
    }
    
}
