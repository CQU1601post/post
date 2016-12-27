package allClasses;

public class Cost {

   
  
    private int costId;
    private int grade;
    private int money;
    
    public Cost() {
      
    }
    
    public Cost(int costId, int grade, int money) {
        super();
        this.costId = costId;
        this.grade = grade;
        this.money = money;
    }
    
    public int getCostId() {
        return costId;
    }
    public void setCostId(int costId) {
        this.costId = costId;
    }
    public int getGrade() {
        return grade;
    }
    public void setGrade(int grade) {
        this.grade = grade;
    }
    public int getMoney() {
        return money;
    }
    public void setMoney(int money) {
        this.money = money;
    }
    
    
    
}
