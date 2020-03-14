package edu.fzu.infectStatisticWeb.dao;

import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Dead;

public interface DeadDAO {

	public List<Dead> list();
	public Dead lists(String date);
}
