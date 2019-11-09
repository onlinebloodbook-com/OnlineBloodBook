package com.bloodbook.dao;

import java.util.List;

import com.bloodbook.model.Help;

public interface HelpDao {

	public void saveHelp(Help help);
	public Help getHelp(Integer hpId);
	public List<Help> getHelpList();
	public List<Help> getHelpList10();
	public List<Help> getHelpList1();
	
}
