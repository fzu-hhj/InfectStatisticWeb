package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Ip;
import edu.fzu.infectStatisticWeb.util.DBUtil;

public class IpDAOImpl implements IpDAO {

	@Override
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
				}
				Ip ip = new Ip(rs.getString("ʱ��") , a);
				ips.add(ip);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return ips;
	}
	
	@Override
	public Ip lists(String date){
		DBUtil dbUtil = new DBUtil();
		
		
		try {
			String sql = "select * from ip where ʱ��=?";
			Connection conn = dbUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1,date);
			System.out.println("date:"+date);
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("ʱ��").equals(date)) {
					int[] a = new int[35];
					for(int i = 0;i < 35 ; i++) {
						a[i] = rs.getInt(i+2);
					}
					Ip ip = new Ip(rs.getString("ʱ��") , a);
					return ip;
				}
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return null;
	}
}
