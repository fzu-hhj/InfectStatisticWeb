package edu.fzu.infectStatisticWeb.pojo;

public class Cure {
	private String date;
	private int[] cureNum ;
	
	public Cure(String d , int [] in) {
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
