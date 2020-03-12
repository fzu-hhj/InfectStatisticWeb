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
				int [] a = {rs.getInt("全国")};
				Ip ip = new Ip(rs.getString("时间") , a);
				ips.add(ip);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return ips;
	}
	
	
}
