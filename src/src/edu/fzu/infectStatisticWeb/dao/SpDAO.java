package edu.fzu.infectStatisticWeb.dao;

import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Sp;

public interface SpDAO {

	public List<Sp> list();
	public Sp lists(String date);
}
