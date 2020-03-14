package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Cure;
import edu.fzu.infectStatisticWeb.util.DBUtil;

public class CureDAOImpl implements CureDAO {

	@Override
	public List<Cure> list(){
		DBUtil dbUtil = new DBUtil();
		List<Cure> cures = new ArrayList<Cure>();
		try {
			Connection conn = dbUtil.getConnection();
			Statement  stmt = conn.createStatement();
			String sql = "select * from cure";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int[] a = new int[35];
				for(int i = 0;i < 35 ; i++) {
					a[i] = rs.getInt(i+2);
				}
				Cure cure = new Cure(rs.getString("时间") , a);
				cures.add(cure);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return cures;
	}
	
	@Override
	public Cure lists(String date){
		DBUtil dbUtil = new DBUtil();
		try {
			String sql = "select * from cure where 时间=?";
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
					Cure cure = new Cure(rs.getString("时间") , a);
					return cure;
				}
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return null;
	}
	
}
