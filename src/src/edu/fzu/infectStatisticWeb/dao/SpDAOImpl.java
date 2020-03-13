package edu.fzu.infectStatisticWeb.dao;

import java.sql.Connection;
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
	
	
}
