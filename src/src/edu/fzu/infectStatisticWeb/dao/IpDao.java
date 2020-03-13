package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Ip;
import edu.fzu.infectStatisticWeb.util.DBUtil;

public class IpDao {

	public List<Ip> list(){
		DBUtil dbUtil = new DBUtil();
		List<Ip> ips = new ArrayList<Ip>();
		try {
			Connection conn = dbUtil.getConnection();
			Statement  stmt = conn.createStatement();
			String sql = "select * from ip";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int[] a = new int[35];
				for(int i = 0;i < 35 ; i++) {
					a[i] = rs.getInt(i+2);
					//System.out.println(rs.getInt(i+2) + ":" + a[i]);
				}
				Ip ip = new Ip(rs.getString("Ê±¼ä") , a);
				System.out.print(ip.getIpNum()[0] + " ");
				ips.add(ip);
				System.out.println(ips.get(0).getIpNum()[0]);
			}
			for(Ip ip2 : ips) {
				System.out.println("+" + ip2.getIpNum()[0]);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return ips;
	}
	
	
}
