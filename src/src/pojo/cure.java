package pojo;

public class cure {
	private String date;
	private int[] cureNum ;
	
	public cure(String d , int [] in) {
		date = d;
		cureNum = in ;
	}
	
	public String getDate() {
		return date;
	}
	public int[] getcureNum() {
		return cureNum;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setcureNum(int[] cureNum) {
		this.cureNum = cureNum;
	}
}
