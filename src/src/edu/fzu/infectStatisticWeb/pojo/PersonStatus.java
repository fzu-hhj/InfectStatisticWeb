package edu.fzu.infectStatisticWeb.pojo;



public class PersonStatus {
	public static String[] PROVINCE = {
			"ȫ��","����","����","����","����","����",
			"����","�㶫","����","����","����","�ӱ�","����","������",
			"����","����","����","����","����","����","���ɹ�","����",
			"�ຣ","ɽ��","ɽ��","����","�Ϻ�","�Ĵ�","���","̨��",
			"����","�½�","���","����","�㽭"};
	
	private String date;
	private int[] num ;
	
	public PersonStatus(String d , int[] n) {
		date = d;
		num = n ;
	}
	
	public String getDate() {
		return date;
	}
	public int[] getNum() {
		return num;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setNum(int[] n) {
		this.num = n;
	}
	
	public int getNum(int i) {
		return num[i];
	}
	
	public int getProNum(String name) {
		for(int i = 0;i < PROVINCE.length;i++)
			if(name.equals(PROVINCE[i]))
				return i;
		return -1;
	}
	//����ʡ���������
	public int getNum(String province) {
		/*for(int i = 0;i < PROVINCE.length;i++) {
			if(province.equals(PROVINCE[i])) {
				return num[i];
			}
		}
		return num[0];*/
		return num[getProNum(province)];
	}
}
