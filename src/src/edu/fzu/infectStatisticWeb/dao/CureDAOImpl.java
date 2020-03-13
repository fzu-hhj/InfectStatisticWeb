package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
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
				Cure cure = new Cure(rs.getString("Ê±¼ä") , a);
				cures.add(cure);
			}
 		}catch (Exception e) {
			e.printStackTrace();
 		}
		return cures;
	}
	
	
}
