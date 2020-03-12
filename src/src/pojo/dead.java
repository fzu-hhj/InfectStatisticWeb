package pojo;

public class dead {
	private String date;
	private int[] deadNum ;
	
	public dead(String d , int [] in) {
		date = d;
		deadNum = in ;
	}
	
	public String getDate() {
		return date;
	}
	public int[] getdeadNum() {
		return deadNum;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setdeadNum(int[] deadNum) {
		this.deadNum = deadNum;
	}
}
