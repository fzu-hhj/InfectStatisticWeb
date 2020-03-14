package edu.fzu.infectStatisticWeb.dao;

import java.util.List;

import edu.fzu.infectStatisticWeb.pojo.Cure;

public interface CureDAO {

	public List<Cure> list();
	public Cure lists(String date);
}
