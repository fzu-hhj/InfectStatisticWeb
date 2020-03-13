package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
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
				Dead dead = new Dead(rs.getString("Ê±¼ä") , a);
				deads.add(dead);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return deads;
	}
	
	
}
