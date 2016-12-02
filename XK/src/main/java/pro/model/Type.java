package pro.model;

public class Type {
    private Integer tId;

    private String tName;
    
    private Integer tSum;
    
    public Integer gettSum(){
    	return tSum;
    }

    public void settSum(Integer tSum){
    	this.tSum = tSum;
    }
    
    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }
}