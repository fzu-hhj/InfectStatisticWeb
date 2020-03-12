package edu.fzu.infectStatisticWeb.pojo;

public class sp {
	private String date;
	private int[] spNum ;
	
	public sp(String d , int [] in) {
		date = d;
		spNum = in ;
	}
	
	public String getDate() {
		return date;
	}
	public int[] getIpNum() {
		return spNum;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setIpNum(int[] spNum) {
		this.spNum = spNum;
	}
}
