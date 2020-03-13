package edu.fzu.infectStatisticWeb.pojo;

public class PersonStatus {
	public static String[] PROVINCE = {
			"ȫ��","����","����","����","����","����",
			"����","�㶫","����","����","����","�ӱ�","����","������",
			"����","����","����","����","����","����","���ɹ�","����",
			"�ຣ","ɽ��","ɽ��","����","�Ϻ�","�Ĵ�","���","̨��",
			"����","�½�","���","����","�㽭"};
	
	private String date;
	private int[] Num ;
	
	public PersonStatus(String d , int[] n) {
		date = d;
		Num = n ;
	}
	
	public String getDate() {
		return date;
	}
	public int[] getNum() {
		return Num;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setNum(int[] n) {
		this.Num = n;
	}
}