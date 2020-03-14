package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Dead;
import edu.fzu.infectStatisticWeb.util.DBUtil;

public class DeadDAOImpl implements DeadDAO {

	@Override
	public List<Dead> list(){
		DBUtil dbUtil = new DBUtil();
		List<Dead> deads = new ArrayList<Dead>();
		try {
			Connection conn = dbUtil.getConnection();
			Statement  stmt = conn.createStatement();
			String sql = "select * from dead";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int[] a = new int[35];
				for(int i = 0;i < 35 ; i++) {
					a[i] = rs.getInt(i+2);
				}
				Dead dead = new Dead(rs.getString("时间") , a);
				deads.add(dead);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return deads;
	}
	
	@Override
	public Dead lists(String date){
		DBUtil dbUtil = new DBUtil();
		try {
			String sql = "select * from dead where 时间=?";
			Connection conn = dbUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1,date);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("时间").equals(date)) {
					int[] a = new int[35];
					for(int i = 0;i < 35 ; i++) {
						a[i] = rs.getInt(i+2);
					}
					Dead dead = new Dead(rs.getString("时间") , a);
					return dead;
				}
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return null;
	}
	
	
}
