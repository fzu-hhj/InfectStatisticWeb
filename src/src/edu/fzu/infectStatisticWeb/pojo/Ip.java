package edu.fzu.infectStatisticWeb.pojo;

public class Ip {
	private String date;
	private int[] ipNum ;
	
	public Ip(String d , int [] in) {
		date = d;
		ipNum = in ;
	}
	
	public String getDate() {
		return date;
	}
	public int[] getIpNum() {
		return ipNum;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setIpNum(int[] ipNum) {
		this.ipNum = ipNum;
	}
}
