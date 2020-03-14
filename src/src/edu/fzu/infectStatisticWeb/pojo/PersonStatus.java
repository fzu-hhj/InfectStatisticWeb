package edu.fzu.infectStatisticWeb.pojo;



public class PersonStatus {
	public static String[] PROVINCE = {
			"全国","安徽","澳门","北京","重庆","福建",
			"甘肃","广东","广西","贵州","海南","河北","河南","黑龙江",
			"湖北","湖南","江西","吉林","江苏","辽宁","内蒙古","宁夏",
			"青海","山西","山东","陕西","上海","四川","天津","台湾",
			"西藏","新疆","香港","云南","浙江"};
	
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
	//根据省名获得数据
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
