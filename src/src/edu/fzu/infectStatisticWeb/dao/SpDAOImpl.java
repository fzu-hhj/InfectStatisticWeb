package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Sp;
import edu.fzu.infectStatisticWeb.util.DBUtil;

public class SpDAOImpl implements SpDAO {
	@Override
	public List<Sp> list() {
		DBUtil dbUtil = new DBUtil();
		List<Sp> sps = new ArrayList<Sp>();
		try {
			Connection conn = dbUtil.getConnection();
			Statement  stmt = conn.createStatement();
			String sql = "select * from sp";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				//获取数据库中的每个省的可疑患者的人数
				int[] a = new int[35];
				for(int i = 0;i < 35 ; i++) {
					a[i] = rs.getInt(i+2);
				}
				Sp sp = new Sp(rs.getString("时间") , a);
				sps.add(sp);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return sps;
	}
	
	@Override
	public Sp lists(String date){
		DBUtil dbUtil = new DBUtil();
		try {
			String sql = "select * from sp where 时间=?";
			Connection conn = dbUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1,date);
			System.out.println("date:"+date);
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("时间").equals(date)) {
					int[] a = new int[35];
					for(int i = 0;i < 35 ; i++) {
						a[i] = rs.getInt(i+2);
					}
					Sp sp = new Sp(rs.getString("时间") , a);
					return sp;
				}
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return null;
	}
	
	
}
