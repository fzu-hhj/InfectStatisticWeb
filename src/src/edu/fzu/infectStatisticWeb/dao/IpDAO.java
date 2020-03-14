package edu.fzu.infectStatisticWeb.dao;

import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Ip;

public interface IpDAO {

	public List<Ip> list();
	public Ip lists(String date);
}
